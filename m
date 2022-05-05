Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24E7351C199
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 15:57:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380187AbiEEN6B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 09:58:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380204AbiEEN54 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 09:57:56 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D9FE5839A
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 06:54:15 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id b18so7606300lfv.9
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ga1FXFUoff60uV1gZjfSxxZrosbrRhkS2aF6jySEeu8=;
        b=HqtBxH5cgnwk2AXkHYpVdor7Rm42tGQblkJFAZxuyl8hQ30ETSRxqdIqIzIatbxkOs
         2R+9DFiKi51SWqIWuhl12AHDKroYO11I3DG9TBBbMIPNGcEVxJskeE/0j1Hadqz/tKto
         KzkHbao4eAPSqskuCoMVQJbRhAV1J4YmaCEHmEv571hKSjWAbUl0QYqIsqcnhKQisZtV
         vzHGJ8u7YjTPo/dF/FmJN55OJTY2oodK0raaIU8IH4NxGWIsUB7U4Y63RsD/RmGPxm0x
         34e3l+g1GgjFTUivgQVoIvtMND5QIMZGZVSyN8N2uKJ9ejtkQG5HbyJngICed8L47SvF
         4fGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ga1FXFUoff60uV1gZjfSxxZrosbrRhkS2aF6jySEeu8=;
        b=Mr2pTK8MD7w6yo32a3ebi8ELjyMZaWlJmcTqPAbaBP8uxA2t+84yzMbbihkAniK9Bu
         X/1R6bOAzwv401CVY6h/UZDgOLQUB14qK+lZjX0Nq/Yn+I/onc75THVHblZx3sWgz52z
         1cmlA8tWuYa5X/PpeOjsYwX9NETXQuNFBYVC9F4gAq4co6pxT5WZApMUbPPkGXshObnw
         //jSisGpbGSuu4TCdLnhF0BcbJBNrIa4BNm0DCOkmRvVdwms/0Yyrb74p5YzngqGJWuj
         OVcYqfFGgPUboXNQzxP21q+3G8RVb/NuAZCfseR82qqtbYWiuz/ioE5um2P8gVrl4GV3
         N7fA==
X-Gm-Message-State: AOAM5308y4MmXiRC8yTh7i3mqk73j41EhRyaUOCAIqIliUGU07snRgl5
        peK8MmRpxdpVMwAmg8DCQHoDow==
X-Google-Smtp-Source: ABdhPJxSGX1JSHzeX+qRrsxkEbH/xHwodlR7dA1YqAjB/aWgGqnRvW4paLGu592eXFspLvlIgJjbXw==
X-Received: by 2002:a05:6512:507:b0:471:eccf:2370 with SMTP id o7-20020a056512050700b00471eccf2370mr18044883lfb.368.1651758853390;
        Thu, 05 May 2022 06:54:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z24-20020ac25df8000000b0047255d211ccsm221788lfq.251.2022.05.05.06.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 06:54:13 -0700 (PDT)
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
Subject: [PATCH v7 7/7] arm64: dts: qcom: sm8250: provide additional MSI interrupts
Date:   Thu,  5 May 2022 16:54:07 +0300
Message-Id: <20220505135407.1352382-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220505135407.1352382-1-dmitry.baryshkov@linaro.org>
References: <20220505135407.1352382-1-dmitry.baryshkov@linaro.org>
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

