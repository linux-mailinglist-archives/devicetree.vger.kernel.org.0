Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC1E3148C0
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 07:25:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbhBIGYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 01:24:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbhBIGYJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 01:24:09 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBCD7C061222
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 22:22:56 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id m2so5090628pgq.5
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 22:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=497zjM77pvF3Z9oAZHKRrRRQASb3zykCWrEq06oWuA4=;
        b=J3JXGtOrm5PoEyvBsVk+eONszRpKlS2e/fHFYsrzg7r41jB4Qhydpz4iHXCx+nR2XB
         bgZwF53kTc5vzTPgHCJnyyfoRJvrgBHi7UionQnej7Yu1P183TVntz02XzomTxMCHg3G
         mcXNNavE9b460T2UV+kLxlE9ubP6dRssCo1RI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=497zjM77pvF3Z9oAZHKRrRRQASb3zykCWrEq06oWuA4=;
        b=fkHkYQvxzzlGDCJFs5NF9/Q0a2LKecJ91fwvBIYGbXh7RaICp1AFYQC5lP8Uc8hGML
         oLOclFNAI/XR9rkk4FZ6CNCr8Bx49HsDILrDbUEGScCkQlocSffaTenrFZi+E/3mEvDB
         K6xw4UMWOAu+szIIlttm0XoQTSgCSCk+rARL1a28oC5ZpOeXbvlW5PWXYFfe2dSr8/i9
         K/Y7T+fWsvHzwN0oh2cNY3DqnSsqzM5LmMSnPsiiZyWBOAowpPSRUPbq/4J2EAtq2EkY
         w4PZNO1FIZwVLa5+7CcMfo86s6ZQEigSZvErjRSxdtFEeby5eoORBvn3DFN3nkJjrFVt
         3xOw==
X-Gm-Message-State: AOAM530teYHwEfwbOwAPMvS9JK327EqD7wAdXMgRSohOUJ2fLKrXDEYW
        0nMJWOue2rkMUPPJptjQOCBd+g==
X-Google-Smtp-Source: ABdhPJxEw/06walO5wKH5QrYrrWevtYirMnCFq5PBC/eIi86fDszp4wESrmyrR0n6ZgmsKGnPFNlrg==
X-Received: by 2002:a63:4a1a:: with SMTP id x26mr21490368pga.260.1612851776396;
        Mon, 08 Feb 2021 22:22:56 -0800 (PST)
Received: from localhost ([2401:fa00:1:10:a106:46e1:a999:81df])
        by smtp.gmail.com with UTF8SMTPSA id x20sm10253509pfn.14.2021.02.08.22.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 22:22:55 -0800 (PST)
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
        Jim Quinlan <james.quinlan@broadcom.com>,
        Claire Chang <tientzu@chromium.org>
Subject: [PATCH v4 10/14] dma-direct: Add a new wrapper __dma_direct_free_pages()
Date:   Tue,  9 Feb 2021 14:21:27 +0800
Message-Id: <20210209062131.2300005-11-tientzu@chromium.org>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
In-Reply-To: <20210209062131.2300005-1-tientzu@chromium.org>
References: <20210209062131.2300005-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new wrapper __dma_direct_free_pages() that will be useful later
for dev_swiotlb_free().

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/direct.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 30ccbc08e229..a76a1a2f24da 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -75,6 +75,11 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
 		min_not_zero(dev->coherent_dma_mask, dev->bus_dma_limit);
 }
 
+static void __dma_direct_free_pages(struct device *dev, struct page *page, size_t size)
+{
+	dma_free_contiguous(dev, page, size);
+}
+
 static struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
 		gfp_t gfp)
 {
@@ -237,7 +242,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
 			return NULL;
 	}
 out_free_pages:
-	dma_free_contiguous(dev, page, size);
+	__dma_direct_free_pages(dev, page, size);
 	return NULL;
 }
 
@@ -273,7 +278,7 @@ void dma_direct_free(struct device *dev, size_t size,
 	else if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_CLEAR_UNCACHED))
 		arch_dma_clear_uncached(cpu_addr, size);
 
-	dma_free_contiguous(dev, dma_direct_to_page(dev, dma_addr), size);
+	__dma_direct_free_pages(dev, dma_direct_to_page(dev, dma_addr), size);
 }
 
 struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
@@ -310,7 +315,7 @@ struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
 	*dma_handle = phys_to_dma_direct(dev, page_to_phys(page));
 	return page;
 out_free_pages:
-	dma_free_contiguous(dev, page, size);
+	__dma_direct_free_pages(dev, page, size);
 	return NULL;
 }
 
@@ -329,7 +334,7 @@ void dma_direct_free_pages(struct device *dev, size_t size,
 	if (force_dma_unencrypted(dev))
 		set_memory_encrypted((unsigned long)vaddr, 1 << page_order);
 
-	dma_free_contiguous(dev, page, size);
+	__dma_direct_free_pages(dev, page, size);
 }
 
 #if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
-- 
2.30.0.478.g8a0d178c01-goog

