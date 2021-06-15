Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 557793A7F92
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 15:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231453AbhFONao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 09:30:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230511AbhFONai (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 09:30:38 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF2FDC0613A4
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:28:33 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id p13so13301730pfw.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cc+9fFskPok5yanU+KBwhrDF032POUgNIPrJFjWpHUY=;
        b=UF5JJjf+p8IMYhkYNM8dISjQquNFfkf4iaq0k+iYxP9vTIwxyaJqsigdQrx1iycxm+
         rc3T9NaAGvNbYtm5GTXK1mA8pEMzIKnRY9iBgjBDFHGR7ylhLUjvmUFcFhLyT/dM51lt
         TiESxojr4yxy8lbSUjpOEANfg7K8Lf7k8QEBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cc+9fFskPok5yanU+KBwhrDF032POUgNIPrJFjWpHUY=;
        b=mkT5ldLlHEksk6p6CMnIuYjLRX0LD2FlrJefgLA5lUMrY2jfb/U5CtHK/T7x3v3RSp
         YKlM4B7Kr4oVZKfWGkVJnf/eOjyzUD1Y+rRQieCughFtE/QxlyOI19fLZxmKAMTugI1C
         Iv8gE/Ho9tjNPLk7s4sZR+KVPX2Cul9I+mZ5J0YbBeWa+9tXp89XqV06SdN8PzBEfhtY
         W+uBBqXZST8VsU2XFA0rnUg2d6LU6RvBrU39cZqK016NL1HL1QA//P0n5nvYzGomwMVL
         yqhP3xRQ+9w4Q9cJylRQvXONO/mR+W1GMqH9Fwqf0r/Me5H2Oj/OjSqqA3gXBlLBXl8z
         eY7g==
X-Gm-Message-State: AOAM531YkjLXN4/FXxLLMXGAAtd5JdfEoxMKPEU21lTo6bQZYuxmAH4F
        Lqo6vXft10/ZaXZiKo9S0CBJSQ==
X-Google-Smtp-Source: ABdhPJzTf6sN3+RhgHcg3uPiCnP3J9xzXkoCN0kkeRq24lHy9+yaQTUPTjqMetXgaRZFbgh3lWQO0g==
X-Received: by 2002:a05:6a00:148e:b029:2fb:9761:eb8a with SMTP id v14-20020a056a00148eb02902fb9761eb8amr4420599pfu.48.1623763713478;
        Tue, 15 Jun 2021 06:28:33 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:1846:5274:e444:139e])
        by smtp.gmail.com with UTF8SMTPSA id g17sm7117013pgh.61.2021.06.15.06.28.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 06:28:32 -0700 (PDT)
From:   Claire Chang <tientzu@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        sstabellini@kernel.org, Robin Murphy <robin.murphy@arm.com>,
        grant.likely@arm.com, xypron.glpk@gmx.de,
        Thierry Reding <treding@nvidia.com>, mingo@kernel.org,
        bauerman@linux.ibm.com, peterz@infradead.org,
        Greg KH <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
        heikki.krogerus@linux.intel.com,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Dan Williams <dan.j.williams@intel.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linuxppc-dev@lists.ozlabs.org, xen-devel@lists.xenproject.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Jim Quinlan <james.quinlan@broadcom.com>, tfiga@chromium.org,
        bskeggs@redhat.com, bhelgaas@google.com, chris@chris-wilson.co.uk,
        tientzu@chromium.org, daniel@ffwll.ch, airlied@linux.ie,
        dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        jani.nikula@linux.intel.com, jxgao@google.com,
        joonas.lahtinen@linux.intel.com, linux-pci@vger.kernel.org,
        maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
        rodrigo.vivi@intel.com, thomas.hellstrom@linux.intel.com
Subject: [PATCH v10 08/12] swiotlb: Refactor swiotlb_tbl_unmap_single
Date:   Tue, 15 Jun 2021 21:27:07 +0800
Message-Id: <20210615132711.553451-9-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210615132711.553451-1-tientzu@chromium.org>
References: <20210615132711.553451-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new function, swiotlb_release_slots, to make the code reusable for
supporting different bounce buffer pools.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/swiotlb.c | 35 ++++++++++++++++++++---------------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index e498f11e150e..3c01162c400b 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -546,27 +546,15 @@ phys_addr_t swiotlb_tbl_map_single(struct device *dev, phys_addr_t orig_addr,
 	return tlb_addr;
 }
 
-/*
- * tlb_addr is the physical address of the bounce buffer to unmap.
- */
-void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
-			      size_t mapping_size, enum dma_data_direction dir,
-			      unsigned long attrs)
+static void swiotlb_release_slots(struct device *dev, phys_addr_t tlb_addr)
 {
-	struct io_tlb_mem *mem = hwdev->dma_io_tlb_mem;
+	struct io_tlb_mem *mem = dev->dma_io_tlb_mem;
 	unsigned long flags;
-	unsigned int offset = swiotlb_align_offset(hwdev, tlb_addr);
+	unsigned int offset = swiotlb_align_offset(dev, tlb_addr);
 	int index = (tlb_addr - offset - mem->start) >> IO_TLB_SHIFT;
 	int nslots = nr_slots(mem->slots[index].alloc_size + offset);
 	int count, i;
 
-	/*
-	 * First, sync the memory before unmapping the entry
-	 */
-	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
-	    (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL))
-		swiotlb_bounce(hwdev, tlb_addr, mapping_size, DMA_FROM_DEVICE);
-
 	/*
 	 * Return the buffer to the free list by setting the corresponding
 	 * entries to indicate the number of contiguous entries available.
@@ -601,6 +589,23 @@ void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
 	spin_unlock_irqrestore(&mem->lock, flags);
 }
 
+/*
+ * tlb_addr is the physical address of the bounce buffer to unmap.
+ */
+void swiotlb_tbl_unmap_single(struct device *dev, phys_addr_t tlb_addr,
+			      size_t mapping_size, enum dma_data_direction dir,
+			      unsigned long attrs)
+{
+	/*
+	 * First, sync the memory before unmapping the entry
+	 */
+	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
+	    (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL))
+		swiotlb_bounce(dev, tlb_addr, mapping_size, DMA_FROM_DEVICE);
+
+	swiotlb_release_slots(dev, tlb_addr);
+}
+
 void swiotlb_sync_single_for_device(struct device *dev, phys_addr_t tlb_addr,
 		size_t size, enum dma_data_direction dir)
 {
-- 
2.32.0.272.g935e593368-goog

