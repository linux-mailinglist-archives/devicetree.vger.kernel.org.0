Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E73F531846
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 22:53:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241976AbiEWSm0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 14:42:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242970AbiEWSjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 14:39:05 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E426E178549
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 11:19:10 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id j10so3525951lfe.12
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 11:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NdSvHfXJPo04rlWXmRuhXyu21lDLotG2rBlKXKJ11GQ=;
        b=qeCNovYih/VVGim+q5i5d+UjqPof3iI+nAxjnH1cMtF+Lo8+i80KZ5p7qHr+El7X79
         V2LCW+/tJ4YDis3I0zfGdvN6sduaWnfauspfNSS1lFacl7ucZsCVIDHqEeYEv2U8qKGw
         LyttkLtO/BMxjmdsAeoi9CPrpLvJ8Hw3PG476i4CukYrgDp+8UNYx/EgFNExiPBWVEaY
         pyA7u+Tkpaw2CLxXUF3oshpAkRN6tysKYqiqKqrmNZFIMnXtNaPIvvhq3dR5Nra00ZSC
         Glg2zzWI+9qE6TYB4cTtMrZJExIalm4WiI5D1EeyBwsD3HXxqGPzwMi6OqnVee1zWLe7
         VJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NdSvHfXJPo04rlWXmRuhXyu21lDLotG2rBlKXKJ11GQ=;
        b=hRhNcKqNM84bxW1JQ8rZ+LZ+ueEWejlmVXD7eQ315jFkqS/uSLgPrFZnguT36+zrKI
         H7CDcnMmp8eynbimFkJdOZmdiFdHlm1AI93htOmcWwWF6dHApNm0EBcN/vSpQto86Ral
         3PYOu121okCRNkX4kei3wZsyrAtr+y9eJEfeVwZ5aQkxtnoFwtTcT5znRLMzjMIpNmLb
         W3i/99xzUPJ/zmH4NySj/+199ralQYPmBSalYVC05Ixn33V3IAV6MfLsmMUvP0enxNH6
         NnQQTLxGQ6bePhzPokdVKgZh/F78cwJX5I9RAEyusJlOCkP5FL0GJPA448Dxu91X1Cmm
         deRg==
X-Gm-Message-State: AOAM531jXwdi4YWG2rkCaL3QFkTemzjRfZEAErUYcNQoaxf/ZBWmsf5H
        opsGj+kxEqF0MohMa/QXaZ38og==
X-Google-Smtp-Source: ABdhPJw8h8KsXgdxZynDVUcVob5YF/tetdJ+i5ncpqQIL4YJJdNGJJAIQHWZdmwVpSCXOjsPzpz9Og==
X-Received: by 2002:a05:6512:38a1:b0:475:9fee:b42d with SMTP id o1-20020a05651238a100b004759feeb42dmr16487396lft.237.1653329925860;
        Mon, 23 May 2022 11:18:45 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j20-20020a2e6e14000000b0024f3d1daedesm1904127ljc.102.2022.05.23.11.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 11:18:45 -0700 (PDT)
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
        Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v12 8/8] arm64: dts: qcom: sm8250: provide additional MSI interrupts
Date:   Mon, 23 May 2022 21:18:36 +0300
Message-Id: <20220523181836.2019180-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523181836.2019180-1-dmitry.baryshkov@linaro.org>
References: <20220523181836.2019180-1-dmitry.baryshkov@linaro.org>
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
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 410272a1e19b..523a035ffc5f 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1807,8 +1807,16 @@ pcie0: pci@1c00000 {
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

