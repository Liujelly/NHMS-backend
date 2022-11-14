package xh.nursinghome.system.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.SupplierMapper;
import xh.nursinghome.system.entity.Supplier;

@Service
public class SupplierService {
    @Autowired
    private SupplierMapper supplierMapper;
    public int save(Supplier supplier) {
        if (supplier.getSupplierNum() == null){
            return supplierMapper.insert(supplier);
    }
    else{
        return supplierMapper.supplierUpdate(supplier);
    }

    }

}
