@props(['type'=>'save'])
<div role="alert" {{$attributes->merge(['class'=>'alert alert-success alert-dismissible fadeshow']) }}>
    @if ($type == 'delete')
    <strong>Berhasil dihapus!</strong> data telah berhasil dihapus.
    @elseif($type =='update')
    <strong>Berhasil diupdate!</strong> data telah berhasil diupdate.
    @else
    <strong>Berhasil disimpan!</strong> data telah berhasil disimpan.
    @endif
    <button type="button" class="close" data-dismiss="alert" arial-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>