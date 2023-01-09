Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBC98661E46
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 06:14:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234286AbjAIFOR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 00:14:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234729AbjAIFOK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 00:14:10 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87C1CBE34
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 21:14:08 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bf43so11280644lfb.6
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 21:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAxq034OgfxUipqwETVV7Sy0Fik2MnAZjCzMBugBu3E=;
        b=T7/poY1QhmqKPzd579h/kBbIg8nygrFOA2fwHI9uE6uGTqG8GNXhLbWpDneJiA8+rO
         FQhO9YfHfKJHXrHoKrzDHxe7oYUsNc0+9aW9U/Htj8y8iXhsGuQbuXe2TrlS5B92oG4B
         DnKoiOXRj0kf/cPKuJiGgWCq20awiQ4V5jQqXykiuQF7MRaRyrHP4HHwQ9FOSR8sALSG
         vfZ/rPfWVl6BEMVRFJV3XMqWC28iorcJbdQafAUsQFLgpb/5DlogkckekktwdELKHsGV
         ORIDSmML5mXMzOGRRGwRBNCo/4JSnoBaU4TYiszkd8bWVeQKP1dP1rHpOeiBVmfEqg/L
         AXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EAxq034OgfxUipqwETVV7Sy0Fik2MnAZjCzMBugBu3E=;
        b=CwBYlvB32UvcK5hINO0StI17JVVkYHVLam8S4OIekSzzbiwUH3j6qn3KrFby4Nfmd5
         TJEGj/ghjjsqRzrxo6VVhgyLIBhVbAuSpBZFcDAN2222FQIYk/Vgjlu5IvRC1I7KpN+N
         nEgvfWE0TmYZiX81UDVjOGVV2/694kGWSR19AzE+Tjbz1EQvrLgAe24LZX8McyXJHrM7
         RLfwhZw6Oq9JFq49KHqD6ae5OC+uDzogUE3svWCQsyDV4SdcoGe4BEuEJkU0JZtQR5j2
         D184wGENosfY91Q5x78Zs8yrjP4gxPGC8KkiuQtd35QYEYgsPBcyNw4IvMfZtR/dxuyO
         NNwg==
X-Gm-Message-State: AFqh2kqUL+DOenKGTRYVCa8K+b9W78S698G3bBus8AjXK5BsnIGf5RQK
        ZSbQ1d8l+7NHi/nWKR2O8K5tyQ==
X-Google-Smtp-Source: AMrXdXuXaajJKnDAKPif1tDGE/K2iX1nu1h/lH1gLquiBgvEfngbCyQ4iV34+hlDjzoO4NLB66QzvQ==
X-Received: by 2002:ac2:50d9:0:b0:4cb:2c19:ec21 with SMTP id h25-20020ac250d9000000b004cb2c19ec21mr8552578lfm.0.1673241246933;
        Sun, 08 Jan 2023 21:14:06 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w4-20020a19c504000000b004b5812207dbsm1426880lfe.201.2023.01.08.21.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 21:14:06 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 6/6] ARM: dts: qcom: rename mdp nodes to display-controller
Date:   Mon,  9 Jan 2023 07:14:02 +0200
Message-Id: <20230109051402.317577-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
References: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
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

Follow the schema change and rename mdp nodes to generic name
'display-controller'.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 363e75078a0a..5fdd78477666 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1492,7 +1492,7 @@ hdmi_phy: phy@4a00400 {
 			status = "disabled";
 		};
 
-		mdp: mdp@5100000 {
+		mdp: display-controller@5100000 {
 			compatible = "qcom,mdp4";
 			reg = <0x05100000 0xf0000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index bb69247d7ebd..96b78bd85f35 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1548,7 +1548,7 @@ mdss: display-subsystem@fd900000 {
 			#size-cells = <1>;
 			ranges;
 
-			mdp: mdp@fd900000 {
+			mdp: display-controller@fd900000 {
 				compatible = "qcom,msm8974-mdp5", "qcom,mdp5";
 				reg = <0xfd900100 0x22000>;
 				reg-names = "mdp_phys";
-- 
2.39.0

