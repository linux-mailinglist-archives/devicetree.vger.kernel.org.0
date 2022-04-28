Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 394BB5132B3
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 13:42:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345579AbiD1Lo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 07:44:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345740AbiD1Los (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 07:44:48 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8E2D68F83
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 04:41:21 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id m23so6301088ljb.8
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 04:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ugzBs2Kot7nDRgqzctSCPbKbp3TBExEgizD4VqmQZYs=;
        b=ln9U2RzUr2gkG3zYOUihV0e/ghKf3PFgBmcERXIJaXDwx9knY3zZxb8Rwqr1RWT9Ef
         yHmjGmYqFs0sx0ayg/XTzj8Jtbfl6vhuAU7EisLkV5N9Zd5pAjgxzk9YNeY+v4I/w4iJ
         x69K6Gtu1/AkjfcVrbvf2CFTIun60EQkYi6M0UUrGITJRKOzuJyQJQZ1IbOpLfgfPfZ5
         X/ddBS7ianYibj4x2I+jfhgCq7VcPPcNC23tNpeEPmMMHhc5WskW40qO6qhDGYi9/4Ib
         aTZChKuwfEoU9c3Ur7aUsjTlQ4QXvTTiRmYo+ynCHpR92m/poXX/JaNY4Nb16ZIXFlqi
         aNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ugzBs2Kot7nDRgqzctSCPbKbp3TBExEgizD4VqmQZYs=;
        b=Mjg56vsJwzpZySYzoJynaRRezsMaQua5uWSqlAp/tcXJiXkldev6vXj2SV86UFp/HG
         fcEgIuOWCq+IqFoozM9EPM/Lv25BdR075FlhyojzRLhSanQpC1o2HEIyPKaBgcoMq3Qj
         NgIgkiecXDfjjdYX391uFr7ceZhrCq/5mbhwD53TlxCyon2Qxmoz1o+l2F5TVMXYnwAn
         5iG/6JkuPv5NrzujGMFvMGBg3U2EqpUBB7A/HWFQNiI68TroTGAO3Kvjh+JHS28L7nmg
         MQuBG4qvlT/COHPsxiJt5gQ6pXrrsZ9Hi+YUm+mjiPSOEzr0SIi4SODIcGZwJ04NRIT1
         1VEg==
X-Gm-Message-State: AOAM5308u505XZvEazMNIh3ZEyK9DBzsqmKx5URhUzn+Qu5L6kpMctPi
        i61spzNHjCqpxSYGSk8FLCXauQ==
X-Google-Smtp-Source: ABdhPJynt/4QRW7UqLtGYGxBmMvWDS0qpvitX4Ytm9SqhToqEgwPICbQEOnCD+8U8DnIFmYWt/bfOw==
X-Received: by 2002:a2e:1f09:0:b0:24d:d65:bd8a with SMTP id f9-20020a2e1f09000000b0024d0d65bd8amr21283735ljf.245.1651146079814;
        Thu, 28 Apr 2022 04:41:19 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bu39-20020a05651216a700b004484a8cf5f8sm2338790lfb.302.2022.04.28.04.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 04:41:19 -0700 (PDT)
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 6/8] arm: dts: qcom: stop using snps,dw-pcie falback
Date:   Thu, 28 Apr 2022 14:41:11 +0300
Message-Id: <20220428114113.3411536-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220428114113.3411536-1-dmitry.baryshkov@linaro.org>
References: <20220428114113.3411536-1-dmitry.baryshkov@linaro.org>
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

Qualcomm PCIe devices are not really compatible with the snps,dw-pcie.
Unlike the generic IP core, they have special requirements regarding
enabling clocks, toggling resets, using the PHY, etc.

This is not to mention that platform snps-dw-pcie driver expects to find
two IRQs declared, while Qualcomm platforms use just one.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index a1c8ae516d21..ec2f98671a8c 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1370,7 +1370,7 @@ gfx3d1: iommu@7d00000 {
 		};
 
 		pcie: pci@1b500000 {
-			compatible = "qcom,pcie-apq8064", "snps,dw-pcie";
+			compatible = "qcom,pcie-apq8064";
 			reg = <0x1b500000 0x1000>,
 			      <0x1b502000 0x80>,
 			      <0x1b600000 0x100>,
diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
index a9d0566a3190..1e814dbe135e 100644
--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -412,7 +412,7 @@ restart@4ab000 {
 		};
 
 		pcie0: pci@40000000 {
-			compatible = "qcom,pcie-ipq4019", "snps,dw-pcie";
+			compatible = "qcom,pcie-ipq4019";
 			reg =  <0x40000000 0xf1d
 				0x40000f20 0xa8
 				0x80000 0x2000
-- 
2.35.1

