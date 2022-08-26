Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D645A2E58
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 20:22:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344520AbiHZSTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 14:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344960AbiHZSTx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 14:19:53 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20BF13D72
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 11:19:50 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id x19so2252634plc.5
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 11:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=cXVSIoAXy4k6GvjO7JA/nhvOJMAK8QRnMR9+cTCkOGs=;
        b=ulocn9lyYlZ8Z5BhBREmqzLIII00bgmVYDTaYRlZErsDaRssP9hKz8LYXAAo7TWq42
         nhoB+tUB7ngQodY8Ghy1aPup1D9ovGcSt5F26rsCmu04/MSxJZi3ci9Ld8mULOQZ7vbx
         ep3qRU9DV3cxuUjP0cmx1hO4XG04vpLrYHhVAkuGzJ0HXDTO/BSJ3z9YQKEll9hCKtGz
         fztxI5da1vNbeSSVcpgEW7lFlYK9dGnqETzVpgmRlK/z5hmu/kHdE4uHwP5xqdIqWCz2
         EpPjWffgoMfPjDcJmZSBw9ifh8Ww2fypF1ZHdU270eD1lwACYXlFMZ+ip+GEMNje8wLb
         Ib5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=cXVSIoAXy4k6GvjO7JA/nhvOJMAK8QRnMR9+cTCkOGs=;
        b=WSrX/6MmEPZ696756nTOLWwlgIY9HN0zUGLClxS8ycsWUah7Am13+74HS77+IHJaIK
         GgZ85ZhXEhtbAV6zNMlDwVBtRA5AL0GJK3t4d4jr6yc4FBYgm66BciVs5AaYex5wbLI3
         gB/V333VkDQrzXC0Qmdp2EifWoYVXqkxF8MU+9O96uSdz7YQoz6bOpCnsthrZ0O75Tk0
         YZk5CTaX3FtC/4j7RXO3ULZuunwtKzwFXdXALQIuza285bEVuG+huHD2Z4789Sm/0dHL
         25ryn9f1+mnq87T0tSCuppVAr6vgYvvZZjlVgLG2hkYDeZE1u/1HLC2L/o+tAO9OiYTd
         5IDw==
X-Gm-Message-State: ACgBeo2YDm6MNWs01igB8mae25TC9wMRHl+tOKfRBJOTZNlDZ5+LRbeN
        70VPw/MoyWEMKq3P9UebT5uS
X-Google-Smtp-Source: AA6agR4kvI2bPAH4c/ATu9os3dN1ZhQKaQ22+2Uj6XB+Gd2aXrv3urLRGG4k8oVGBpstY2Ars9aQVg==
X-Received: by 2002:a17:903:110f:b0:171:3afa:e688 with SMTP id n15-20020a170903110f00b001713afae688mr4758637plh.162.1661537989972;
        Fri, 26 Aug 2022 11:19:49 -0700 (PDT)
Received: from localhost.localdomain ([117.193.214.147])
        by smtp.gmail.com with ESMTPSA id s5-20020a170902b18500b00173368e9dedsm1881868plr.252.2022.08.26.11.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 11:19:49 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 03/11] PCI: qcom-ep: Make use of the cached dev pointer
Date:   Fri, 26 Aug 2022 23:49:15 +0530
Message-Id: <20220826181923.251564-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826181923.251564-1-manivannan.sadhasivam@linaro.org>
References: <20220826181923.251564-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the qcom_pcie_ep_get_resources() function, dev pointer is already
cached in a local variable. So let's make use of it instead of getting
the dev pointer again from pdev struct.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 34c498d581de..1e09eca5b3b2 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -483,7 +483,7 @@ static int qcom_pcie_ep_get_resources(struct platform_device *pdev,
 
 	ret = qcom_pcie_ep_get_io_resources(pdev, pcie_ep);
 	if (ret) {
-		dev_err(&pdev->dev, "Failed to get io resources %d\n", ret);
+		dev_err(dev, "Failed to get io resources %d\n", ret);
 		return ret;
 	}
 
@@ -505,7 +505,7 @@ static int qcom_pcie_ep_get_resources(struct platform_device *pdev,
 	if (IS_ERR(pcie_ep->wake))
 		return PTR_ERR(pcie_ep->wake);
 
-	pcie_ep->phy = devm_phy_optional_get(&pdev->dev, "pciephy");
+	pcie_ep->phy = devm_phy_optional_get(dev, "pciephy");
 	if (IS_ERR(pcie_ep->phy))
 		ret = PTR_ERR(pcie_ep->phy);
 
-- 
2.25.1

