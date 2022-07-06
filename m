Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7F8568BE3
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:54:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbiGFOyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232239AbiGFOyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:54:22 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5ED0A1B0
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:54:20 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id q8so6323758ljj.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KyP/+CnKo7XlbW/ZLGTbHWMhXgwp7nHqzAf1ssmzjF4=;
        b=uIFpz1MjsAZzvJw/ZbkwvC2PccnSAXEOsOMZWnHx5NN+TyJxQGM2V9E2/0S64xHKHD
         gMAVn3qsbbvdSvwWBFwiE/C3Lp9IOZmqLWMKUr+DciosZ2eHhbfaKfmZw5ZjqkaNrnes
         JHNcI+/ceDa0CMntQ0V4NMjgEi2fHCp4XS1tgqBbNk8s9EAFKFxx3IUyQbxBY4Ur8V8p
         oVzqAbtw4I/cUQMfdVc0nyAOj3q3uqBSmdV7fAJu2vyMUZs3NoQrAmoREhBAz3iZWYRT
         7P1oXMFnE0kio+U1b0HsLLmTURI9AYlE1etb6HaCYkCWwvpBc2xrVSBlTNkWI+R1kuTG
         QJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KyP/+CnKo7XlbW/ZLGTbHWMhXgwp7nHqzAf1ssmzjF4=;
        b=Rv9zitIhaIBUSTFv8RSSVHAf3KULUQ7ssLSrIp9tP2tcXvwGJQqYxtuUDP+cKBtlFY
         45q4zC9NX1IkIUSx22eytIW/cEJTlylIrMcBUvlXdaspMn9X9oyOiKv/1/B/r0GW6Icr
         /V/TZzqOuQYWzfgtyHU3rcDJF+oMjUhmMF03H8hNkz/luqkMzRYEQE+ovyxKuyCU98M2
         Osr5zH9pxQxKyfqP5y4W6LrGA4c68NfBpkDVqQlWfn/uXhqR8U4gsfSF1IAMziYfEuex
         1tZaaXHNYRpQU2V7OQgB0bl0AtQip53XavwiCxuKRfusTABRVwk5LzMC+R6cqW/2Zj15
         dYAA==
X-Gm-Message-State: AJIora88HqhMMcl3kKLAYto8nJkC4GX72RZI5I40hXs5pIKzBDpR4+zF
        x2Xb30O3nO+YwQQjNl8SLeqrlw==
X-Google-Smtp-Source: AGRyM1tg8wSdK9n10CalAsbVEioMWH0wSvN+CANcz9eRbLUkTQpr3wk40iG4GW/cy2cJImim882m+Q==
X-Received: by 2002:a2e:a4d5:0:b0:25a:7813:4ea2 with SMTP id p21-20020a2ea4d5000000b0025a78134ea2mr22688141ljm.417.1657119259123;
        Wed, 06 Jul 2022 07:54:19 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i28-20020a056512007c00b0048650aee2b2sm359374lfo.144.2022.07.06.07.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:54:18 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 5/6] arm: dts: qcom: apq8064: disable DSI and DSI PHY by default
Date:   Wed,  6 Jul 2022 17:54:11 +0300
Message-Id: <20220706145412.1566011-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
References: <20220706145412.1566011-1-dmitry.baryshkov@linaro.org>
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

Disable DSI and DSI PHY devices by default. The only actual user,
Nexus 7, already contains `status = "okay"` property in the respective
devices nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 4b264cf7eccc..34c5843de278 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1271,6 +1271,8 @@ dsi0: dsi@4700000 {
 			syscon-sfpb = <&mmss_sfpb>;
 			phys = <&dsi0_phy>;
 			phy-names = "dsi";
+			status = "disabled";
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -1302,6 +1304,7 @@ dsi0_phy: dsi-phy@4700200 {
 			clock-names = "iface", "ref";
 			clocks = <&mmcc DSI_M_AHB_CLK>,
 				 <&pxo_board>;
+			status = "disabled";
 		};
 
 
-- 
2.35.1

