Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C121A169C1E
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2020 03:08:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727166AbgBXCIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Feb 2020 21:08:18 -0500
Received: from mail-pl1-f201.google.com ([209.85.214.201]:53839 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727151AbgBXCIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Feb 2020 21:08:18 -0500
Received: by mail-pl1-f201.google.com with SMTP id 2so4273913plb.20
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2020 18:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=TTWq2HAMIWzKgBL7Xe45vNa7b1DEMoXXBFSs7M828Vo=;
        b=kJZgCePMmoxwA2xDEAPwUZmHtat6929L1+S4W8sNm4SjPsz1lNFd5rhvU8L0yzXAP4
         rcE6/ANzHRN09BnKZ9+yl1v5Ku5Ihl8A5hZbFNQVCoxh+iX5Y4vDOxxl7C3y0ifWWGME
         AVgAOmvnqo68lf+lsCTX64xV8O+AvAKhDjxAL/msdLzlmpNdY6HK8y+OvqgWKL6qdKkR
         8YoVFcIkWHgF2nltRXaDDfOzN4wAaD4It2dEXMPIGxUuQ/CK/RKWtQ9FIsCBSAcgLCuO
         yzpHLAWXUwxyFSCa3jOj+4rYUCFJT+H7nKnOoe/v2D1tLLPcn3nJuTq0QEKzvQCy2JBb
         O5CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=TTWq2HAMIWzKgBL7Xe45vNa7b1DEMoXXBFSs7M828Vo=;
        b=LyENepmw1+tAx4dVqByihzvsgp4heKPytQGqpvaxWj697tASPFehBOfHrGyn76w9C+
         0eJpJD4FidQWqRUV9iV9JiVuzSyzBSEnhklb5YkkfmAT4/3sKlmQCMmfZ7md2yL9qyw9
         pgFSu2Be4BEfs1DfYKpuV4RuL1Ok6yNsO5G8jIYUaMJqlXfU/P1BVAdjN7DtLdc/+lUx
         O6ChFJh7rC2dxyB6uj+SzLPsWHlvNIC+Ca8CQIo2hHyO5YWCcW7tmb8xfQPWam3WXGnv
         3XjAthLngNFq8F8/URBA899nxYXOTzyeG0G6yWTvPUK1mRlZT4ih1SueFsGfeRZT0snS
         7/BQ==
X-Gm-Message-State: APjAAAX3Eyl0x3NtKDVEPZL8itr1ls5TwtC2r1He754CpdShWse2KGyx
        yvuSPJkZuhfFzYaW/6+bonfBQpC/oiI=
X-Google-Smtp-Source: APXvYqy3+lHEJgJYcJNPNBHbt3vzQS08gQtp0v+NV+Un3Tbvyi8fw9vGD/+7qqprOjXR7zGnFnF9cUYziBY=
X-Received: by 2002:a63:3407:: with SMTP id b7mr23534176pga.163.1582510097904;
 Sun, 23 Feb 2020 18:08:17 -0800 (PST)
Date:   Sun, 23 Feb 2020 18:08:13 -0800
Message-Id: <20200224020815.139570-1-adelva@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 1/3] libnvdimm/of_pmem: factor out region registration
From:   Alistair Delva <adelva@google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Kenny Root <kroot@google.com>,
        "Oliver O'Halloran" <oohall@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dan Williams <dan.j.williams@intel.com>,
        Vishal Verma <vishal.l.verma@intel.com>,
        Dave Jiang <dave.jiang@intel.com>,
        Ira Weiny <ira.weiny@intel.com>, devicetree@vger.kernel.org,
        linux-nvdimm@lists.01.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Kenny Root <kroot@google.com>

From: Kenny Root <kroot@google.com>

Factor out region registration for 'reg' node. A follow-up change will
use of_pmem_register_region() to handle memory-region nodes too.

Signed-off-by: Kenny Root <kroot@google.com>
Signed-off-by: Alistair Delva <adelva@google.com>
Reviewed-by: "Oliver O'Halloran" <oohall@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: devicetree@vger.kernel.org
Cc: linux-nvdimm@lists.01.org
Cc: kernel-team@android.com
---
 drivers/nvdimm/of_pmem.c | 60 +++++++++++++++++++++++-----------------
 1 file changed, 35 insertions(+), 25 deletions(-)

diff --git a/drivers/nvdimm/of_pmem.c b/drivers/nvdimm/of_pmem.c
index 8224d1431ea9..fdf54494e8c9 100644
--- a/drivers/nvdimm/of_pmem.c
+++ b/drivers/nvdimm/of_pmem.c
@@ -14,6 +14,39 @@ struct of_pmem_private {
 	struct nvdimm_bus *bus;
 };
 
+static void of_pmem_register_region(struct platform_device *pdev,
+				    struct nvdimm_bus *bus,
+				    struct device_node *np,
+				    struct resource *res, bool is_volatile)
+{
+	struct nd_region_desc ndr_desc;
+	struct nd_region *region;
+
+	/*
+	 * NB: libnvdimm copies the data from ndr_desc into it's own
+	 * structures so passing a stack pointer is fine.
+	 */
+	memset(&ndr_desc, 0, sizeof(ndr_desc));
+	ndr_desc.numa_node = dev_to_node(&pdev->dev);
+	ndr_desc.target_node = ndr_desc.numa_node;
+	ndr_desc.res = res;
+	ndr_desc.of_node = np;
+	set_bit(ND_REGION_PAGEMAP, &ndr_desc.flags);
+
+	if (is_volatile)
+		region = nvdimm_volatile_region_create(bus, &ndr_desc);
+	else
+		region = nvdimm_pmem_region_create(bus, &ndr_desc);
+
+	if (!region)
+		dev_warn(&pdev->dev,
+			 "Unable to register region %pR from %pOF\n",
+			 ndr_desc.res, np);
+	else
+		dev_dbg(&pdev->dev, "Registered region %pR from %pOF\n",
+			ndr_desc.res, np);
+}
+
 static int of_pmem_region_probe(struct platform_device *pdev)
 {
 	struct of_pmem_private *priv;
@@ -46,31 +79,8 @@ static int of_pmem_region_probe(struct platform_device *pdev)
 			is_volatile ? "volatile" : "non-volatile",  np);
 
 	for (i = 0; i < pdev->num_resources; i++) {
-		struct nd_region_desc ndr_desc;
-		struct nd_region *region;
-
-		/*
-		 * NB: libnvdimm copies the data from ndr_desc into it's own
-		 * structures so passing a stack pointer is fine.
-		 */
-		memset(&ndr_desc, 0, sizeof(ndr_desc));
-		ndr_desc.numa_node = dev_to_node(&pdev->dev);
-		ndr_desc.target_node = ndr_desc.numa_node;
-		ndr_desc.res = &pdev->resource[i];
-		ndr_desc.of_node = np;
-		set_bit(ND_REGION_PAGEMAP, &ndr_desc.flags);
-
-		if (is_volatile)
-			region = nvdimm_volatile_region_create(bus, &ndr_desc);
-		else
-			region = nvdimm_pmem_region_create(bus, &ndr_desc);
-
-		if (!region)
-			dev_warn(&pdev->dev, "Unable to register region %pR from %pOF\n",
-					ndr_desc.res, np);
-		else
-			dev_dbg(&pdev->dev, "Registered region %pR from %pOF\n",
-					ndr_desc.res, np);
+		of_pmem_register_region(pdev, bus, np, &pdev->resource[i],
+					is_volatile);
 	}
 
 	return 0;
-- 
2.25.0.265.gbab2e86ba0-goog

