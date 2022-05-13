Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C886F526856
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 19:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383031AbiEMR0m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 13:26:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382994AbiEMR0b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 13:26:31 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23283703DD
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 10:26:29 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id u23so15685375lfc.1
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 10:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SB8fIfoWzgatoDZkHcbiicDB9V93UwQFxMhdquBXfqM=;
        b=kpihL+T7TYfsYgdByTrN9nRec96xiFtHmY1eClmO17EtB1lbczGrRbBInHyd4ZSHHh
         iXm6niA2SluSPj4pUvxkaD5pJLcmvWq7jVT8V8O4a8O7JL7dq5qCfpQxO+O473zAVw7D
         WNe2CYgKGT0B23HmI6by/qKXZK1Yv6CnKw1vJ/xuc5vvsaQ/vvDt2/qztNTmRUX4lBCo
         xnu75eM4MLOEivbFtJVE5AjY+XZgiXS/ZLNj7fp+z2Q80/5gGFYNefCFM1shnlu/qZkU
         nrcRyr1tC+hPH+gT+3ha07rtW50d+Y6c2P5EH+2PeZ3kTTJIhMIBF5kEgENC5PVdSPzX
         FoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SB8fIfoWzgatoDZkHcbiicDB9V93UwQFxMhdquBXfqM=;
        b=jmjGi0JWx8syo3pf6dBE/eGfhw7VH63+oUWO0EQrfNbvzXSSEDjYjfOgqkPCj5b47l
         rj4tvKptSTtd2wUZDndEK2YS+YRXSRejLUzyfs/oy5+ouygOc5xPieAeeefUlkjL4awu
         Gl1ecjt+rJhk77ra8+i/iekD0uyqGRISZKXZ+9BjR45my7q9j3joVa/mitA123iJcxoT
         BVqy0ynIsV9G32FiwXWiW4Z5bFD3kF0XSOkvTXKwrAWvmaNzvkeGUoB0EJKgsIskbsnu
         QF07ntwphvgUkSBrCSr+6LsOl4oByabSJrAc4hMSjOLhzx4dvKeVTW6YVB03l5ooMk/1
         mHrw==
X-Gm-Message-State: AOAM5307y459l544iJaMu+9mN1BYftonpLRT2ZMpPqvSH7y/dN5gG1ay
        aVwiVreTKcSI2EyeVlX9Bf2gvOAKYOlq5g==
X-Google-Smtp-Source: ABdhPJxgR/W+e313GdAJ7vBzNruqoaBFDZok4HMUHQiFvdPu3gLlE4vDxYj7RDfkmIaVttpw+/6GUA==
X-Received: by 2002:a05:6512:a84:b0:473:e080:40ec with SMTP id m4-20020a0565120a8400b00473e08040ecmr4158899lfu.435.1652462788606;
        Fri, 13 May 2022 10:26:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e3-20020a2e8183000000b0024f3d1daec0sm511157ljg.72.2022.05.13.10.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 10:26:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Johan Hovold <johan@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v10 06/10] PCI: dwc: Handle MSIs routed to multiple GIC interrupts
Date:   Fri, 13 May 2022 20:26:18 +0300
Message-Id: <20220513172622.2968887-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220513172622.2968887-1-dmitry.baryshkov@linaro.org>
References: <20220513172622.2968887-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../pci/controller/dwc/pcie-designware-host.c | 38 ++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-designware.h  |  1 +
 2 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 70f0435907c1..320a968dd366 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -288,6 +288,11 @@ static void dw_pcie_msi_init(struct pcie_port *pp)
 	dw_pcie_writel_dbi(pci, PCIE_MSI_ADDR_HI, upper_32_bits(msi_target));
 }
 
+static const char * const split_msi_names[] = {
+	"msi0", "msi1", "msi2", "msi3",
+	"msi4", "msi5", "msi6", "msi7",
+};
+
 static int dw_pcie_msi_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -300,17 +305,48 @@ static int dw_pcie_msi_host_init(struct pcie_port *pp)
 	for (ctrl = 0; ctrl < num_ctrls; ctrl++)
 		pp->irq_mask[ctrl] = ~0;
 
+	if (pp->has_split_msi_irq) {
+		/*
+		 * Parse as many IRQs as described in the DTS. If there are
+		 * none, fallback to the single "msi" IRQ.
+		 */
+		for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
+			int irq;
+
+			if (pp->msi_irq[ctrl])
+				continue;
+
+			irq = platform_get_irq_byname(pdev, split_msi_names[ctrl]);
+			if (irq == -ENXIO) {
+				num_ctrls = ctrl;
+				break;
+			} else if (irq < 0) {
+				return dev_err_probe(dev, irq,
+						     "Failed to parse MSI IRQ '%s'\n",
+						     split_msi_names[ctrl]);
+			}
+
+			pp->msi_irq[ctrl] = irq;
+		}
+
+		if (num_ctrls == 0)
+			num_ctrls = 1;
+	}
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
 
+	pp->num_vectors = min_t(u32, pp->num_vectors, num_ctrls * MAX_MSI_IRQS_PER_CTRL);
+	dev_dbg(dev, "Using %d MSI vectors\n", pp->num_vectors);
+
 	pp->msi_irq_chip = &dw_pci_msi_bottom_irq_chip;
 
 	ret = dw_pcie_allocate_domains(pp);
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 9c1a38b0a6b3..3aa840a5b19c 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -179,6 +179,7 @@ struct dw_pcie_host_ops {
 
 struct pcie_port {
 	bool			has_msi_ctrl:1;
+	bool			has_split_msi_irq:1;
 	u64			cfg0_base;
 	void __iomem		*va_cfg0_base;
 	u32			cfg0_size;
-- 
2.35.1

