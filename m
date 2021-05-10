Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE037378043
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 11:52:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231196AbhEJJxF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 05:53:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231236AbhEJJwj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 05:52:39 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A917C061343
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:51:23 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id v13so8854906ple.9
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H8s2Ssxedi+m7Lc7mdaT6IyIVFNL7UMFVGCjjIXUKBs=;
        b=aEzUGv6HyICG91lVRchMBsfGFoiKw5t3UKv5r9/XWkq1l03uTxk5gK7BReGArG4wM7
         eL8k61LHaWwrgnh+WJYeL7I+S/QoUwEkwv6x0tDx3HcpYoUp9liwFvhqHJX8OnvlaqU3
         oxtyLQT57sgPbzesRlkZ21sVrQ/LPb2+Dv9rE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H8s2Ssxedi+m7Lc7mdaT6IyIVFNL7UMFVGCjjIXUKBs=;
        b=kmEBx9CeIQ2E8xUzU7wFXugX9EeNupJaDW3iG7CBfTgk9seTkaKFRilSHDfndHl0zz
         pI5gK/z8u8aO5nmSyVKLEG93B25q8o+HBNIiqr8z3NES5+E7fFYYTKpmZ5Bc5+ptHNLP
         EPGX1H9v+0EWn7bqnvLrJV3uyWmxwJb9Z8wexpmEnzgYhs9HLnD5uVVxbrWaeS0VqUXV
         kpXhXFdcK5VkKJtKSH97LNR3tKgaXzkxun+PNkdNR4G20444xvZA6kI6WyZTi2yppAxA
         lG7NLuUrwttK0RZwDl6S7jILkCqWU24jBudyjY4wiVF0MuFVoaIERIaZ/+WzpT3y/FUA
         c1qw==
X-Gm-Message-State: AOAM530nlAw5076AtzfcaEU3lU81tbU6wBzuNRdKvz6B4/NoU2COr4ec
        5d7dJSVrGoeLXNrOTnFwdRFwlw==
X-Google-Smtp-Source: ABdhPJzROW5FUCBZB2fXFHkP0ALBea1sVjbZahlfu04HnoSywATlCq/z9y3jgockvO/xDk1J1RoGzg==
X-Received: by 2002:a17:90b:1bcd:: with SMTP id oa13mr40100520pjb.22.1620640283118;
        Mon, 10 May 2021 02:51:23 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:a524:abe8:94e3:5601])
        by smtp.gmail.com with UTF8SMTPSA id ml19sm46030318pjb.2.2021.05.10.02.51.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 02:51:22 -0700 (PDT)
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
        nouveau@lists.freedesktop.org, rodrigo.vivi@intel.com,
        thomas.hellstrom@linux.intel.com
Subject: [PATCH v6 05/15] swiotlb: Add a new get_io_tlb_mem getter
Date:   Mon, 10 May 2021 17:50:16 +0800
Message-Id: <20210510095026.3477496-6-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210510095026.3477496-1-tientzu@chromium.org>
References: <20210510095026.3477496-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new getter, get_io_tlb_mem, to help select the io_tlb_mem struct.
The restricted DMA pool is preferred if available.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 include/linux/swiotlb.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
index 03ad6e3b4056..b469f04cca26 100644
--- a/include/linux/swiotlb.h
+++ b/include/linux/swiotlb.h
@@ -2,6 +2,7 @@
 #ifndef __LINUX_SWIOTLB_H
 #define __LINUX_SWIOTLB_H
 
+#include <linux/device.h>
 #include <linux/dma-direction.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -102,6 +103,16 @@ struct io_tlb_mem {
 };
 extern struct io_tlb_mem *io_tlb_default_mem;
 
+static inline struct io_tlb_mem *get_io_tlb_mem(struct device *dev)
+{
+#ifdef CONFIG_DMA_RESTRICTED_POOL
+	if (dev && dev->dma_io_tlb_mem)
+		return dev->dma_io_tlb_mem;
+#endif /* CONFIG_DMA_RESTRICTED_POOL */
+
+	return io_tlb_default_mem;
+}
+
 static inline bool is_swiotlb_buffer(phys_addr_t paddr)
 {
 	struct io_tlb_mem *mem = io_tlb_default_mem;
-- 
2.31.1.607.g51e8a6a459-goog

