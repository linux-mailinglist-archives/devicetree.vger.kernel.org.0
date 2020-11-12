Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C5182B05D6
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 14:03:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728242AbgKLND1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 08:03:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728265AbgKLND0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 08:03:26 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2AABC061A4B
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 05:03:25 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id s13so5431500wmh.4
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 05:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YNIotbOC7bka5Z9BLnFVmsCtOLB6kJ/rhFA9CsCNoBU=;
        b=QZfgK97B8RvBj1vgMXgdtAlJTXGErNY2MHWaYeZJYcihAKpzxznX+f3QupErxyW+y7
         vl5dFcj/SwiTM7AoiBl8Ekh/VI2I+MV6RRDXOcrbDCGTkeMw66SFzS1DgJvxjcaDuKjk
         2bmfttuRd5KL3r+eSvLlVqZxie8jGCaK6VIEInNDm+bzEK1xUWxTL3t2xMOYv4Bass5p
         gBiBnUXUjVBFvCB1BrWOR56d6TtjFa2TYTFOwxI7fDliFlDQVEIWqgTYl5sIlbDUR1ej
         iCxbPa+0gIBZXHXjDH2ssbGlbO7TSEgUjnx9UYgYtW9ALf/I+qK3xCqik9HnPlfBcF/J
         Vzrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YNIotbOC7bka5Z9BLnFVmsCtOLB6kJ/rhFA9CsCNoBU=;
        b=nDcw4T70bha4Eci+YGcDK3mrbIU9ca2NFfIihZsZJ+tyzBovTHsLxL24WGKFjcYYX3
         KK0RCiUXO7Q5jcjpGOmM+a2FU03Hqbg51+XS0JF+TAbHWBs7UYHBH4zWlck74xHJUjqR
         KhhLFQvaGY6lWtALrLNhHzv5Rb3DL85Zj7qHrIEthB8j8PLPgts2niUPjDrKjr1TSK7O
         g3bOy5XHf1aZkJ4IZpvV5yFfXNr8ZyHaNOplx5mR8W4ei6rUj4ZkY4xwOD+BFDBHxYm7
         LeRb7zQpOB44ffhjCW2bOKKmerasWDHnEtG7/SJ5mf42PyOoHtK8p5X6HxYeeV2ofvaC
         jrmA==
X-Gm-Message-State: AOAM532bvwkjyMV+4+ldZnXE3c+5tcMb1meB4rkfPy2jHqgBhuddksxq
        11JBqyvYuGfog7n8O89Aa2FI5Q==
X-Google-Smtp-Source: ABdhPJwEuQSW7wZd81DIymTmLqqJtRteXgrSKTo8T+v6vTfsJF7cOILOIkbIrFkOfcCnh2vnSQXfbA==
X-Received: by 2002:a1c:2586:: with SMTP id l128mr9104219wml.149.1605186204490;
        Thu, 12 Nov 2020 05:03:24 -0800 (PST)
Received: from localhost.localdomain ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id m22sm6877508wrb.97.2020.11.12.05.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 05:03:23 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org, lorenzo.pieralisi@arm.com,
        robh+dt@kernel.org
Cc:     guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, bhelgaas@google.com,
        Jonathan.Cameron@huawei.com, eric.auger@redhat.com,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pci@vger.kernel.org, baolu.lu@linux.intel.com,
        zhangfei.gao@linaro.org, shameerali.kolothum.thodi@huawei.com,
        vivek.gautam@arm.com,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Kuppuswamy Sathyanarayanan 
        <sathyanarayanan.kuppuswamy@linux.intel.com>
Subject: [PATCH v8 7/9] PCI/ATS: Add PRI stubs
Date:   Thu, 12 Nov 2020 13:55:19 +0100
Message-Id: <20201112125519.3987595-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201112125519.3987595-1-jean-philippe@linaro.org>
References: <20201112125519.3987595-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SMMUv3 driver, which can be built without CONFIG_PCI, will soon gain
support for PRI.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
unused PRI and PASID stubs") to re-introduce the PRI stubs, and avoid
adding more #ifdefs to the SMMU driver.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index df54cd5b15db..ccfca09fd232 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -30,6 +30,13 @@ int pci_reset_pri(struct pci_dev *pdev);
 int pci_prg_resp_pasid_required(struct pci_dev *pdev);
 bool pci_pri_supported(struct pci_dev *pdev);
 #else
+static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
+{ return -ENODEV; }
+static inline void pci_disable_pri(struct pci_dev *pdev) { }
+static inline int pci_reset_pri(struct pci_dev *pdev)
+{ return -ENODEV; }
+static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
+{ return 0; }
 static inline bool pci_pri_supported(struct pci_dev *pdev)
 { return false; }
 #endif /* CONFIG_PCI_PRI */
-- 
2.29.1

