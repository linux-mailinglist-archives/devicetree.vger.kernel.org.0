Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEAE369F823
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 16:34:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232629AbjBVPek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 10:34:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232499AbjBVPe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 10:34:29 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F56E39283
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 07:34:03 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id na9-20020a17090b4c0900b0023058bbd7b2so8626397pjb.0
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 07:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDe2OfCLNRaJ6CRURKr3KlmzCsataxU7y19XTJRsk+A=;
        b=dOIV/WhuSheLaQhlWxlj+3+T37sWs0Un6jvwS3pqTS1r44qMPZoR5sHKnaeFt3+Sld
         nU8fLlIhzDveRVkmFJIH+7MBdxBwz6X/Si+ABbNOIyiGWudOvWEg1/l5bgWFERZEYdYl
         B7aAI4GwhI+Qzk1kfmvv0ogR5a0+OwywlAES1vSGmmjBnh4Ui2qCNC85F+lfD1hS8HuO
         Ft8n9ha5kHL0rFdCP00hiaxRUbgsIVr6AF2L1Cxe4qEYuA5PoeHMeuqCxhj9a8g0+ITf
         IiGS4jR4hzEqp9HtjEU6aXnMdV6DhVCLxuvMj417l1+aN3yE/iABUrtXiwevjEtCDtCi
         eCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDe2OfCLNRaJ6CRURKr3KlmzCsataxU7y19XTJRsk+A=;
        b=0YufzpuowQJ7pZfVbtOEqomcw7/tRDQ4BAtrumylRA7DUMXHvRbzt4k90ceLn3FP5M
         fNJ2Xv9umeYAX+Jj9ZAz+RdSQazngrY80Hni0Sm4QTwYt5rVSHqKrUVhjBQnS3RjFDTh
         rsXI5EzqSZEPPqswlseKyR8aLaj3WljEpubhNE/uwyVFH04Xj42ndftlW0RQ8ShcxXFv
         6As0tVWAGdClfC7HNonY+lVOBRwPMaHE0VCQlaO5zgcns3x6I+zxTBkHsBL4ogKcMHb7
         GpB5sFPufp6nL5CxJnA7qMUnfvqZw158xT0y6OMMAilMHq26wkStmq54efWOZzBLtpGr
         xBzA==
X-Gm-Message-State: AO0yUKX7tMwVmM7lYwDAp1OBqHVPvQNI7yOzVTjCdbukuA8x1IavMwxc
        9MWxjlMVNeipzv2GHzWz/4vC
X-Google-Smtp-Source: AK7set9PlENPw4Ytv0VFDNBE8oCx8oqoTB1WqxubBssAiajhFfz9or54IW4C+NgfFKUQWVfsUWeixA==
X-Received: by 2002:a05:6a20:b559:b0:cb:cb17:eac6 with SMTP id ev25-20020a056a20b55900b000cbcb17eac6mr2322262pzb.32.1677080039431;
        Wed, 22 Feb 2023 07:33:59 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:58 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 11/11] PCI: qcom: Add support for SDX55 SoC
Date:   Wed, 22 Feb 2023 21:02:51 +0530
Message-Id: <20230222153251.254492-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for SDX55 SoC reusing the 1.9.0 config. The PCIe controller is
of version 1.10.0 but it is compatible with the 1.9.0 config. This SoC also
requires "sleep" clock which is added as an optional clock in the driver,
since it is not required on other SoCs.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 77e5dc7b88ad..659df73114dd 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -182,7 +182,7 @@ struct qcom_pcie_resources_2_3_3 {
 
 /* 6 clocks typically, 7 for sm8250 */
 struct qcom_pcie_resources_2_7_0 {
-	struct clk_bulk_data clks[12];
+	struct clk_bulk_data clks[13];
 	int num_clks;
 	struct regulator_bulk_data supplies[2];
 	struct reset_control *pci_reset;
@@ -1208,6 +1208,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[idx++].id = "noc_aggr_4";
 	res->clks[idx++].id = "noc_aggr_south_sf";
 	res->clks[idx++].id = "cnoc_qx";
+	res->clks[idx++].id = "sleep";
 
 	num_opt_clks = idx - num_clks;
 	res->num_clks = idx;
@@ -1824,6 +1825,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sc8180x", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sc8280xp", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sdm845", .data = &cfg_2_7_0 },
+	{ .compatible = "qcom,pcie-sdx55", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8150", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8250", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
-- 
2.25.1

