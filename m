Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1438F542DC8
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:31:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236786AbiFHKaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:30:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238194AbiFHK35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:29:57 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86B0AA3C32
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:22:13 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id u26so31774659lfd.8
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 03:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JPW5UrM16VIb0V7/sU8bftbljN5lwsuQwzROP9bFs3c=;
        b=WwR9ZBulDvF+VzUXyjppAsv7PC22ucgd6TMWxnl6ilFGusLm+jcBOi/++JDfNsXyWt
         gLDmO+Hyj+lCM6MXA/YQTr/ewf84Wt4TqA9JDcQT5g6kYfjHWKR5rXeT1H3lUpRFKdkM
         ThIQui1BPduLWKjrX+8agPCVKtIlA7KFOSpE8CzGL1gkfRT+LaDhDMzebB6DoOZ7E4NA
         0eNvsMPqW1aPB1TXsTvtx0ErwYqUxjeIWN4Qh6oWaBVaB8BEU6PYFAsp9MdD9xXPfToK
         q8+W8+vIK6SJRDTg51FcKTFRSULwsvFXdxBeh6y1ythTSpMwrONFcSbYRLbj6riT0+EI
         CwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JPW5UrM16VIb0V7/sU8bftbljN5lwsuQwzROP9bFs3c=;
        b=Q3sE95PPzyG7hpL5Th8PrDnGBsV5P4N/lkM99BVpxnBjtI/oA/iaCuIPy2l3mD2EwI
         ViEklCfjXiW88HnIdzKNLmflrZOY+IufBFs+T6kfkXSnlQWNY08rSHZkb9cuhClLyqST
         YE1ZdikJ8S0IsK0DCWqOuf+AHC3PyQI+5QhnvSnwLfr+yY1z8MoAdYXv/Fx94JOvNga9
         m7ygvTZYxANjjbSFH0w/0TLjJVC1C7S5GWqPFRRzh3uu7qkkm1fILbNSjBbmdSbuNaqp
         ELAidP2pU5pzogJlg6C50aRR4GZZdpvRvsOzGxLruzbjaIxuD/mbbRyx76oufJElSLRM
         4G0w==
X-Gm-Message-State: AOAM531CgvO/a9pL5GiXWSrtWvogcTeFOfbn6lhKBMU/Z5UjSkvEMLY9
        2a9FVpaVQCeC+3w9XYyDFVmqcg==
X-Google-Smtp-Source: ABdhPJwbkYmZfTV4CYj1/ovm9TEu6RD3OSam5XSvUY2TsC3JKBp7hCKz+V63+800AMNjAKutM3YZPQ==
X-Received: by 2002:a05:6512:2286:b0:479:7a60:5e42 with SMTP id f6-20020a056512228600b004797a605e42mr1568944lfu.625.1654683731603;
        Wed, 08 Jun 2022 03:22:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v1-20020ac25601000000b00478fe3327aasm3642934lfd.217.2022.06.08.03.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 03:22:11 -0700 (PDT)
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
Subject: [PATCH v14 1/7] PCI: dwc: Correct msi_irq condition in dw_pcie_free_msi()
Date:   Wed,  8 Jun 2022 13:22:02 +0300
Message-Id: <20220608102208.2967438-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608102208.2967438-1-dmitry.baryshkov@linaro.org>
References: <20220608102208.2967438-1-dmitry.baryshkov@linaro.org>
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

The subdrivers pass -ESOMETHING if they do not want the core to touch
MSI IRQ. dw_pcie_host_init() also checks if (msi_irq > 0) rather than
just if (msi_irq). So let's make dw_pcie_free_msi() also check that
msi_irq is greater than zero.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 9979302532b7..af91fe69f542 100644
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

