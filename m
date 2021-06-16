Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70E4F3A8FE1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 05:53:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231251AbhFPDzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 23:55:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231226AbhFPDzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 23:55:16 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A623FC0617A6
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 20:53:10 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id c12so1108513pfl.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 20:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U6ZYMbmpZtiKwFDcQ7JFrtewUpbfgXD5Ls9ZoD2Zrzg=;
        b=RZd9rxgKkVABYLQTSq6F5uS2C29CsSdg36ip3FvrlN8FR4TLMNlm3ETn/gcglxg0VH
         +1WxkUy7ZqMrM1JYwzaBTnnUjGVHlY6H2dMNBKQlvyd/XPL2EbpKZBPFjCBcKqXScjgL
         sO86XIdkFZpgufpRs2QMpcNH/rozerebhjh1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U6ZYMbmpZtiKwFDcQ7JFrtewUpbfgXD5Ls9ZoD2Zrzg=;
        b=QNNGnALWnQhfzc41gNbREbnt4tTQGIjGGNnb6l+nKu+jzzGdq1k3cJTeGSboYSNWrZ
         S8588se7ww6y7fAbQnZ1s1dX3ybzuGOFNYWku7YbFUxq7t73bOrfUGYWEw33mdnFeJcZ
         sA3szE+hP6dHRPOIEqp5LXJG7YGyA7EpUloOT0gOgyFMltmOpd4596wbUPVCEYi8VfcE
         +VZHJfvi+p0Q0L+x0p/A8tZ1RcQvnrDCLG97XTMMFwN/8XqOCai0A6mpBT1eDimIFrk4
         8M7G2fg54eWx3LThTWIZRuR4hFxEvA4qyMgzbhxn8DCP50e1nAqAOulMQxMFgarfqhyB
         kIAQ==
X-Gm-Message-State: AOAM531Dt9LRwJPp3s1bg8pnqnBGLtJy0LCvqubZNWo6+JLX6vkydabM
        ZWftadCo5TtFG5Rcn4siYKIbhQ==
X-Google-Smtp-Source: ABdhPJwmduDhMHaz4gp1KWw9pFkGmBZM/DTXojEyWC2D7eYdCuhZ3NXD60A0zg3fj181Q33R/6IAmA==
X-Received: by 2002:a63:a805:: with SMTP id o5mr2939730pgf.328.1623815590191;
        Tue, 15 Jun 2021 20:53:10 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:3d52:f252:7393:1992])
        by smtp.gmail.com with UTF8SMTPSA id k19sm557774pji.32.2021.06.15.20.53.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 20:53:09 -0700 (PDT)
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
Subject: [PATCH v11 02/12] swiotlb: Refactor swiotlb_create_debugfs
Date:   Wed, 16 Jun 2021 11:52:30 +0800
Message-Id: <20210616035240.840463-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210616035240.840463-1-tientzu@chromium.org>
References: <20210616035240.840463-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Split the debugfs creation to make the code reusable for supporting
different bounce buffer pools.

Signed-off-by: Claire Chang <tientzu@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 kernel/dma/swiotlb.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 3ba0f08a39a1..af416bcd1914 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -670,19 +670,26 @@ bool is_swiotlb_active(void)
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
2.32.0.272.g935e593368-goog

