Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1AC95B826A
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 09:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230171AbiINHz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 03:55:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230286AbiINHzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 03:55:02 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4480AE0B7
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:54:43 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id e68so14136113pfe.1
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rmpTVMmLmv6UMsIzgv+O74eFW0TvLRItNBIUwPHHvPM=;
        b=W80PLz3cj7OTdR2xEOoF7e15KEc68u0lAxgpkr052tLq0DN9vxB+vD6435bBK7Outd
         PhwZauqjX4/X5LWYKbAlBMzpqSkNf9LEzzqxTXPFjIvU0jFBJkkpsCuqkGNvDIFAQXW+
         Zjq0Q40DphcIvkqCkyx+tzNI4w59TGnztg7Y6OiaOGhiVL220eo5AOHg6RPzg5A+MxjU
         pSpLLDNwRAZPrrNGSQZmRMFpwU4nOsZib2PvmoZqYSjAkMxvS6neX4cOEx9vzICYQuua
         QYDGJ7Y1H6bCjS8PvR8oGFQN+1IBH8fv6yDPP+BQajL/G28f3gDtKVMeze/3PzIEHj7e
         +7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rmpTVMmLmv6UMsIzgv+O74eFW0TvLRItNBIUwPHHvPM=;
        b=g96MI6cZDloPxOF2Bh4HQZD8SHFma6OcSXBgxxJmgewjj7B3HSOR40ZxUfagwDdFEf
         VgGC9AaLL3Jn8n8K4dlAkqsL71KDU+qOqTJyL3Fk89iWV7p27wp1guMY64R44H/r5s1e
         o+X6k5L3+6Zxjjw5LhDNbxcs86M4+JMPwUkAkZ4HyL95b+ftPtRud8ibZcyeMLopuqSV
         zdC+ZGXSb8u8YVabgl5cIs1dBD2GiFaf1zace1mG34xBKIdJetOLyvteRY8qyN8E3QuU
         o60mhOWiQt15G/sKLJ1w8R2E+Jvb3vq3p4zp6OO7z0jouReA+Bo4hyL30yGkcjpG1L9A
         pFUw==
X-Gm-Message-State: ACgBeo3dHQnNvv/oF5ln0zE4AvXhNR6wTu77MS3WD7OmEVEvr2dJZICm
        /3IYPBhD63uYGgT7Hyr9ADjM
X-Google-Smtp-Source: AA6agR5CxdndaK0G7PKDFZZC4RRnzrbG3c3QW1kLROYUPhM/+vc97wH8N+DYutyDUHSyS3+JkDridA==
X-Received: by 2002:a63:2c0b:0:b0:434:ebb6:7594 with SMTP id s11-20020a632c0b000000b00434ebb67594mr29028939pgs.245.1663142082905;
        Wed, 14 Sep 2022 00:54:42 -0700 (PDT)
Received: from localhost.localdomain ([117.202.184.122])
        by smtp.gmail.com with ESMTPSA id p8-20020a1709027ec800b00174ea015ee2sm10119054plb.38.2022.09.14.00.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 00:54:42 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 07/12] PCI: qcom-ep: Disable Master AXI Clock when there is no PCIe traffic
Date:   Wed, 14 Sep 2022 13:23:45 +0530
Message-Id: <20220914075350.7992-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220914075350.7992-1-manivannan.sadhasivam@linaro.org>
References: <20220914075350.7992-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Master AXI clock can be disabled when it is not used i.e., when there
is no traffic on the PCIe bus. This helps to save power during idle state.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 526e98ea23f6..40f75a6c55df 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -105,6 +105,7 @@
 /* PARF_SYS_CTRL register fields */
 #define PARF_SYS_CTRL_AUX_PWR_DET		BIT(4)
 #define PARF_SYS_CTRL_CORE_CLK_CGC_DIS		BIT(6)
+#define PARF_SYS_CTRL_MSTR_ACLK_CGC_DIS		BIT(10)
 #define PARF_SYS_CTRL_SLV_DBI_WAKE_DISABLE	BIT(11)
 
 /* PARF_DB_CTRL register fields */
@@ -341,8 +342,14 @@ static int qcom_pcie_perst_deassert(struct dw_pcie *pci)
 	val &= ~PARF_Q2A_FLUSH_EN;
 	writel_relaxed(val, pcie_ep->parf + PARF_Q2A_FLUSH);
 
-	/* Disable DBI Wakeup, core clock CGC and enable AUX power */
+	/*
+	 * Disable Master AXI clock during idle
+	 * Do not allow DBI access to take the core out of L1
+	 * Disable core clock gating that gates PIPE clock from propagating to core clock
+	 * Report to the host that Vaux is present
+	 */
 	val = readl_relaxed(pcie_ep->parf + PARF_SYS_CTRL);
+	val &= ~PARF_SYS_CTRL_MSTR_ACLK_CGC_DIS;
 	val |= PARF_SYS_CTRL_SLV_DBI_WAKE_DISABLE |
 	       PARF_SYS_CTRL_CORE_CLK_CGC_DIS |
 	       PARF_SYS_CTRL_AUX_PWR_DET;
-- 
2.25.1

