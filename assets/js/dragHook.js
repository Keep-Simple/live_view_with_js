import Sortable from 'sortablejs';

export default {
    mounted() {
        const hook = this;
        const selector = '#' + hook.el.id;

        document.querySelectorAll('.dropzone').forEach(dropzone => {
            new Sortable(dropzone, {
                animation: 0,
                delay: 50,
                delayOnTouchOnly: true,
                group: 'shared',
                draggable: '.draggable',
                ghostClass: 'sortable-ghost',
                onEnd: (e) => hook.pushEventTo(selector, 'dropped', {
                    draggedId: e.item.id,
                    dropzoneId: e.to.id,
                    draggableIndex: e.newDraggableIndex
                })
            })
        })
    }
}