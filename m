Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CE1D3B32F6
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:56:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232435AbhFXP6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 11:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232348AbhFXP6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 11:58:16 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D6BC06175F
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 08:55:56 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id s14so4265606pfg.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 08:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=87F32lyNJPVTVtO+0wV8iOXVR4FYPSJ8Efeoe/l3AWY=;
        b=fPyR7LNfa+/lU3WGWQPO3NZkUjo26lxHQdRzo89jZMyBjRWMed8i0Y6RqoJEyweboI
         IubDRG9d7RiT3UTHReJE0MAliYBlmMLlLps0zkeHlwgKitR9Va5Y9JWu2QIhfoUNH31f
         Sz4HZ90/m+NBhkrEaC1sLlamv48IpLCMUi5TY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=87F32lyNJPVTVtO+0wV8iOXVR4FYPSJ8Efeoe/l3AWY=;
        b=PnuKntJ59eESXiBxNWLME+LBsdDX2M22Ea2i0YASF283Jo3y0A7bq+1hx9676fe69C
         obf7NMCITgRANtAPPWYkZ5XvbIoIZ1Vcz9brxw77BHaOn8OYvAgpaqR259bf2GW7OiVS
         yPuj7VUAh2nBtt88nvA9MS9Ia6X934XL7OntqwN/t65vQ5VAipov3KvyvZDaSiHOegEY
         hfSRFrT9w85ZRu9PrFC5yMvy/pQNWzNYfILEpdSAmSCL0GvDnm5e5b+LTdfjzzjQre4R
         8G1At6EDlAtTzqrE2xgGo2w7RnIvREoPFZuxbMw+dSAC2H5ydhlGYq0s3NIKm6Ld88q8
         6rDQ==
X-Gm-Message-State: AOAM532eCACYR0zzfySCdpo/Dy6jykBoDm377jl50jCQeXjOM71Jyd2k
        904KlUVs6G7FCMBOKTVJO8aj0A==
X-Google-Smtp-Source: ABdhPJxQx3pwzFqcBdR/DNm2W1TpNOCeT4sa0oGntLB2nXanycaT15P3BNOzlPmGxyWI5Z+ImzxIzA==
X-Received: by 2002:a63:4e4d:: with SMTP id o13mr5258697pgl.361.1624550156451;
        Thu, 24 Jun 2021 08:55:56 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:165a:99ec:42d5:d8b])
        by smtp.gmail.com with UTF8SMTPSA id la18sm5913675pjb.55.2021.06.24.08.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 08:55:56 -0700 (PDT)
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
        rodrigo.vivi@intel.com, thomas.hellstrom@linux.intel.com,
        thomas.lendacky@amd.com, quic_qiancai@quicinc.com
Subject: [PATCH v15 02/12] swiotlb: Refactor swiotlb_create_debugfs
Date:   Thu, 24 Jun 2021 23:55:16 +0800
Message-Id: <20210624155526.2775863-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210624155526.2775863-1-tientzu@chromium.org>
References: <20210624155526.2775863-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Split the debugfs creation to make the code reusable for supporting
different bounce buffer pools.

Signed-off-by: Claire Chang <tientzu@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Tested-by: Stefano Stabellini <sstabellini@kernel.org>
Tested-by: Will Deacon <will@kernel.org>
---
 kernel/dma/swiotlb.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 1f9b2b9e7490..ede66df6835b 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -671,19 +671,26 @@ bool is_swiotlb_active(void)
 EXPORT_SYMBOL_GPL(is_swiotlb_active);
 
 #ifdef CONFIG_DEBUG_FS
+static struct dentry *debugfs_dir;
 
-static int __init swiotlb_create_debugfs(void)
+static void swiotlb_create_debugfs_files(struct io_tlb_mem *mem)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
-
-	if (!mem)
-		return 0;
-	mem->debugfs = debugfs_create_dir("swiotlb", NULL);
 	debugfs_create_ulong("io_tlb_nslabs", 0400, mem->debugfs, &mem->nslabs);
 	debugfs_create_ulong("io_tlb_used", 0400, mem->debugfs, &mem->used);
+}
+
+static int __init swiotlb_create_default_debugfs(void)
+{
+	struct io_tlb_mem *mem = io_tlb_default_mem;
+
+	debugfs_dir = debugfs_create_dir("swiotlb", NULL);
+	if (mem) {
+		mem->debugfs = debugfs_dir;
+		swiotlb_create_debugfs_files(mem);
+	}
 	return 0;
 }
 
-late_initcall(swiotlb_create_debugfs);
+late_initcall(swiotlb_create_default_debugfs);
 
 #endif
-- 
2.32.0.288.g62a8d224e6-goog

