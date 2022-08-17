Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35A97596EFF
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 15:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239612AbiHQNEj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 09:04:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238926AbiHQNEJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 09:04:09 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F04326F7
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:03:56 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id i19so618319lfr.10
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=7xLpyvjcjxtFjBdq2TnMTpFX2axCPt8X9rBvt8vK73g=;
        b=PjUVTMLZrPosGW6XmepHlPO6eBG33wbigvyDIhLQxGCe0t0HNYb7qqhQRzDUb6WSUd
         8Ix9XRC/u8xSK0VB2AfHrZNUZHgAdte+McfWQyJ+xGlUDAbzhIJqfxQgAOoDufNrsvGG
         lo3x89xgK1BBxmfSYHfrCNe/byq3/pfDGz3MH5mG2jHsd/zD6vMbeg6ljVZnzE23unAa
         67DtmM3ZT+/PA7L/5Y5fXlcsT9JWh28VvfIwpSGdJm1/iUlX+mW0PidIsjXTl1pZV7Ys
         vLNq56vARazX3rlDUN3+hf4VqRjQV2kFkRKG09tIQrjmB4ag9j/J9rj/E6M03fUzbvee
         K0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=7xLpyvjcjxtFjBdq2TnMTpFX2axCPt8X9rBvt8vK73g=;
        b=SEtPTKILFT6nZA5HjxSAqt9i12P/4O5CZGFhcWMUWLsteC7rEHIF2ot+CfhkbnVs7s
         m21v8c7l7udBtCxPKpY2rfvHjTWAwXvXT0eCtH0a0DzM4dVnZY0PNV5TWKs9/Bf4wU5R
         XBvmw+LFnM665aRFIXtHBBVj1cnyT+oC4V02uO4neLPi6HurNuNcF0r/hoY9VAeiF4CT
         WY20WLXlFOeWa0bJrbX5+5iHveeJPSpglH5ytEn0A84qpcVk9S7CDVPFjcaLlzrHC9fa
         1AduaSQNghbt2caM3X6QtzI1M8SFWnyj0N/PGeVpL+ReEm+c5ZuCIIreqMy02x5gsGhw
         fJVg==
X-Gm-Message-State: ACgBeo1iP+cFK/6RQcL8IoKm9AzxKO9s/So6ephOxffuavMX8zS4N9a8
        VOQWN43lEgV/elWKYm0bZW/bjQ==
X-Google-Smtp-Source: AA6agR7Zzblj4Xlxub0k83AuZvMCqpVVbNxPphlAI3oTNPmKajhVKPj/RJ1GaeWLs5yQwv1ptA1tfA==
X-Received: by 2002:a05:6512:1392:b0:48d:a6b7:caff with SMTP id p18-20020a056512139200b0048da6b7caffmr9229978lfa.154.1660741433664;
        Wed, 17 Aug 2022 06:03:53 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id v1-20020ac25601000000b0048b3768d2ecsm1683243lfd.174.2022.08.17.06.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 06:03:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v2 02/14] arm64: dts: qcom: msm8996: split TCSR halt regs out of mutex
Date:   Wed, 17 Aug 2022 16:03:30 +0300
Message-Id: <20220817130342.568396-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817130342.568396-1-krzysztof.kozlowski@linaro.org>
References: <20220817130342.568396-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TCSR halt regs are next to TCSR mutex, so before converting the TCSR
mutex into device with address space, we need to split the halt regs to
its own syscon device.  This also describes more accurately the devices
and their IO address space.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 742eac4ce9b3..3411ced96db6 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -359,7 +359,7 @@ opp-2150400000 {
 	firmware {
 		scm {
 			compatible = "qcom,scm-msm8996", "qcom,scm";
-			qcom,dload-mode = <&tcsr 0x13000>;
+			qcom,dload-mode = <&tcsr_2 0x13000>;
 		};
 	};
 
@@ -840,10 +840,15 @@ pnoc: interconnect@5c0000 {
 
 		tcsr_mutex_regs: syscon@740000 {
 			compatible = "syscon";
-			reg = <0x00740000 0x40000>;
+			reg = <0x00740000 0x20000>;
 		};
 
-		tcsr: syscon@7a0000 {
+		tcsr_1: sycon@760000 {
+			compatible = "qcom,tcsr-msm8996", "syscon";
+			reg = <0x00760000 0x20000>;
+		};
+
+		tcsr_2: syscon@7a0000 {
 			compatible = "qcom,tcsr-msm8996", "syscon";
 			reg = <0x007a0000 0x18000>;
 		};
@@ -2413,7 +2418,7 @@ mss_pil: remoteproc@2080000 {
 			qcom,smem-states = <&mpss_smp2p_out 0>;
 			qcom,smem-state-names = "stop";
 
-			qcom,halt-regs = <&tcsr_mutex_regs 0x23000 0x25000 0x24000>;
+			qcom,halt-regs = <&tcsr_1 0x3000 0x5000 0x4000>;
 
 			status = "disabled";
 
-- 
2.34.1

