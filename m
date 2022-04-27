Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E79535117AA
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 14:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233691AbiD0MUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 08:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233803AbiD0MUM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 08:20:12 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A728A321
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 05:17:00 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id t25so2796077lfg.7
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 05:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M8HyJrwSLyIp0mO6aGXhaYsnvi4WywUSs0uEhFZnp4c=;
        b=lR10+/E1cg04OPEptMUGsVlksQu/8zP5DcYO8XEyFAqFNNucPbO0KdQuJYK+4wgOD9
         4zGDlp/8Vgo1JPf9fbTOJCL7b33c+zxSVvSwtFy5hzmF+czsqKD0oxVgog7lS9zI8r/i
         W8UNhOk+iDWRk/Ouh+ARi1pjrPkXD+V5SM4UpVanQ7QIE9WdIuuZ3k9u9mKWN261F7mb
         10QDRqjfHcU12lnbwuYAARqxVkBFDiAUDm8SI2JDAgf6CXBptZkJ9Jv6FOsu/mKR171b
         XEKonH8lOR5J+c/a0S/9BUcWIZ41XjtxvRWmZV4PPRfI5FVt37xspaPcaeBdcG8sLSlG
         NYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M8HyJrwSLyIp0mO6aGXhaYsnvi4WywUSs0uEhFZnp4c=;
        b=T61b8qKpVNM7PPyrUrqJSKy1tkMiv2qNayXNB8CmTKXy32Be47E/MLE0hezEE3zYz8
         nEUuo4/Aj7eFkU1o1FVi+F0sYzfYUsdMabN/StmXPSfEU6dI+LCMHaVWm2D3ClU/yhtb
         cUl8DwFa1E62wFw/AIUXpgs13ZMB2I6BFIgRLXWMJqn/hEmCfl+4w4PD0Lc8jwJi88+L
         FgT8BzFK+ehli944EpN2FSGiJXOwCP+rryJkRjF6hN1D3ZnTie1CRmurBsjybIM/p/RM
         RoqYnkGrza9tifmAKJplex8PVvixNJlwEpkD5kDYkMRuGJ6HW/6L3avH6Sc3QdFF+far
         K1Sg==
X-Gm-Message-State: AOAM5308EPflFod0CuKMcutOcRx5rjDt5p8SO6JUPqRLVzK9glCJRcng
        6wMRALClOncRxooYLixUiRaUww==
X-Google-Smtp-Source: ABdhPJyritvQ595gxCjwSnpbB3JBuVaavFmsPxYWBbvuMBGdXEZTktxuThrkA7dn7z7sNeKZdf8tvA==
X-Received: by 2002:a19:4306:0:b0:471:bc59:aeb1 with SMTP id q6-20020a194306000000b00471bc59aeb1mr19574258lfa.566.1651061817535;
        Wed, 27 Apr 2022 05:16:57 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y1-20020a0565123f0100b0044584339e5dsm2043388lfa.190.2022.04.27.05.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 05:16:57 -0700 (PDT)
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
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 2/5] PCI: dwc: Teach dwc core to parse additional MSI interrupts
Date:   Wed, 27 Apr 2022 15:16:50 +0300
Message-Id: <20220427121653.3158569-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220427121653.3158569-1-dmitry.baryshkov@linaro.org>
References: <20220427121653.3158569-1-dmitry.baryshkov@linaro.org>
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

DWC driver parses a single "msi" interrupt which gets fired when the EP
sends an MSI interrupt, however for some devices (Qualcomm) MSI vectors
are handled in groups by 32 vectors in each group. Add support for
parsing "split" MSI interrupts.

In addition to the "msi" interrupt, the code will lookup the "msi2",
"msi3", etc. IRQs and use them for the MSI group interrupts. For
backwards compatibility with existing DTS files, the code will not error
out if these interrupts are missing. Instead it will limit itself
to the number of MSI group IRQs declared in the DT file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../pci/controller/dwc/pcie-designware-host.c | 23 +++++++++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h  |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 5d90009a0f73..ce7071095006 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -382,6 +382,29 @@ int dw_pcie_host_init(struct pcie_port *pp)
 				pp->msi_irq[0] = irq;
 			}
 
+			if (pp->has_split_msi_irq) {
+				char irq_name[] = "msiXXX";
+				int irq;
+
+				for (ctrl = 1; ctrl < num_ctrls; ctrl++) {
+					if (pp->msi_irq[ctrl])
+						continue;
+
+					snprintf(irq_name, sizeof(irq_name), "msi%d", ctrl + 1);
+					irq = platform_get_irq_byname_optional(pdev, irq_name);
+					if (irq == -ENXIO) {
+						num_ctrls = ctrl;
+						pp->num_vectors = num_ctrls * MAX_MSI_IRQS_PER_CTRL;
+						dev_warn(dev, "Limiting amount of MSI irqs to %d\n", pp->num_vectors);
+						break;
+					}
+					if (irq < 0)
+						return irq;
+
+					pp->msi_irq[ctrl] = irq;
+				}
+			}
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

