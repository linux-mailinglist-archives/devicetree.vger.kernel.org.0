Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6DF3513341
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 14:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345841AbiD1MC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 08:02:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345977AbiD1MC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 08:02:57 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B429C890A1
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 04:59:42 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id bq30so8203878lfb.3
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ga1FXFUoff60uV1gZjfSxxZrosbrRhkS2aF6jySEeu8=;
        b=qHRlOaZrKYy+h2j4/xpMrJ8Jpya5vzFKtP1USakpGDqSEgWC8npgtUSATvrfOoxehH
         3bOL8BdWR37B0G+dpMH4JCszCMNudQQ1IkfQbjXm4zfEW42f45ZHpr9iJTaoEDCWEs2X
         mi9bo+bp3dyS3C9HjDnFz4sO0D3mYtmJM3aJrZl2N1iToGmBMORpMA0Upovb2hAmIZCb
         7KgxSfmFsRPg0+pu0lcb/1guN5uG9CVqHeC+3ow04eTcEBipEtJFlniJLLNUl3U95U9a
         eXIk3NZRQHBJz/4Xzndc3GyduSPTn3MPUVNSUWsPQ9dc+DIYID0WaCvbKR+8LYw1K3qq
         ++aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ga1FXFUoff60uV1gZjfSxxZrosbrRhkS2aF6jySEeu8=;
        b=iSE93Yhsd3Ne+KcmjFEq40vwvS7GqxKIMUe7spIVelsa/WLiK/MHztWyRizbVsdX8S
         1RSHSKPKr4y9rAAbMpzkKHTesOOI5qP5LlCpBdDAwsZ0E0sy5LmanSlLHMhEYQNzM+xY
         HtxWEBiPksLEbhfM6m80edTSnuEcgjmHKN27X3U14vYW4izR7vkPSI2CvfE41mWwF972
         6NX3hBKzw7an4KdbsUlL7qYqN5uFVeuY+/J+RR9d00xNli2XYvJU+oaN1dq0tiSqJpH+
         IHDD85J9uc7t33fGklCgt7kpD9SUDEUtMwXKHrgflSyS1LoIb/o2SOf/n4Xw+zlJQLE5
         syqA==
X-Gm-Message-State: AOAM532FlmEgffL8nE5o6M3MeyATWjx1j/1K5bhI7Q4FG/VwOwYuOZjZ
        s/tNWgGy97TelXYZOUvxpQplJw==
X-Google-Smtp-Source: ABdhPJwGVIR/60HEZ4oXF7Iw5Vsm6k3walKG/awaV+8la2yAUyqU/7qbz2OJkTKWl7EtlvON69JzRw==
X-Received: by 2002:a05:6512:3d06:b0:472:3a24:7e78 with SMTP id d6-20020a0565123d0600b004723a247e78mr1968510lfv.468.1651147181067;
        Thu, 28 Apr 2022 04:59:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f1-20020a2e1f01000000b0024602522b5dsm2069137ljf.120.2022.04.28.04.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 04:59:40 -0700 (PDT)
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
Subject: [PATCH v4 7/7] arm64: dts: qcom: sm8250: provide additional MSI interrupts
Date:   Thu, 28 Apr 2022 14:59:34 +0300
Message-Id: <20220428115934.3414641-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220428115934.3414641-1-dmitry.baryshkov@linaro.org>
References: <20220428115934.3414641-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SM8250 each group of MSI interrupts is mapped to the separate host
interrupt. Describe each of interrupts in the device tree for PCIe0
host.

Tested on Qualcomm RB5 platform with first group of MSI interrupts being
used by the PME and attached ath11k WiFi chip using second group of MSI
interrupts.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 410272a1e19b..0659ac45c651 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1807,8 +1807,15 @@ pcie0: pci@1c00000 {
 			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi", "msi2", "msi3", "msi4", "msi5", "msi6", "msi7", "msi8";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-- 
2.35.1

