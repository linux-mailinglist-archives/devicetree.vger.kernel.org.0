Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 679E151171A
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 14:46:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233700AbiD0MUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 08:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbiD0MUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 08:20:13 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7756E8A322
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 05:17:01 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id m23so2351511ljb.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 05:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ga1FXFUoff60uV1gZjfSxxZrosbrRhkS2aF6jySEeu8=;
        b=IcljhcOdPTP29vZlW5X6ro/FUMEN8BihPCMjQ4DLD17n66EQMN3ngucpWlHM/1adsk
         zJOOSqbDVUtln5M8uXceQPT/9IJop7SWDuLHhQgHRXry6Mv52rZvxaj8FcDWjkkFOWIA
         OwKFt/UkKddYIlAxdNzXZisw3D8MTb4reAK7fdGijT+pOXIqp75xVLzK+XQh4+MMKxk8
         SYKMdHh5oDfToYb+vHFJ2QEjWT42q3fAQUUsolFPimdQ107oJfsCMuKz+wH2JBt/hz26
         8+83hfCjLp3+d2l4sGxgdll5iV4aTlCfffJXiwIdDdKVtcI9lSXFhxPaEN7n9duq9FkP
         MWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ga1FXFUoff60uV1gZjfSxxZrosbrRhkS2aF6jySEeu8=;
        b=AYEVBalllBPIfnFes4fHQK3beEJG/MyN7MMy387QAAz61DzzXoYeBuk9W5Azs0o6gF
         s3599DkIKie2OMXl7AMiW3eZcNSJZBBipCm44DHzENcvsk8+GTZJsSz7iqAAwZ/zN9Gq
         Hjy6meGz2OkEUw2uN8Vp8uhk400+gs04VBvrDIK8jT6OryC0s3qPgnqRGH64xyArhgJN
         X08U/ZOcRAKQj4oufhn/I4BSsGPk/TfjRA/EVExbwzNML+JRssztqCKXAcxJB/wLlqnJ
         Pi4EVzHK4nqb/cLqSJwyAIfa9Z99aBoMYTsuLeta4Xlz8KhR9XEe7EsbrYwdRkLy8pt6
         wZXQ==
X-Gm-Message-State: AOAM5323/s8aOOfSbwtoO17UQ/prE7mUJjtzYCunaTHslBeI7KFnf2Pi
        fVPVXfWANrC6ZLLoLk+1uT4pSg==
X-Google-Smtp-Source: ABdhPJzzpKoE3lHAYhI7agfuzEbxveMnjFO6GHr912Gvl7Gw/JzYOQtHj9siquDy56l3ZF0qn9fusA==
X-Received: by 2002:a2e:9e50:0:b0:24f:14e0:6a25 with SMTP id g16-20020a2e9e50000000b0024f14e06a25mr7994316ljk.121.1651061819670;
        Wed, 27 Apr 2022 05:16:59 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y1-20020a0565123f0100b0044584339e5dsm2043388lfa.190.2022.04.27.05.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 05:16:59 -0700 (PDT)
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
Subject: [PATCH v3 5/5] arm64: dts: qcom: sm8250: provide additional MSI interrupts
Date:   Wed, 27 Apr 2022 15:16:53 +0300
Message-Id: <20220427121653.3158569-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220427121653.3158569-1-dmitry.baryshkov@linaro.org>
References: <20220427121653.3158569-1-dmitry.baryshkov@linaro.org>
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

