Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2D32367C17
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 10:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235252AbhDVIQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 04:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235265AbhDVIQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 04:16:03 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F902C06138D
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:15:27 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id e9so6153176plj.2
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KeK8DSQdHPnfBsnYoJml8hxFMiJru7O0NA4XbeWzkSY=;
        b=AsZrZqJIimVAtGXMRVsWcKrsorVck1XgLTh3pHNLrWSxkdDRnGm7t6TqpM5ldf6xB7
         mC86KkbKnwzlnS/clKnP6s/9uO1XB8opjFqiCDh6A7+1mZw2SFs1IwNU2LHHphHOt6QY
         p2b9YBU51p/mzY9rCQjA96SJjLr18SEsXNgpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KeK8DSQdHPnfBsnYoJml8hxFMiJru7O0NA4XbeWzkSY=;
        b=fAqcL15SyKSQw5lGdvtO2h5aO+F88O6Uj+IB2Z1KSZHDWELmZitZtOhO4yo9cZI+At
         i3XorFDKUMzVbhEnq5bX9WUCX54eAwH6sdMC+R1p4Q8++eL20+A0SqmPVww2jugONBHh
         ve761EqKiZbIR+DV6z6rDiOQxHO7vxeKgdFT5HjmZwbFOK+lWI28jnUmMKY4RIWiOP9N
         oCAt2amPLt888thQLwqwXgDauzEB1YB8DfAZMfjs0tNYogF5+8lzpPJLFEHMNpTXwIrM
         kNqh98C0Pp2vm6dkBKG1k9/Rmh95CEFPMGUoM5kuHUZgUx4GXT+zDZwmH8gIDLZP2jgT
         Cckg==
X-Gm-Message-State: AOAM533CMP6jMDVMJHV9UnoP+yL5UoglAizYcpwDX+WP9RZuTEeVdBmS
        QihpwxtBalzYVuLSrOKA926uNw==
X-Google-Smtp-Source: ABdhPJx3x6k3UuJoTeVgHgSVZk2TSCFARKLuNRut1DwuLYspzTDGMvJMpDB6O5YCyQkIwGCuRKmyJg==
X-Received: by 2002:a17:90b:298:: with SMTP id az24mr2746175pjb.123.1619079327035;
        Thu, 22 Apr 2021 01:15:27 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:1a8e:1bde:f79e:c302])
        by smtp.gmail.com with UTF8SMTPSA id o30sm1546049pgc.55.2021.04.22.01.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 01:15:26 -0700 (PDT)
From:   Claire Chang <tientzu@chromium.org>
To:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
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
Subject: [PATCH v5 01/16] swiotlb: Fix the type of index
Date:   Thu, 22 Apr 2021 16:14:53 +0800
Message-Id: <20210422081508.3942748-2-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210422081508.3942748-1-tientzu@chromium.org>
References: <20210422081508.3942748-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the type of index from unsigned int to int since find_slots() might
return -1.

Fixes: 0774983bc923 ("swiotlb: refactor swiotlb_tbl_map_single")
Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/swiotlb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 0a5b6f7e75bc..8635a57f88e9 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -499,7 +499,8 @@ phys_addr_t swiotlb_tbl_map_single(struct device *dev, phys_addr_t orig_addr,
 {
 	struct io_tlb_mem *mem = io_tlb_default_mem;
 	unsigned int offset = swiotlb_align_offset(dev, orig_addr);
-	unsigned int index, i;
+	unsigned int i;
+	int index;
 	phys_addr_t tlb_addr;
 
 	if (!mem)
-- 
2.31.1.368.gbe11c130af-goog

