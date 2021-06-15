Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF4C3A7F5B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 15:27:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231324AbhFON3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 09:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231295AbhFON3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 09:29:44 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 412C5C06175F
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:27:40 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id x16so9058220pfa.13
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9+wXpY/H82TQMYJceCCK5GarrRWjIymFsSn79ihfI/w=;
        b=Ityiyn/6rZ6eEobs+2lnH4TKbbZk+VdtN2w2T43meIIZNh9+72wW8S0VDK8goTPM0v
         VD9NihJYeGETrBdORYc12PZdn+8m79SSBJ6F1LfLiwMAUohS+C8HkRvwkY21VvJTZM8O
         JQ8rzrFr7pberm347Pyh+hg1b2fiB3MgVNUFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9+wXpY/H82TQMYJceCCK5GarrRWjIymFsSn79ihfI/w=;
        b=rqxKLYAteUIqP1cnuyFY6jUpEg8QnO15BU76/EhnQzSFnA99qqh9JWom03hw9gsvIH
         k9pAU11QRWz5tuGeEpvx1tzEwZaj0gcwI16MedPFkVWVeIH9HbM9ZvxoAKKwdidQA3uU
         v+LH6fn/im9UVyhnGodq42rTgrovdgVeAw9gEPM3jgjoNzH/xYHJMSIe4Q6x5LakhoU7
         SqLFCGJlaU6nswVSCV8DK/zbzF/bBWen0aRn140r88Juo3lvkubNDDFvAIAQW6HWmgJe
         XqT6xAsS8Ci10Z7k/kNhUkU3eXNh5L+dyB0xK5lZ1VegQoUY1nbX6bmF7Q8UOIhC3vh0
         ddMg==
X-Gm-Message-State: AOAM531g1HEvBq02xDWm15ue+vIE5wWILn8oTDnr8T18QoB+UH48nlsS
        5aA5fULyBPOAtOEpFxrOSjCq0g==
X-Google-Smtp-Source: ABdhPJx713+ejHrsLud4m0g5wl75An7KsmYTto2sbhWgatvTfcJwFg19W074/BIx2abKYG48hp2c6g==
X-Received: by 2002:a63:a805:: with SMTP id o5mr22403221pgf.328.1623763659827;
        Tue, 15 Jun 2021 06:27:39 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:1846:5274:e444:139e])
        by smtp.gmail.com with UTF8SMTPSA id p6sm217209pjh.24.2021.06.15.06.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 06:27:39 -0700 (PDT)
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
Subject: [PATCH v10 02/12] swiotlb: Refactor swiotlb_create_debugfs
Date:   Tue, 15 Jun 2021 21:27:01 +0800
Message-Id: <20210615132711.553451-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210615132711.553451-1-tientzu@chromium.org>
References: <20210615132711.553451-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Split the debugfs creation to make the code reusable for supporting
different bounce buffer pools.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/swiotlb.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index c64298e416c8..97c6ad50fdc2 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -661,19 +661,26 @@ bool is_swiotlb_active(void)
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

