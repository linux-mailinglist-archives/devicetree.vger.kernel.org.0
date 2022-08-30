Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FA405A6914
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:00:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbiH3RAG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:00:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231290AbiH3Q7k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 12:59:40 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9AFDF7B33
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 09:59:28 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id v5so5497375plo.9
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 09:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=LclRCur2+TmOph0Lw8Vjg5+TpaDfY+BX1hQtzMBpEmo=;
        b=h07RNOiqIlifbVpVHPhKfocZqgUpN4BvEgeIwwO+HVIgjWt+AZh5u8gy7bLTmU5uxJ
         NM7+dPKAfaGu5MM2RzTY1UANAfe1XiFA7G1YRTO0fWNgyOZPYgMa98O0R1K4qu6HI9UX
         MS6Rnea3jJIGCC04cVEMVLRaNQAsGleKSMz5pb1CPwHufS2UQ6CV29dnga0JnQgNIqaA
         Vm5+k48j5mGsQYBuRyNdmTqR0mrGlBQDjPot5rBL/iym1/6RN6lYnHktNMYf3kgnIkU0
         yF+9WQRrUXWx61IGuHeTAWd7IFQcMVfwf+W7t9ly7APLAnL4lVK4HDFz6kgjRmKiSpZL
         ESxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=LclRCur2+TmOph0Lw8Vjg5+TpaDfY+BX1hQtzMBpEmo=;
        b=Ie2gKszg4zo8BXYLgR9JfUiPe2la/igJa88WvcAqz37NzCJQb1eVJyLWljclDdYdUB
         1sWFPs20+kDiXxAOWfAQP6uJcq7h7XZuCkSNxWima68IAMEwbJx/NuU/zPR6tN/Gaq/X
         Z5aoExZAqyxeX0XeVYJgtXPRc2pNoSjX/PCaCVhowWGIe/OQHhwvsrS2shhLE7/oNO6A
         DqH/tsKNcduQFO9FIzIL2KkUMxKySkw12xpfTgTtlbEKpGnliGFt7a53XynsHu4ZOUZj
         TQYv2iYyT97N1MH22Ja8wrb1CMbfU1GShR/gLHaKcsmPo26e6r/HocVrPmU+QCdogLTd
         znVA==
X-Gm-Message-State: ACgBeo3BwRudIzAGRqzifYAQUuftqJgJPNRp5Pi+iGOUuYa9JaCoVrQ6
        EUFTA29VRm3pu0qhvGZy4Aei
X-Google-Smtp-Source: AA6agR7rYHw3fJyVkM6r7m08BcCDtw/6FDziPykL8Mdo2fq4v4sP4oTJABmGn0nQ4ZViDEeSi+xc4Q==
X-Received: by 2002:a17:902:f651:b0:174:3c03:6be3 with SMTP id m17-20020a170902f65100b001743c036be3mr20369034plg.113.1661878767273;
        Tue, 30 Aug 2022 09:59:27 -0700 (PDT)
Received: from localhost.localdomain ([117.217.182.234])
        by smtp.gmail.com with ESMTPSA id n59-20020a17090a5ac100b001f510175984sm8841261pji.41.2022.08.30.09.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 09:59:26 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 08/11] PCI: qcom-ep: Make PERST separation optional
Date:   Tue, 30 Aug 2022 22:28:14 +0530
Message-Id: <20220830165817.183571-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220830165817.183571-1-manivannan.sadhasivam@linaro.org>
References: <20220830165817.183571-1-manivannan.sadhasivam@linaro.org>
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

PERST separation is an optional debug feature used to collect the crash
dump from the PCIe endpoint devices by the PCIe host when the endpoint
crashes. This feature keeps the PCIe link up by separating the PCIe IP
block from the SoC reset logic.

Hence, make the property optional in the driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 54ac2fef8b88..4908f08bd90b 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -216,8 +216,10 @@ static int qcom_pcie_ep_core_reset(struct qcom_pcie_ep *pcie_ep)
  */
 static void qcom_pcie_ep_configure_tcsr(struct qcom_pcie_ep *pcie_ep)
 {
-	regmap_write(pcie_ep->perst_map, pcie_ep->perst_en, 0);
-	regmap_write(pcie_ep->perst_map, pcie_ep->perst_sep_en, 0);
+	if (pcie_ep->perst_map) {
+		regmap_write(pcie_ep->perst_map, pcie_ep->perst_en, 0);
+		regmap_write(pcie_ep->perst_map, pcie_ep->perst_sep_en, 0);
+	}
 }
 
 static int qcom_pcie_dw_link_up(struct dw_pcie *pci)
@@ -463,8 +465,8 @@ static int qcom_pcie_ep_get_io_resources(struct platform_device *pdev,
 
 	syscon = of_parse_phandle(dev->of_node, "qcom,perst-regs", 0);
 	if (!syscon) {
-		dev_err(dev, "Failed to parse qcom,perst-regs\n");
-		return -EINVAL;
+		dev_dbg(dev, "PERST separation not available\n");
+		return 0;
 	}
 
 	pcie_ep->perst_map = syscon_node_to_regmap(syscon);
-- 
2.25.1

