Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9877E524AAE
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 12:46:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352806AbiELKqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 06:46:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352798AbiELKp7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 06:45:59 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82286BC3A
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:45:51 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id v4so5938678ljd.10
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Jeln1nOqXOPHjmOSrY41I26DIC8s/tVd6G1obr/WMTM=;
        b=oXPq4+GNjNB1uGrrgmDb8ExERwC3HCRw6gLj9YHXPzORViziKlblYKiZ6kcnUxvPyM
         OGWq4pksrBbo3Y7Q8Gxrd+PxnKpHOcOHKuzfwaiSbi7ueBcsCBx/6+xWUEC6lflWdQfV
         tL0x7DPCGcRjBCaQ9Q4jEWKW2wJHrxx90diFhfQLjEnvs4Jt2r6fhoZrd/0aUaR+ZTnf
         ugM1HB3PbLAsiqe8nyQg/uMgtybsexYLMYlC6Ts41bSzwysfscjYg+ACO9BNQqyskAl+
         QiqHphLd0Xo8Fnitt71NQf/xW7JSxVccI0gPzLBH4FFY05XWdjfrwo03cE24UFxkvEb7
         OWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Jeln1nOqXOPHjmOSrY41I26DIC8s/tVd6G1obr/WMTM=;
        b=UggBCJeHf/EPGGRmxiXjqqn5d9xNcjJMiMDf+vWqCAaTh9qH82Xs+tGm7p9ScepCOn
         7qyNG3/OePOqCsAHXCE2q5RjkPY629ogPGr/Kl4VO2XDGPo29ZgQAYHcN7YU1ehRMxb7
         J8clnjXUda+JD1kpQcYSK5aTmcn/9WpNK1sC6z98M9VWxS82ITwQEA/vu9xXC6XCe6Gf
         zHnTSkj732DgAOCceLMg4Vf88mS7/ghCgASr5GnlZy/2H5hbQsaHrZYvO8+Fuf7TjqvM
         SrpssQyV45bFeyOdabLbmDtXOP1WXW8utbk5LD+95bILmbsmQvYGYw2lRMWwgA/3Msrz
         glhg==
X-Gm-Message-State: AOAM533HAGAMNO9fXr9Eu21GgqVucuS0TcTb3lkqk72EkJPVVK2ELBxo
        AWPj2MvHQtSsQza2me74u85QTQ==
X-Google-Smtp-Source: ABdhPJxXikjeVPboDIIBrn72WCq9cJP6c6BxGGTXTbutQZEfAimtfF+sRk4/rsaLV++VYGP+QyHWwA==
X-Received: by 2002:a2e:2f18:0:b0:24f:3a5f:1205 with SMTP id v24-20020a2e2f18000000b0024f3a5f1205mr20847804ljv.485.1652352349624;
        Thu, 12 May 2022 03:45:49 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q21-20020a2e9695000000b0024f3d1daeafsm831660lji.55.2022.05.12.03.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 03:45:49 -0700 (PDT)
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
Subject: [PATCH v8 04/10] PCI: dwc: Propagate error from dma_mapping_error()
Date:   Thu, 12 May 2022 13:45:39 +0300
Message-Id: <20220512104545.2204523-5-dmitry.baryshkov@linaro.org>
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

If dma mapping fails, dma_mapping_error() will return an error.
Propagate it to the dw_pcie_host_init() return value rather than
incorrectly returning 0 in this case.

Fixes: 07940c369a6b ("PCI: dwc: Fix MSI page leakage in suspend/resume")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 0d4f35c7560e..5f6590929319 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -402,8 +402,9 @@ int dw_pcie_host_init(struct pcie_port *pp)
 						      sizeof(pp->msi_msg),
 						      DMA_FROM_DEVICE,
 						      DMA_ATTR_SKIP_CPU_SYNC);
-			if (dma_mapping_error(pci->dev, pp->msi_data)) {
-				dev_err(pci->dev, "Failed to map MSI data\n");
+			ret = dma_mapping_error(pci->dev, pp->msi_data);
+			if (ret) {
+				dev_err(pci->dev, "Failed to map MSI data: %d\n", ret);
 				pp->msi_data = 0;
 				goto err_free_msi;
 			}
-- 
2.35.1

