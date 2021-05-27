Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57925392E8C
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 14:59:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235983AbhE0NA6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 09:00:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235996AbhE0NA5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 09:00:57 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06AA6C06138B
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:59:22 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id f22so3622686pgb.9
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v5uDNYG4BjZ/8joAD3lImi71MufKa1LW825i4nd7Nkw=;
        b=E61Ri/F39WkjFWJqAXjGFvQPED/h2WAUJXs5JDDaCoUA1omO3EVyPXt2Y2hwAfXcjs
         MTmmUwzdXmE7AXrGKnYXFwjizScT15arM61lsHXOY8uoU6WtnTGi/ZNZ6/f2x5v6f4yj
         nZWUxmDPBg+tGToE82wIiDUeuR5LEBQHZ4KOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v5uDNYG4BjZ/8joAD3lImi71MufKa1LW825i4nd7Nkw=;
        b=mDfuZ2aqJ2sLzQxZ05Q4K0R88JUqPOHFZLlKpkl4wP1ize4IGSIZE7GawIwQTKjEP1
         Jae4+CZZjrxSTqJFu+VEF+MRrKoFF00EqTk6mPGkyktjsfHWRhze1YyLSccZltMKPrjL
         HT0IZtcq8h2cjdc9iYgLRe2235RZjRr8ZSg+HenHANb+KyGR9KEE+uovYZcK5dUXuJOl
         UvzAN0LJwdYr7JNjwTtKAo7TMq69olHeQrHwWYQKViJTUEkGOPPqQsVYIpofa6qKvlfx
         1cPFmA33NklhN1qgytPR18LMR8IP4X9vC28Tk/T7a0AT/6ALChtUURzZJjg7n/qi6HcL
         /O6Q==
X-Gm-Message-State: AOAM531js0rkFZFpTbwJCaOFDFNlBY9urf7xJy/L4td8FYZUqEKi9SX6
        06ABNBcYtOaZjFOQd+VtusZwGg==
X-Google-Smtp-Source: ABdhPJxENRpAFf3CkWut6vuXYNlsvVQFU1tdVBb0uZip+87V32FWXRIoYRditOw7sBaKZrr0nh2u9g==
X-Received: by 2002:a05:6a00:134b:b029:2bf:2c30:ebbd with SMTP id k11-20020a056a00134bb02902bf2c30ebbdmr3639373pfu.74.1622120361576;
        Thu, 27 May 2021 05:59:21 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:a93:378d:9a9e:3b70])
        by smtp.gmail.com with UTF8SMTPSA id m14sm2012639pff.17.2021.05.27.05.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 05:59:21 -0700 (PDT)
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
Subject: [PATCH v8 03/15] swiotlb: Add DMA_RESTRICTED_POOL
Date:   Thu, 27 May 2021 20:58:33 +0800
Message-Id: <20210527125845.1852284-4-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210527125845.1852284-1-tientzu@chromium.org>
References: <20210527125845.1852284-1-tientzu@chromium.org>
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
2.31.1.818.g46aad6cb9e-goog

