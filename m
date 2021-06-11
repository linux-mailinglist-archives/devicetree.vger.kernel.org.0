Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB2163A4561
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 17:30:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231861AbhFKPcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 11:32:25 -0400
Received: from mail-pl1-f177.google.com ([209.85.214.177]:37730 "EHLO
        mail-pl1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231804AbhFKPcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 11:32:20 -0400
Received: by mail-pl1-f177.google.com with SMTP id h12so3011616plf.4
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 08:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GymVnULBeJ03m5EPo7c7VEX7DSqoBwMT6L2fMWoeeEc=;
        b=RsUtJuQ/xhbMtMc9XuxV/0qNZvgSrMkqrnyRrOyme9H1qYO1hZTedsVrCqpq2htHSN
         ZlwkSxjdIBM3PkDZK/6KVtHrZLtJJw6srF6HFJmL1NXvYoRqj5+Sdh8htaj0wdQKo+0g
         e5vmju65RPaMyCngcRLDKqjt2q5GFgsBLXP+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GymVnULBeJ03m5EPo7c7VEX7DSqoBwMT6L2fMWoeeEc=;
        b=M1NrPJAAlT4FsAP5NnJIafDE3pj+X3VPfsY3NafRkwH/cwg3uGb1Z7lni0geW0fPfj
         bHK4PLkMhB83+qKAdOYX1MqNwkhhMWWTrHQZ0gL3cgc6bEXTRw1evRpoh97mXkf+OL2O
         bckfro41upEPTg+uFrF1RcKO/9gq4bC31KnXWfqwetlFmRXS4v986mrh66aD+56C6aD7
         BhrWHkFE/AVYMoRaaSQjchL1Dp19gGuico5KU+1Y0EiSNrRuQcvLwkvUWdsYTOZHtUTf
         zRn7pGRyvLbDf9GyYq5L7ZhadY3Z2XbYVsBtm33JFRk1WE7+sVD+LJgElrqpNBNR+Ct6
         VdmA==
X-Gm-Message-State: AOAM533D/kapY/8xvLzi+Geh/EhyW440kY3AGwknBS873i43ckumO/za
        bvGZ0m+M3v/ioJiIuDD5Yaz2WQ==
X-Google-Smtp-Source: ABdhPJyzFPVM9UZ5f45yCONws2kuIvnajIULWaoJUEbMf7QEQOvvj6qM2zziKH5TeQV+jYXT9K0GEg==
X-Received: by 2002:a17:90a:e2c1:: with SMTP id fr1mr5051480pjb.83.1623425348249;
        Fri, 11 Jun 2021 08:29:08 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:33c8:8e01:1161:6797])
        by smtp.gmail.com with UTF8SMTPSA id fw16sm10709535pjb.30.2021.06.11.08.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 08:29:07 -0700 (PDT)
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
Subject: [PATCH v9 13/14] dt-bindings: of: Add restricted DMA pool
Date:   Fri, 11 Jun 2021 23:26:58 +0800
Message-Id: <20210611152659.2142983-14-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210611152659.2142983-1-tientzu@chromium.org>
References: <20210611152659.2142983-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce the new compatible string, restricted-dma-pool, for restricted
DMA. One can specify the address and length of the restricted DMA memory
region by restricted-dma-pool in the reserved-memory node.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 .../reserved-memory/reserved-memory.txt       | 36 +++++++++++++++++--
 1 file changed, 33 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
index e8d3096d922c..46804f24df05 100644
--- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
@@ -51,6 +51,23 @@ compatible (optional) - standard definition
           used as a shared pool of DMA buffers for a set of devices. It can
           be used by an operating system to instantiate the necessary pool
           management subsystem if necessary.
+        - restricted-dma-pool: This indicates a region of memory meant to be
+          used as a pool of restricted DMA buffers for a set of devices. The
+          memory region would be the only region accessible to those devices.
+          When using this, the no-map and reusable properties must not be set,
+          so the operating system can create a virtual mapping that will be used
+          for synchronization. The main purpose for restricted DMA is to
+          mitigate the lack of DMA access control on systems without an IOMMU,
+          which could result in the DMA accessing the system memory at
+          unexpected times and/or unexpected addresses, possibly leading to data
+          leakage or corruption. The feature on its own provides a basic level
+          of protection against the DMA overwriting buffer contents at
+          unexpected times. However, to protect against general data leakage and
+          system memory corruption, the system needs to provide way to lock down
+          the memory access, e.g., MPU. Note that since coherent allocation
+          needs remapping, one must set up another device coherent pool by
+          shared-dma-pool and use dma_alloc_from_dev_coherent instead for atomic
+          coherent allocation.
         - vendor specific string in the form <vendor>,[<device>-]<usage>
 no-map (optional) - empty property
     - Indicates the operating system must not create a virtual mapping
@@ -85,10 +102,11 @@ memory-region-names (optional) - a list of names, one for each corresponding
 
 Example
 -------
-This example defines 3 contiguous regions are defined for Linux kernel:
+This example defines 4 contiguous regions for Linux kernel:
 one default of all device drivers (named linux,cma@72000000 and 64MiB in size),
-one dedicated to the framebuffer device (named framebuffer@78000000, 8MiB), and
-one for multimedia processing (named multimedia-memory@77000000, 64MiB).
+one dedicated to the framebuffer device (named framebuffer@78000000, 8MiB),
+one for multimedia processing (named multimedia-memory@77000000, 64MiB), and
+one for restricted dma pool (named restricted_dma_reserved@0x50000000, 64MiB).
 
 / {
 	#address-cells = <1>;
@@ -120,6 +138,11 @@ one for multimedia processing (named multimedia-memory@77000000, 64MiB).
 			compatible = "acme,multimedia-memory";
 			reg = <0x77000000 0x4000000>;
 		};
+
+		restricted_dma_reserved: restricted_dma_reserved {
+			compatible = "restricted-dma-pool";
+			reg = <0x50000000 0x4000000>;
+		};
 	};
 
 	/* ... */
@@ -138,4 +161,11 @@ one for multimedia processing (named multimedia-memory@77000000, 64MiB).
 		memory-region = <&multimedia_reserved>;
 		/* ... */
 	};
+
+	pcie_device: pcie_device@0,0 {
+		reg = <0x83010000 0x0 0x00000000 0x0 0x00100000
+		       0x83010000 0x0 0x00100000 0x0 0x00100000>;
+		memory-region = <&restricted_dma_mem_reserved>;
+		/* ... */
+	};
 };
-- 
2.32.0.272.g935e593368-goog

