Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44204524AA3
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 12:46:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352789AbiELKqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 06:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352786AbiELKp6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 06:45:58 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E5B272D
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:45:49 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id i10so8254345lfg.13
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BBuu5KSSAl4LgdXTiciqOI62Z3+Z2tFwbFLkIDaMs1E=;
        b=irBM/I9sHiUXGDXRMw1EdRafCUofbpC6G5pKcBqlmJNrO3qWXV8A1vYDueazLYn2Tv
         CkLO29FJDBwoRRdgOAAsNL/h8t4fE0BQq1pXFIhlpM1n9RlXMhYUp/HCGaDUbrp6eyXt
         o/Tro3NI09h0XDeI0SBa85bFiIsXHNexUiJ3i59v2DvU3AVQamPZ/sQWMhxgSpGQdR9U
         5xd1FrOPTy3ZK7xibutPB8N+QAisB5Ii144R4XkXAnZumBoGi5ATvEzATS1UzJZ+nEV6
         OzwINkLDFtfsjvB55M2v8pWpWnCnDrHcePzJG+F4T5URDzjyoArR6fxKPLRXF3DugZVU
         qAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BBuu5KSSAl4LgdXTiciqOI62Z3+Z2tFwbFLkIDaMs1E=;
        b=Kom3THuYFdUn8vPRoemsB7airTLRQNUE+E4YSPR4ITCvo/x7tbx4zTZ/XeXXJSRtSF
         /sJQyxSax235RjNFMbhxPUMPIeb+ZldOp0Lu5bNP677sB3CgyeBCF+eJczQ5j1o7V3q3
         oF8MKpB8LYjqq+KIYm15bo2EZmlVRH0ZC6BHX9+qAHyvRAomJx0XLRWiMOLw13Zce9Nj
         9keBsVg8ViHjmaVCPL/Oo0VZOyILd+wJ9ljchXiGm9IYbCWMDZDT6R52IlE8bzh/gCWE
         tU3XRRcRd6OYoWWhv4dpWFn1BuoVbfmmSbVKSje+LwSq6ljeW1MRZFxxlOGqsWTAriwn
         rEsw==
X-Gm-Message-State: AOAM533PSbd5j1hLmsXFKBkZlgA1nygagF/okKCs5yLkfQ6x1tRK+pQQ
        ABAEpB6nj5e1wbpnoK5PyiNeiA==
X-Google-Smtp-Source: ABdhPJzEp0I958fl8aU2s5ysmp7q3dJCsrRANv9uYbwx+lhxmDFQsXYBWlOk9dFvlfMygJHyCBbSHQ==
X-Received: by 2002:a05:6512:38a1:b0:475:9fee:b42d with SMTP id o1-20020a05651238a100b004759feeb42dmr40007lft.237.1652352348078;
        Thu, 12 May 2022 03:45:48 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q21-20020a2e9695000000b0024f3d1daeafsm831660lji.55.2022.05.12.03.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 03:45:47 -0700 (PDT)
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
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v8 02/10] PCI: dwc: Correct msi_irq condition in dw_pcie_free_msi()
Date:   Thu, 12 May 2022 13:45:37 +0300
Message-Id: <20220512104545.2204523-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220512104545.2204523-1-dmitry.baryshkov@linaro.org>
References: <20220512104545.2204523-1-dmitry.baryshkov@linaro.org>
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

The subdrivers pass -ESOMETHING if they do not want the core to touch
MSI IRQ. dw_pcie_host_init() also checks if (msi_irq > 0) rather than
just if (msi_irq). So let's make dw_pcie_free_msi() also check that
msi_irq is greater than zero.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 2fa86f32d964..43d1d6116007 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -257,7 +257,7 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
 
 static void dw_pcie_free_msi(struct pcie_port *pp)
 {
-	if (pp->msi_irq)
+	if (pp->msi_irq > 0)
 		irq_set_chained_handler_and_data(pp->msi_irq, NULL, NULL);
 
 	irq_domain_remove(pp->msi_domain);
-- 
2.35.1

