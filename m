Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D32E636F5B
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 01:49:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbiKXAtS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 19:49:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229763AbiKXAs7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 19:48:59 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BF07FF42C
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:20 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso169824wms.4
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dzy/pv8LpfaZCGMyLs3UqXEZ7XhwmH1hafdtceOiRFg=;
        b=nNNNpAopz04epdPTLI7bA8NLeMA+bEcIIo8WK68m7TDI8HnfxQb8+yDsfu5TNqJfof
         H0uNz/m1D3ygTnXntdSQlhOTtNSdtmjL+kcbWax3p6M4frv5ZprK6m7P2Lp0Ewiw0Z+X
         mNdTqOZA5FozFQGGRbFQEzIo7lawjN48VrN7uUSMOKxf+uVs9aOzsT0fXDui/wHzHRfI
         YsK0KBN4vBSbGNdJUlRs2rc8uqDUVg8nCUZI/6MsU+vKwsbzb72UyVMMyIsqhmyij1QV
         1RQ8nTZVsnIzQ6E6jd2t3FMA7nc3oVmLoeLhmWaabdpvdWJ8hFgZvHtuSTziDHZtcTKS
         kKUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dzy/pv8LpfaZCGMyLs3UqXEZ7XhwmH1hafdtceOiRFg=;
        b=BV3+0VNivgY8j96dwFR1qguzP/CNUfYw/4A20nKik8evb9YsSTeCib17Pc31nud7v7
         AA90knr+cMhki/okyKc/0HaF8RRPMXqi9mkoHNqvsMKrqDyncO/kdlxlReZ0PqMBTPom
         dux+fLH/pUQuMOujS1Dvsosi2Nq3dB/T9N86jPRddBuwwMV0jspxO16Kdm5UWaxCUH/2
         w6HNru6ogqN6iYzj7HL3paeHv22MUUx9BYVh5+p3GyLn4yMepE9e9jApn2lwjOQuHWUt
         CwXE82piAJZzHYAkzKCPP90Ko4aQFwggPyv+43O2T/4FDyEb55F+pJlxz7TGG8TYMUjh
         1z8g==
X-Gm-Message-State: ANoB5pkn9IqOjg4/BWHHXJ57AVrZHCj/6O03RNyBcoZheLdxhC5pve5T
        pwXGOFv0U77uhP4chnAl64aXcA==
X-Google-Smtp-Source: AA0mqf78tVK3fum1F/dXUdTtS3hTH00hrnLPbUdoCb+RptxefA0TpwgIu8uEsk/h/PHFXYBVd4VUiA==
X-Received: by 2002:a1c:7214:0:b0:3cf:7b65:76c5 with SMTP id n20-20020a1c7214000000b003cf7b6576c5mr21825295wmc.166.1669250900396;
        Wed, 23 Nov 2022 16:48:20 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n38-20020a05600c3ba600b003c6bbe910fdsm5245076wms.9.2022.11.23.16.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 16:48:19 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v3 13/18] arm64: dts: qcom: sc7180: Add compat qcom,sc7180-dsi-ctrl
Date:   Thu, 24 Nov 2022 00:47:56 +0000
Message-Id: <20221124004801.361232-14-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
References: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
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

Add silicon specific compatible qcom,sc7180-dsi-ctrl to the
mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
for sc7180 against the yaml documentation.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index d2c374e9d8c03..cfe44afc52b4a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2985,7 +2985,8 @@ opp-460000000 {
 			};
 
 			dsi0: dsi@ae94000 {
-				compatible = "qcom,mdss-dsi-ctrl";
+				compatible = "qcom,sc7180-dsi-ctrl",
+					     "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
 
-- 
2.38.1

