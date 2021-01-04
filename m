Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E8B32E8FC2
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 05:15:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726278AbhADEN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jan 2021 23:13:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727593AbhADENI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jan 2021 23:13:08 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 588B7C0617A0
        for <devicetree@vger.kernel.org>; Sun,  3 Jan 2021 20:11:59 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id l23so9987484pjg.1
        for <devicetree@vger.kernel.org>; Sun, 03 Jan 2021 20:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=icXjVyLr8ROGK9HCrfmW24KYFfrqOe76+5Eys2pUaYc=;
        b=MUCjeC0n9Jzu3Ybx2+wYVVQZHu+be4Ab/JPXX+mx10mppyE8coiYJHLOQtIFIiWFDu
         tBlRN12//WUM+lgkJ6PgC9GzcdK4GHlrAIP6kx+aY7vfmCUtpostUbWZCfZpQ12UkCNd
         YILCpHW+eidapdhkVCU2wnGb7ghd0CWy99a5KDahC2HjtHvatBy24V9XvqkEw13tpddq
         pYhhyexGjqX5E197g6JPx9sSYsm66uBLzbGojSD10uk6mLqL8umyT4wb09EKzPZPCZiq
         UxNrEFHQLeF5GjsYB/5icUIISqQFUxKDglWMdt8qNdZ5GPbR3ipp8tlvgXKgx4Jpab5X
         NTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=icXjVyLr8ROGK9HCrfmW24KYFfrqOe76+5Eys2pUaYc=;
        b=ro5auX+087FxBaC10VfP+xtEE6hKJA12be1pijaTsS1+1xDwc+QVFfaY94zWX4quyz
         mD3CGPKU6NDJS+kVgjo49Q5TCA8n+U4JWtHi3M4hVMK/hwmQZUAb0DFg2KsOwxm9E04M
         LwNslOnWk4KI0L4qHFT72CABwXubG1NI5JzOniyqGpvUNHiAZI3RrVW8M9RJtvhohAii
         cIYcnSgEv+/rgrtJ5+5pUug4sEE+HeldODTiZO62Jpuab/Ye7bHW6o8F/WNqYgZTZhiP
         fP4thE1/le9glpM65m8UatQFfHwxfuaEqSxy+YqnRGF+N7mfo2wXP5Rqn0VwvW60O8Ir
         hL/g==
X-Gm-Message-State: AOAM530MpkYg5lziZEbho0VcRHH/QIGr6VFYBmHbtvMUJrVw19J5Inoe
        22Sb5kXCzP8xwJdvGAke/wNJ+XiSNxIO
X-Google-Smtp-Source: ABdhPJwWuQlC9C42p7YriHVAU0fLFuzmlbs1I6A7poFZx8dMn5NBsQ8KChaZkRch5Lf4CybfrDMhpQ==
X-Received: by 2002:a17:902:6bca:b029:dc:34e1:26b1 with SMTP id m10-20020a1709026bcab02900dc34e126b1mr52162525plt.52.1609733518888;
        Sun, 03 Jan 2021 20:11:58 -0800 (PST)
Received: from localhost.localdomain ([103.77.37.160])
        by smtp.gmail.com with ESMTPSA id x22sm54899930pfc.19.2021.01.03.20.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Jan 2021 20:11:58 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 3/4] mtd: rawnand: qcom: Add support for Qcom SMEM parser
Date:   Mon,  4 Jan 2021 09:41:36 +0530
Message-Id: <20210104041137.113075-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210104041137.113075-1-manivannan.sadhasivam@linaro.org>
References: <20210104041137.113075-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for using Qualcomm SMEM based flash partition parser in
Qualcomm NAND controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 667e4bfe369f..fd4c318b520f 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2821,6 +2821,8 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 	return 0;
 }
 
+static const char * const probes[] = { "qcomsmem", NULL };
+
 static int qcom_nand_host_init_and_register(struct qcom_nand_controller *nandc,
 					    struct qcom_nand_host *host,
 					    struct device_node *dn)
@@ -2884,7 +2886,7 @@ static int qcom_nand_host_init_and_register(struct qcom_nand_controller *nandc,
 		}
 	}
 
-	ret = mtd_device_register(mtd, NULL, 0);
+	ret = mtd_device_parse_register(mtd, probes, NULL, NULL, 0);
 	if (ret)
 		nand_cleanup(chip);
 
-- 
2.25.1

