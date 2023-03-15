Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 591006BA853
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 07:45:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231655AbjCOGpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 02:45:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231660AbjCOGpX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 02:45:23 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B6CE664E8
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:44:45 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so868193pjz.1
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678862660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v0YabBI0s70m9wGlqbavaxUwGAqEA2FcanD1NO8GJIo=;
        b=gxzPYzlBijAhPSgG6l0VOdfIg3YJVGYYbUtS6LgRr/xNs5gJDMd9uyLsna5tk+wd8X
         N87DNzYFuGGZ+vwT+lC4sHdfgtRGaVWA39XTgN9oJgzgTAbQH/XhybiAWAPjltkBGuSo
         pJrwXuhTm39VC4MCgODEq68hAP0s9Tbo7rO1HRM7/edd4kyLn5TCiIzIwBzn0OF8zI0q
         jfyHGLObKlc1gG8+HprbX1u5qINIyAU8bqWxBzVLMKW8YUupw0U2sfiy+ZOdsfZln8V1
         CJInREUQ41c3B1KbelwkUirkNun1UnNNmIAeGRO4S7TrSUl7kNezj/rxQq2Wcc+XEPFc
         Zy9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678862660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v0YabBI0s70m9wGlqbavaxUwGAqEA2FcanD1NO8GJIo=;
        b=L2HdwCRnnIwm8hk6aD+WIZDKgk7/kkndfRIZIWV48VBxcBCW5LbOkmwy9QrCYg1hTK
         HC6uJKgICfF0LC4M62jH5sEvfc3qP6JdsHGuyI2w+DqiLElTd/P8jsQH7hmPTU453fww
         0jzB0v/hP07ImRLkeXJnagW4HkfCtY9MkJ/BrLIYlTZecTnZD0omF1UXSlhue0Zvi51S
         RKWAo9unyEJOCUxiIovTKm4V3AqVYbwpJBgNU2e5Dsx7PHOBjlu27KvjSYk3iEhbJZr3
         5eKWVlrCZQ3xx3J7jzSKCaFRP3W7vuFtmhm8oCT/S46SgsAV2TBAbpLdgVWNPZo8vwg+
         pdSw==
X-Gm-Message-State: AO0yUKW2rIZqSpS9Bkm+wHNNytwQnRICQnRshsi3B+1sImoT2vHV5MhH
        X2TE7ggEa9djK0BoB17oeyZF
X-Google-Smtp-Source: AK7set9X75prM2vaqO/od0AKDHvGLB2IpPczL0aWQNxbmv3RPAY//B6TxZpwVU9Dlie0O8kt2GKU5g==
X-Received: by 2002:a17:90b:1a87:b0:23f:3df:df26 with SMTP id ng7-20020a17090b1a8700b0023f03dfdf26mr321135pjb.4.1678862660392;
        Tue, 14 Mar 2023 23:44:20 -0700 (PDT)
Received: from localhost.localdomain ([117.217.182.35])
        by smtp.gmail.com with ESMTPSA id u4-20020a17090a6a8400b002367325203fsm550747pjj.50.2023.03.14.23.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 23:44:19 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org
Cc:     konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_srichara@quicinc.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 18/18] PCI: qcom: Expose link transition counts via debugfs
Date:   Wed, 15 Mar 2023 12:12:55 +0530
Message-Id: <20230315064255.15591-19-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230315064255.15591-1-manivannan.sadhasivam@linaro.org>
References: <20230315064255.15591-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm PCIe controllers have debug registers in the MHI region that
count PCIe link transitions. Expose them over debugfs to userspace to
help debug the low power issues.

Note that even though the registers are prefixed as PARF_, they don't
live under the "parf" register region. The register naming is following
the Qualcomm's internal documentation as like other registers.

While at it, let's arrange the local variables in probe function to follow
reverse XMAS tree order.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 65 +++++++++++++++++++++++++-
 1 file changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index e47fdae3918c..d8555ae0dca7 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -10,6 +10,7 @@
 
 #include <linux/clk.h>
 #include <linux/crc8.h>
+#include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/interconnect.h>
@@ -62,6 +63,13 @@
 #define AXI_MSTR_RESP_COMP_CTRL1		0x81c
 #define MISC_CONTROL_1_REG			0x8bc
 
+/* MHI registers */
+#define PARF_DEBUG_CNT_PM_LINKST_IN_L2		0xc04
+#define PARF_DEBUG_CNT_PM_LINKST_IN_L1		0xc0c
+#define PARF_DEBUG_CNT_PM_LINKST_IN_L0S		0xc10
+#define PARF_DEBUG_CNT_AUX_CLK_IN_L1SUB_L1	0xc84
+#define PARF_DEBUG_CNT_AUX_CLK_IN_L1SUB_L2	0xc88
+
 /* PARF_SYS_CTRL register fields */
 #define MAC_PHY_POWERDOWN_IN_P2_D_MUX_EN	BIT(29)
 #define MST_WAKEUP_EN				BIT(13)
@@ -229,11 +237,13 @@ struct qcom_pcie {
 	struct dw_pcie *pci;
 	void __iomem *parf;			/* DT parf */
 	void __iomem *elbi;			/* DT elbi */
+	void __iomem *mhi;
 	union qcom_pcie_resources res;
 	struct phy *phy;
 	struct gpio_desc *reset;
 	struct icc_path *icc_mem;
 	const struct qcom_pcie_cfg *cfg;
+	struct dentry *debugfs;
 };
 
 #define to_qcom_pcie(x)		dev_get_drvdata((x)->dev)
@@ -1384,13 +1394,51 @@ static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
 	}
 }
 
+static int qcom_pcie_link_transition_count(struct seq_file *s, void *data)
+{
+	struct qcom_pcie *pcie = (struct qcom_pcie *)dev_get_drvdata(s->private);
+
+	seq_printf(s, "L0s transition count: %u\n",
+		   readl_relaxed(pcie->mhi + PARF_DEBUG_CNT_PM_LINKST_IN_L0S));
+
+	seq_printf(s, "L1 transition count: %u\n",
+		   readl_relaxed(pcie->mhi + PARF_DEBUG_CNT_PM_LINKST_IN_L1));
+
+	seq_printf(s, "L1.1 transition count: %u\n",
+		   readl_relaxed(pcie->mhi + PARF_DEBUG_CNT_AUX_CLK_IN_L1SUB_L1));
+
+	seq_printf(s, "L1.2 transition count: %u\n",
+		   readl_relaxed(pcie->mhi + PARF_DEBUG_CNT_AUX_CLK_IN_L1SUB_L2));
+
+	seq_printf(s, "L2 transition count: %u\n",
+		   readl_relaxed(pcie->mhi + PARF_DEBUG_CNT_PM_LINKST_IN_L2));
+
+	return 0;
+}
+
+static void qcom_pcie_init_debugfs(struct qcom_pcie *pcie)
+{
+	struct dw_pcie *pci = pcie->pci;
+	struct device *dev = pci->dev;
+	char *name;
+
+	name = devm_kasprintf(dev, GFP_KERNEL, "%pOFP", dev->of_node);
+	if (!name)
+		return;
+
+	pcie->debugfs = debugfs_create_dir(name, NULL);
+	debugfs_create_devm_seqfile(dev, "link_transition_count", pcie->debugfs,
+				    qcom_pcie_link_transition_count);
+}
+
 static int qcom_pcie_probe(struct platform_device *pdev)
 {
+	const struct qcom_pcie_cfg *pcie_cfg;
 	struct device *dev = &pdev->dev;
+	struct qcom_pcie *pcie;
 	struct dw_pcie_rp *pp;
+	struct resource *res;
 	struct dw_pcie *pci;
-	struct qcom_pcie *pcie;
-	const struct qcom_pcie_cfg *pcie_cfg;
 	int ret;
 
 	pcie_cfg = of_device_get_match_data(dev);
@@ -1438,6 +1486,16 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		goto err_pm_runtime_put;
 	}
 
+	/* MHI region is optional */
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mhi");
+	if (res) {
+		pcie->mhi = devm_ioremap_resource(dev, res);
+		if (IS_ERR(pcie->mhi)) {
+			ret = PTR_ERR(pcie->mhi);
+			goto err_pm_runtime_put;
+		}
+	}
+
 	pcie->phy = devm_phy_optional_get(dev, "pciephy");
 	if (IS_ERR(pcie->phy)) {
 		ret = PTR_ERR(pcie->phy);
@@ -1468,6 +1526,9 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 
 	qcom_pcie_icc_update(pcie);
 
+	if (pcie->mhi)
+		qcom_pcie_init_debugfs(pcie);
+
 	return 0;
 
 err_phy_exit:
-- 
2.25.1

