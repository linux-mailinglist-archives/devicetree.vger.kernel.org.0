Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E371542DD1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:31:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237338AbiFHKau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:30:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238224AbiFHK35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:29:57 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C46350078
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:22:17 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id t25so32474185lfg.7
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 03:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2by5Bt/vQS1TmQjI5mkgsiE5z/umI6jxynKNxO746d4=;
        b=PHXZX+uJzXSI2P0g9qdj0yl8r21DoGlyFIX+fPxSmmmP8lX6TenY95q3PC2GoBzSzm
         GYKb9Mf8lV4PTevXPA+KPmjn3XoFhNl9MI192oEqZurSf07DATQZjYkzc9wHAjeUejFC
         1mZdLcbW2/NzI4mYPQ2RnzNQcme+iClMyiM0ihKVMpaNbOwYo+grZbULFb8SkqwKdHTE
         7SgnsHoB29UBTzquF9p+8s1C84I/h2P7VBF4s9AV0ovPxY7s3czL3uZkI+YwpGs7/jN5
         SkuoeuIiknz2aqv3gnjmCBKxaff8gvG4xPT2+Ku9B4O110jNCTHoRhFe7eOYN1lDAn1y
         pPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2by5Bt/vQS1TmQjI5mkgsiE5z/umI6jxynKNxO746d4=;
        b=z5u8lKtRxo7NQbf7ANbIgrs8Ar6j+oSbJGteI69hkCLhSlXjj/eR4KClWxhdFVt1ks
         c0MoPkdMc3Hpo+Mty9Azer6tISY6L9JH80u7cCfUdr7zEqX08YGEEArEmDHWj40ruOV8
         rjW2gybiysmNl73vdjXHeE0z85EMWLG2QY0JVjrHZLQNI/37owGm0BLPWxB/vvuTUQZx
         hxzO/CCax/43LS+ON5rE/rJkReD5pRT/Tp39y9282JiQsxlvvXkStW5gbvGYvQMs6Xgu
         69DbcA27A4eZtsj0QcPeZWt5N535N2D4FpO7MJqofrUawOwfyJn+QRZRV1/G8Xfgdnhz
         EpSA==
X-Gm-Message-State: AOAM5304ZXk4wlj0dduBbXnmYREtmtx18O5krClvEVNeeD7sTR4xVUHE
        EmCyOqzednSncfdw9JmN8f/54w==
X-Google-Smtp-Source: ABdhPJwhtC3H5Wj5I+u/XLrk1Qz7bQ74NSxgJqoQjbuFMOax0L6gS7S8ndUbXXP9jZI2munGntDkaw==
X-Received: by 2002:a05:6512:c04:b0:478:f837:d813 with SMTP id z4-20020a0565120c0400b00478f837d813mr22338524lfu.17.1654683735150;
        Wed, 08 Jun 2022 03:22:15 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v1-20020ac25601000000b00478fe3327aasm3642934lfd.217.2022.06.08.03.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 03:22:14 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v14 4/7] PCI: dwc: Handle MSIs routed to multiple GIC interrupts
Date:   Wed,  8 Jun 2022 13:22:05 +0300
Message-Id: <20220608102208.2967438-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608102208.2967438-1-dmitry.baryshkov@linaro.org>
References: <20220608102208.2967438-1-dmitry.baryshkov@linaro.org>
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

On some of Qualcomm platforms each group of 32 MSI vectors is routed to the
separate GIC interrupt. Implement support for such configurations by
parsing "msi0" ... "msiN" interrupts and attaching them to the chained
handler.

Note, that if DT doesn't list an array of MSI interrupts and uses single
"msi" IRQ, the driver will limit the amount of supported MSI vectors
accordingly (to 32).

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../pci/controller/dwc/pcie-designware-host.c | 63 +++++++++++++++++--
 1 file changed, 59 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 85c1160792e1..26b50948d6fc 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -289,6 +289,46 @@ static void dw_pcie_msi_init(struct pcie_port *pp)
 	dw_pcie_writel_dbi(pci, PCIE_MSI_ADDR_HI, upper_32_bits(msi_target));
 }
 
+static int dw_pcie_parse_split_msi_irq(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct device *dev = pci->dev;
+	struct platform_device *pdev = to_platform_device(dev);
+	int irq;
+	u32 ctrl, max_vectors;
+
+	/* Parse as many IRQs as described in the devicetree. */
+	for (ctrl = 0; ctrl < MAX_MSI_CTRLS; ctrl++) {
+		char msi_name[] = "msiX";
+
+		msi_name[3] = '0' + ctrl;
+		irq = platform_get_irq_byname_optional(pdev, msi_name);
+		if (irq == -ENXIO)
+			break;
+		if (irq < 0)
+			return dev_err_probe(dev, irq,
+					     "Failed to parse MSI IRQ '%s'\n",
+					     msi_name);
+
+		pp->msi_irq[ctrl] = irq;
+	}
+
+	/* If there were no "msiN" IRQs at all, fallback to the standard "msi" IRQ. */
+	if (ctrl == 0)
+		return -ENXIO;
+
+	max_vectors = ctrl * MAX_MSI_IRQS_PER_CTRL;
+	if (pp->num_vectors > max_vectors) {
+		dev_warn(dev, "Exceeding number of MSI vectors, limiting to %u\n",
+			 max_vectors);
+		pp->num_vectors = max_vectors;
+	}
+	if (!pp->num_vectors)
+		pp->num_vectors = max_vectors;
+
+	return 0;
+}
+
 static int dw_pcie_msi_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -297,21 +337,32 @@ static int dw_pcie_msi_host_init(struct pcie_port *pp)
 	int ret;
 	u32 ctrl, num_ctrls;
 
-	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
-	for (ctrl = 0; ctrl < num_ctrls; ctrl++)
+	for (ctrl = 0; ctrl < MAX_MSI_CTRLS; ctrl++)
 		pp->irq_mask[ctrl] = ~0;
 
+	if (!pp->msi_irq[0]) {
+		ret = dw_pcie_parse_split_msi_irq(pp);
+		if (ret < 0 && ret != -ENXIO)
+			return ret;
+	}
+
+	if (!pp->num_vectors)
+		pp->num_vectors = MSI_DEF_NUM_VECTORS;
+	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
+
 	if (!pp->msi_irq[0]) {
 		int irq = platform_get_irq_byname_optional(pdev, "msi");
 
 		if (irq < 0) {
 			irq = platform_get_irq(pdev, 0);
 			if (irq < 0)
-				return irq;
+				return dev_err_probe(dev, irq, "Failed to parse MSI irq\n");
 		}
 		pp->msi_irq[0] = irq;
 	}
 
+	dev_dbg(dev, "Using %d MSI vectors\n", pp->num_vectors);
+
 	pp->msi_irq_chip = &dw_pci_msi_bottom_irq_chip;
 
 	ret = dw_pcie_allocate_domains(pp);
@@ -409,7 +460,11 @@ int dw_pcie_host_init(struct pcie_port *pp)
 				     of_property_read_bool(np, "msi-parent") ||
 				     of_property_read_bool(np, "msi-map"));
 
-		if (!pp->num_vectors) {
+		/*
+		 * For the has_msi_ctrl case the default assignment is handled
+		 * in the dw_pcie_msi_host_init().
+		 */
+		if (!pp->has_msi_ctrl && !pp->num_vectors) {
 			pp->num_vectors = MSI_DEF_NUM_VECTORS;
 		} else if (pp->num_vectors > MAX_MSI_IRQS) {
 			dev_err(dev, "Invalid number of vectors\n");
-- 
2.35.1

