Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACA64378001
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 11:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231132AbhEJJwQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 05:52:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230154AbhEJJwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 05:52:15 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD197C061763
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:51:05 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id gx21-20020a17090b1255b02901589d39576eso3433524pjb.0
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UxwjATyfUtX3knbkz7Ng4a91AyuLGtHH/dkvosOSCGg=;
        b=KOr6914IYxgjLwHfgEdtt7yY0GH36g2NGsJo3fGwbbJaZNcrllky3/6cWFIPbrcxnF
         J6WIRuHd84U2i5BBiDKA/bsQe9y2Z9UkJ/RbWHnAxAdDWQ5FGpvFFVOBGDi0XQRFybWw
         dDc+W6hlTJe2OtGlIaJLuh2fe89FW6RCivPnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UxwjATyfUtX3knbkz7Ng4a91AyuLGtHH/dkvosOSCGg=;
        b=KHPLBZMVCl6xbnkyGG3a8TEmxTjw/4opLPWSztP9o+wKVqeUAK39ccvTy6xXFOE7yD
         K2WRRsAlkNNW8LJxhEuCQwINSP7qIcMWKOf80hdb0xezRCsH2kXBSUQNAuO//Hgp7PGH
         nWhO4A7X2fvYvpgvXdbSxCx14YYBgkUXMUDP7Lcy43KXL7isxqwZasQy01BNmcf1EnlR
         DD9zZvIvWFL/7G55StuH22SWFt9md/DK7rIlGa4aTHeNvBWHMBq1qxF4cRqEVeXOEPG6
         ROvTKuF20jdZN16idFpTgv196jAw4/nVom7bQes4O9rrOpV4Uy0PsK7IxwSPgxTQIItF
         oG/Q==
X-Gm-Message-State: AOAM531nIqMIB0QdmgRI7v2ihOt5ia82FCsFvHxzYWL5T2Y2Hq48msI1
        XnA4cwyOE/ZU18wOXHGFrJxqRQ==
X-Google-Smtp-Source: ABdhPJxTaq6vhy1R6G0CsSRkldwCBABZULYIDbfdaYlGZp1FgQhncVgdgDLR34kcwkcv6yJulF+tnA==
X-Received: by 2002:a17:90a:cf10:: with SMTP id h16mr26442566pju.49.1620640265461;
        Mon, 10 May 2021 02:51:05 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:a524:abe8:94e3:5601])
        by smtp.gmail.com with UTF8SMTPSA id ga1sm11342699pjb.5.2021.05.10.02.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 02:51:05 -0700 (PDT)
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
Subject: [PATCH v6 03/15] swiotlb: Add DMA_RESTRICTED_POOL
Date:   Mon, 10 May 2021 17:50:14 +0800
Message-Id: <20210510095026.3477496-4-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210510095026.3477496-1-tientzu@chromium.org>
References: <20210510095026.3477496-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new kconfig symbol, DMA_RESTRICTED_POOL, for restricted DMA pool.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/Kconfig | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
index 77b405508743..3e961dc39634 100644
--- a/kernel/dma/Kconfig
+++ b/kernel/dma/Kconfig
@@ -80,6 +80,20 @@ config SWIOTLB
 	bool
 	select NEED_DMA_MAP_STATE
 
+config DMA_RESTRICTED_POOL
+	bool "DMA Restricted Pool"
+	depends on OF && OF_RESERVED_MEM
+	select SWIOTLB
+	help
+	  This enables support for restricted DMA pools which provide a level of
+	  DMA memory protection on systems with limited hardware protection
+	  capabilities, such as those lacking an IOMMU.
+
+	  For more information see
+	  <Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt>
+	  and <kernel/dma/swiotlb.c>.
+	  If unsure, say "n".
+
 #
 # Should be selected if we can mmap non-coherent mappings to userspace.
 # The only thing that is really required is a way to set an uncached bit
-- 
2.31.1.607.g51e8a6a459-goog

