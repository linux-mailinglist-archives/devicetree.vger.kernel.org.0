Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 117ED5B825A
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 09:54:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230216AbiINHya (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 03:54:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230202AbiINHyV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 03:54:21 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9FCA72FE5
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:54:19 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id jm11so14283375plb.13
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 00:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=cXVSIoAXy4k6GvjO7JA/nhvOJMAK8QRnMR9+cTCkOGs=;
        b=qez3AqbemKhd2KHJlD1Y8nPiFRA2B4wpF2ojCVOvYEpgfYVqNisNl6VaQqbg1qFVKv
         3qysIrPolQaIUaSd8GhD4gt+oVRuahoSSICPiIAukmbJnsfXdtSaEqpnK1mLBRKyyJWx
         RGsJT5EebaZI1/7zaA2ZiAtBfe9ZGR8fTfsJbT1R7L/gnPzoQ9eIQCKSwWdmTlRmrZ23
         hXVZ7njIpcPNg9Z2InNNa/OzsF/xeDhAio+c5fFTgV0tmqXaJGFjmPGLtmxPmp8G9WEd
         q66Ki1HYnnx1wW7o9hPrk8Rl4GIcCoekQUk4koJS7wWk1za3rtMFRmfqciCSlkQYDokA
         K5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=cXVSIoAXy4k6GvjO7JA/nhvOJMAK8QRnMR9+cTCkOGs=;
        b=FZyk+8nL56ZJECEStzahXO1za6j6j0UE8Vr9PAYvYNQGDBeTRz5uszp4z+GChrcmKS
         OZYEFPLniPzj9uLbKO70K1XQ9S++EP6Hz/bc9S48ZH/uue8jdpj3+qnFZk+v+NIoER1J
         2/1s2zjrGz70NkasZmPxpq0HIWW+EUkjNlBUCBrTwWr0Diw2xkCW6sTzhN7QTXqovR4F
         JV4+2G8Bey7ihCFhsoc+msAERfIEYERnUlYEnyNIZycw3bOSGo8gbvlchlU8x58Ow+qY
         j1c6a5qI0Z2BOxyeEqNJv4OTMVReO1az8rYCS6cBRWs0frieMwhklDGXFDE2k0mGjVFS
         leAQ==
X-Gm-Message-State: ACgBeo0pQrrIcn0tqYYtVPPvr/Sk/r3RoOYONCUb/+dbQx+UalJibUDQ
        A0lq89Iv8TTM1lwo4I7oftR8
X-Google-Smtp-Source: AA6agR4d+gm8VSzIVcCgMlF5CW7W94zSpFyFAlU9mNy7XgcL0NZIqXmaGst93x7L6Z/ZqsI3b4OthA==
X-Received: by 2002:a17:902:bd05:b0:172:ae77:1eea with SMTP id p5-20020a170902bd0500b00172ae771eeamr35061464pls.158.1663142058990;
        Wed, 14 Sep 2022 00:54:18 -0700 (PDT)
Received: from localhost.localdomain ([117.202.184.122])
        by smtp.gmail.com with ESMTPSA id p8-20020a1709027ec800b00174ea015ee2sm10119054plb.38.2022.09.14.00.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 00:54:18 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 03/12] PCI: qcom-ep: Make use of the cached dev pointer
Date:   Wed, 14 Sep 2022 13:23:41 +0530
Message-Id: <20220914075350.7992-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220914075350.7992-1-manivannan.sadhasivam@linaro.org>
References: <20220914075350.7992-1-manivannan.sadhasivam@linaro.org>
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

