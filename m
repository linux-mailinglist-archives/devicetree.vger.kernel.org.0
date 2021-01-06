Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 190232EB893
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 04:44:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726807AbhAFDnJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 22:43:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726698AbhAFDnJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 22:43:09 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3235AC061362
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 19:42:17 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id w6so958568pfu.1
        for <devicetree@vger.kernel.org>; Tue, 05 Jan 2021 19:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n/86gZ2YH2sPTM8FXS5odMzg67Ac9T6AO13ElIbtDDg=;
        b=cO8PVUda8Bx3SiBfo8qLV3f+sGuoG1tsrJdvV5+xtnmv+FltCXbPO19IOiNV2arX1e
         MfsIwE8A6Knc0SP2qleJACUoPMyYpzQZDZm9mnnFZGjxFwvgCZj6whF/RxWqHYYM1e+/
         wdRgR2lnWWnPiXx/LyJKGIMg1QVQFfB7OO6nA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n/86gZ2YH2sPTM8FXS5odMzg67Ac9T6AO13ElIbtDDg=;
        b=RDemZptXSTuGQQEUFNi/+b0Q/AuJnS59vICyeniFNLrovGvHc5/AAT8IffZ5f5y9in
         FSoqUvkLsrDz375FnL3dwVfkhz7gH6DUeoUneUT4EU7aomsZFQIwpyREsfg1sa5jjbiE
         G5CdF0tGO8DfCYF2F+lJqqd3IevbqndpEx0t0/B0uRo6OwVT3a559uOgM94RBKviRj6O
         ur8JxetzDnuv5sNTlns4vWuaon0dYK4FVkrELUEm8CTx+zaZt1ZPJ/tfkIy3tErf72jy
         mEIN/f2Bj2xAkoo+a+rQRsjZ6PjzUUTXFcZG2G5UlU0tkuWVDsW0uFtdMkLZExif79JN
         brAw==
X-Gm-Message-State: AOAM533s9kXcH/uc/quDOT6A608zyx0Ck2fU/kMdovVYSIuZGs52UZR/
        GUgsxm6EaoEpX+UU+LJThn7r8g==
X-Google-Smtp-Source: ABdhPJyc8aEv7i+WmUMkW4PXzO0Jf/pJZ6vWz1r98byTGcdBBPjMldkIqPaeDl28qDIQ4NNN7+TicQ==
X-Received: by 2002:a65:6382:: with SMTP id h2mr2332953pgv.365.1609904536826;
        Tue, 05 Jan 2021 19:42:16 -0800 (PST)
Received: from localhost ([2401:fa00:1:10:3e52:82ff:fe5e:cc9d])
        by smtp.gmail.com with ESMTPSA id er23sm565730pjb.12.2021.01.05.19.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 19:42:16 -0800 (PST)
From:   Claire Chang <tientzu@chromium.org>
To:     robh+dt@kernel.org, mpe@ellerman.id.au, benh@kernel.crashing.org,
        paulus@samba.org, joro@8bytes.org, will@kernel.org,
        frowand.list@gmail.com, konrad.wilk@oracle.com,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        sstabellini@kernel.org, hch@lst.de, m.szyprowski@samsung.com,
        robin.murphy@arm.com
Cc:     grant.likely@arm.com, xypron.glpk@gmx.de, treding@nvidia.com,
        mingo@kernel.org, bauerman@linux.ibm.com, peterz@infradead.org,
        gregkh@linuxfoundation.org, saravanak@google.com,
        rafael.j.wysocki@intel.com, heikki.krogerus@linux.intel.com,
        andriy.shevchenko@linux.intel.com, rdunlap@infradead.org,
        dan.j.williams@intel.com, bgolaszewski@baylibre.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, iommu@lists.linux-foundation.org,
        xen-devel@lists.xenproject.org, tfiga@chromium.org,
        drinkcat@chromium.org, Claire Chang <tientzu@chromium.org>
Subject: [RFC PATCH v3 6/6] of: Add plumbing for restricted DMA pool
Date:   Wed,  6 Jan 2021 11:41:24 +0800
Message-Id: <20210106034124.30560-7-tientzu@chromium.org>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
In-Reply-To: <20210106034124.30560-1-tientzu@chromium.org>
References: <20210106034124.30560-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If a device is not behind an IOMMU, we look up the device node and set
up the restricted DMA when the restricted-dma-pool is presented.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 drivers/of/address.c    | 21 +++++++++++++++++++++
 drivers/of/device.c     |  4 ++++
 drivers/of/of_private.h |  5 +++++
 3 files changed, 30 insertions(+)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 73ddf2540f3f..94eca8249854 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -8,6 +8,7 @@
 #include <linux/logic_pio.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/pci.h>
 #include <linux/pci_regs.h>
 #include <linux/sizes.h>
@@ -1094,3 +1095,23 @@ bool of_dma_is_coherent(struct device_node *np)
 	return false;
 }
 EXPORT_SYMBOL_GPL(of_dma_is_coherent);
+
+int of_dma_set_restricted_buffer(struct device *dev)
+{
+	struct device_node *node;
+	int count, i;
+
+	if (!dev->of_node)
+		return 0;
+
+	count = of_property_count_elems_of_size(dev->of_node, "memory-region",
+						sizeof(phandle));
+	for (i = 0; i < count; i++) {
+		node = of_parse_phandle(dev->of_node, "memory-region", i);
+		if (of_device_is_compatible(node, "restricted-dma-pool"))
+			return of_reserved_mem_device_init_by_idx(
+				dev, dev->of_node, i);
+	}
+
+	return 0;
+}
diff --git a/drivers/of/device.c b/drivers/of/device.c
index aedfaaafd3e7..e2c7409956ab 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -182,6 +182,10 @@ int of_dma_configure_id(struct device *dev, struct device_node *np,
 	arch_setup_dma_ops(dev, dma_start, size, iommu, coherent);
 
 	dev->dma_range_map = map;
+
+	if (!iommu)
+		return of_dma_set_restricted_buffer(dev);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_dma_configure_id);
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index d9e6a324de0a..28a2dfa197ba 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -161,12 +161,17 @@ struct bus_dma_region;
 #if defined(CONFIG_OF_ADDRESS) && defined(CONFIG_HAS_DMA)
 int of_dma_get_range(struct device_node *np,
 		const struct bus_dma_region **map);
+int of_dma_set_restricted_buffer(struct device *dev);
 #else
 static inline int of_dma_get_range(struct device_node *np,
 		const struct bus_dma_region **map)
 {
 	return -ENODEV;
 }
+static inline int of_dma_get_restricted_buffer(struct device *dev)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* _LINUX_OF_PRIVATE_H */
-- 
2.29.2.729.g45daf8777d-goog

