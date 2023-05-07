Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 254356F9B81
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbjEGU2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:28:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232060AbjEGU2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:28:50 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8298F35BF
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:28:46 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2ac7c59665bso43993481fa.3
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683491325; x=1686083325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hbb+Gw2CW/HbmhZliVRpGRsPwJqaiAgOusSFBwss6U=;
        b=LhaHy5o46LDizECgcW3NDO4ChoSF+jVfMHWkOM6/9BLz/LjpwWu1wRhV5eb0xUgLSG
         JI8Ccfl93neNJMCQ+XFFnHfFG/6wFxCCOccFEWLkDwI3Rj8vJCPGjlmQmvkeqk6WIvyC
         N5GFuGUe7XyMYCMXXEiqsXPdeeOg7XDR832jeoW3fyzLkv/CS2Rq2ukfGF4srAo2GKaF
         sPDPHNjtjCwc6Ydt5cojWEYd/iaj81rZrB5+HKEp3ETo0z/mnpsqWh9yhh84zfmL0sjg
         XKofPsBUmBs46Jcg069/JykjrvHRpNAW6aMtUv6qzSZc89jYxyjHdltnTUeJ97q3ZqSN
         Duww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683491325; x=1686083325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2hbb+Gw2CW/HbmhZliVRpGRsPwJqaiAgOusSFBwss6U=;
        b=aGTxOBpwTBQvY6JWR9zX/YbB/DA54rCEqsCErdyx9h97NXfw/jIgHildzLwpsC7jhl
         YeWJe3lKrokfuvLoJ3IpHmhyGnpiW8Hd8oyhgiTuDTc35+sNDF6OiJJXG5Wipkrn6wP4
         iEVlWAirFyrBHbwrRmxaQyTE+DjmF+aPICpDBK0IhwzduuGbrjlAJu83XtakuCcrkNtj
         WgPf93aR+LllLn3z7l9RD7RvNRdLWs4SJDIjOR647V2XEypT8Lrp11ADTdQD+sSRepos
         nYzdCozMiZQb9x364I/LfIOR1uyXCSt7gtb/KlfVOQlAlrqNAn8ZhuVhKII3E4jQPLdb
         2Mmg==
X-Gm-Message-State: AC+VfDwuiGE10lljewqzYyakgUVOPtu41f4rMOeA8aoLlMBm45ItZwgJ
        BCZZwA/WfLeJlRGmlgNPsZenwg==
X-Google-Smtp-Source: ACHHUZ7Yw1Dh/Uvxhe8otO9aoqhqpF2X2SkGV+rxNZnajmiPKx/Poiv2C2uF++k1Fio/WtE+SkwuOA==
X-Received: by 2002:a2e:938c:0:b0:2a7:6fee:2503 with SMTP id g12-20020a2e938c000000b002a76fee2503mr2221516ljh.14.1683491324878;
        Sun, 07 May 2023 13:28:44 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f25-20020a2e9199000000b002a8bb52d994sm928043ljg.25.2023.05.07.13.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 13:28:44 -0700 (PDT)
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
Subject: [RFC PATCH v1 3/3] ARM: dts: qcom: apq8074-dragonboard: enable HDMI output
Date:   Sun,  7 May 2023 23:28:41 +0300
Message-Id: <20230507202841.2339127-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230507202841.2339127-1-dmitry.baryshkov@linaro.org>
References: <20230507202841.2339127-1-dmitry.baryshkov@linaro.org>
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

Enable HDMI output on the APQ8074 dragonboard device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
index 72f7e09a5bbf..850427bd2f82 100644
--- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
@@ -20,6 +20,18 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	hdmi-out {
+		compatible = "hdmi-connector";
+		hdmi-pwr-supply = <&pm8941_5vs2>;
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&mdss_hdmi_out>;
+			};
+		};
+	};
+
 	reserved-memory {
 		mpss_region: mpss@ac00000 {
 			reg = <0x0ac00000 0x2500000>;
@@ -90,6 +102,24 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_hdmi {
+	core-vdda-supply = <&pm8941_l12>;
+	core-vcc-supply = <&pm8941_s3>;
+
+	status = "okay";
+};
+
+&mdss_hdmi_out {
+	remote-endpoint = <&hdmi_con>;
+};
+
+&mdss_hdmi_phy {
+	core-vdda-supply = <&pm8941_l12>;
+	vddio-supply = <&pm8941_l12>;
+
+	status = "okay";
+};
+
 &pm8941_wled {
 	qcom,cs-out;
 	qcom,switching-freq = <3200>;
-- 
2.39.2

