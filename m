Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 405EB56A452
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 15:48:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235273AbiGGNsP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 09:48:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236062AbiGGNrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 09:47:41 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D31721FCD6
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 06:47:40 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id r9so22293834ljp.9
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 06:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=raEV4ASZ4LqZudeLorCYb5x3cLBRe57m8c3xXGSLQHU=;
        b=gaNRdNrkqGx7xJ+ecQ3qTuCBVtHgUxQrXLXxycNrizdMr2KqfBVPjvXLDKNUHfmf+D
         D9NsPWSwfCjCGnLF/v838uEvjRWLzlzqL3ajubXygiuCmCwuu19PUc8f9JNjMxhQCRqd
         bvlaFnnB1FdchOwRNtM46S8cXDfBiMjYrV3gg5K3sQJXU9QJ3kOOQo7SfnPW1xHFYe5E
         X7DWM432+thYZ+BuY+5sMo6sNN8X96TGWVj/crdJamU5O0Q3Km5BqmwSfbWnf0mZHWwQ
         9UGHX7GGLz8t9HEpsA63/+uOZPazVafF2nqQvpQSU4CmhX0D67AFzpI4P7GmqrsPRSXt
         YuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=raEV4ASZ4LqZudeLorCYb5x3cLBRe57m8c3xXGSLQHU=;
        b=QfFwtMpy7640JiL3zqtrXJ+PYB+JsOTU4GnTyCzP4iwry8SQZS68h5UCGypFGyLyl5
         dv14DwpFwOLd5BBWj3LeMWi3gR0wmxt/iXnXHGFZzlEQkeDIFAEkiilf3TN6WbM3IJyz
         cBZ2LIuqAp7ixtE0qhYULiagf4pvz/YGIJI4GP4L7CMwy9h0y7qkBcY+zQC1u7oFIJ+l
         7iSX+t/ctS+wFmOwUxCo32SDK7UzGY17SyheMNhFkgjuupVNnmGrR6sLDk7oVqaY21HS
         +5jA9FKzGTzXnK1FhwI63Mw5Ji6h3llHfd65kR2j4ej09zQfaabqBZBN+7by7Rh4ArBN
         sbzQ==
X-Gm-Message-State: AJIora/cb5l0Rpq93p4l2OgvS11xdbU8IZwSuVtv/2UtK4YTJ0Fw0fT2
        KaVeoF4/McMziy6pv3LUdt/msw==
X-Google-Smtp-Source: AGRyM1tUvxXn167WjtyiP2Sxppw5pYMdK13Uw6RjG/EjA9IrwD6h3A+29DYUJvU2rhMzcg9twp8PMg==
X-Received: by 2002:a2e:9c02:0:b0:25b:6355:f1ac with SMTP id s2-20020a2e9c02000000b0025b6355f1acmr26531198lji.376.1657201660391;
        Thu, 07 Jul 2022 06:47:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u22-20020a197916000000b0047fa941067fsm6856966lfc.29.2022.07.07.06.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 06:47:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
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
        Johan Hovold <johan@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v17 6/6] arm64: dts: qcom: sm8250: provide additional MSI interrupts
Date:   Thu,  7 Jul 2022 16:47:33 +0300
Message-Id: <20220707134733.2436629-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134733.2436629-1-dmitry.baryshkov@linaro.org>
References: <20220707134733.2436629-1-dmitry.baryshkov@linaro.org>
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

On SM8250 each group of MSI interrupts is mapped to the separate host
interrupt. Describe each of interrupts in the device tree for PCIe0
host.

Tested on Qualcomm RB5 platform with first group of MSI interrupts being
used by the PME and attached ath11k WiFi chip using second group of MSI
interrupts.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 43c2d04b226f..3d7bfcb80ea0 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1810,8 +1810,16 @@ pcie0: pci@1c00000 {
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
+			interrupt-names = "msi0", "msi1", "msi2", "msi3",
+					  "msi4", "msi5", "msi6", "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-- 
2.35.1

