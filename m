Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8D24466511
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 15:18:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358513AbhLBOVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 09:21:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358517AbhLBOV0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 09:21:26 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B076C0613FB
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 06:17:39 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id c32so71948508lfv.4
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 06:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7XpIRjQZ79ljvTybR5ID68//9KyOGikxNlLnhL/AsxY=;
        b=GjbKm6cBPWQgGDmVl+xK87e0VVUhNQ2UM1CMPiWYFDyFnEMR5Vzgwq3rvcgPld5J+c
         F7NFORVOi0PiYcG6nsOmPNNmJbZQ6vw6aThZa5nX+JWldkLbdWfzs2XWK9+lYwwoFkTg
         EhBdvmY9A/b7vsN4S1m8HFWn2g+gd5r4Xxg8tfuac+MidmuaCDZ4gWpPuGzPZiqYmg8j
         Saen6x3ejvW6wQHOLJw4RVGLDBpceP+iouoGxvb7wzvO9mUGq1n2Wk/xogCzkwH0lVei
         KmPfjGyw1Qx7xy8rIhWzCbvzv1+t8LQ7cTb+7Ksplh8JG754ypttF5vXwZ1oqh8ugSyH
         bFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7XpIRjQZ79ljvTybR5ID68//9KyOGikxNlLnhL/AsxY=;
        b=NbD/cwt8jTPmoUkuAEzsCAeIt4UnTcn8sHNIgeMBjq6olJHziYOKI+f+AyiPQry79Y
         V+VLlmRbEB07ge91P50P4hf6ct7tZoMp8vzrGyyODhRLOZlrqC8gFBENBfMR2zeN1oct
         gEKBKRRaXJGeiCzjjmjQjNXolGYgCbpqU6E7aqlhaPHxBEKEK3JecxQyl2euOYLzY19X
         oO95aMSchE4By+w1D0WcxNe94YJVQcrKS8ipmbg0D/mRluHlgdxTGFC322En8aGJWoqE
         qTLkny+Vmyj5hVfon9Cp8Gd2rSPUfsG4ALUFdjU7+t67VipF2DRKYd0JK7i4liXObyCa
         FNJg==
X-Gm-Message-State: AOAM533XZrcCZ+ibEiJv2yw8YITZk0/JhPWIStn9Dpmm2IvophZCvq1o
        R4J4FFjeipMVq9FSQDFCjbbmiA==
X-Google-Smtp-Source: ABdhPJxgf3GFxoYI6OSpLzNMdNbq6FLz7S5vCi3MP52NaF3uIWWC4GlslvQEEWcqPTMWW+7bHBKb/w==
X-Received: by 2002:a19:c74a:: with SMTP id x71mr12543087lff.354.1638454656050;
        Thu, 02 Dec 2021 06:17:36 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Dec 2021 06:17:35 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 05/10] PCI: qcom: add flag to enable use of ddrss_sf_tbu clock
Date:   Thu,  2 Dec 2021 17:17:21 +0300
Message-Id: <20211202141726.1796793-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
clock should be used. Since sc7280 support has added flags, switch to
the new mechanism to check if this clock should be used.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 64f762cdbc7d..e51b313da46f 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -194,7 +194,9 @@ struct qcom_pcie_ops {
 
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
+	/* flags for ops 2.7.0 and 1.9.0 */
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_ddrss_sf_tbu_clk:1;
 };
 
 struct qcom_pcie {
@@ -1164,7 +1166,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[3].id = "bus_slave";
 	res->clks[4].id = "slave_q2a";
 	res->clks[5].id = "tbu";
-	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
+	if (pcie->cfg.has_ddrss_sf_tbu_clk) {
 		res->clks[6].id = "ddrss_sf_tbu";
 		res->num_clks = 7;
 	} else {
@@ -1515,6 +1517,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
 
 static const struct qcom_pcie_cfg sm8250_cfg = {
 	.ops = &ops_1_9_0,
+	.has_ddrss_sf_tbu_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
-- 
2.33.0

