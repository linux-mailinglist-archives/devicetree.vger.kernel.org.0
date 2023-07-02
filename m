Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA7F5744DC8
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjGBNn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjGBNn0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:26 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F93CE6F
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:25 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b5c231c23aso56628491fa.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305403; x=1690897403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXzP32qCaTwfy8d8tbSEIpFNXV74/ZqsIG5KtR4zvko=;
        b=Uo/x4mja7WuImTweh78Ppq3d/axSf0J0kn1VKi3h6zIC3b9RKkM01I9BxF7jVPNNRk
         3Txy6Q4ng9S/j/aETW4lw5hMiC8+o0VKetfC01eE01x0KBd8JBPK7f3YtZxf2K63uI1H
         BTFVgR4RRR7EYsVqxV/oyNz/j5IBx3YCVFgWfEidG8Hyw488B6eE3mHd+IPt23XC8Hwj
         lcl+F2A2BO3UpRcOlE1ic4ZfI1Y+xDbpBsssiNfsvDK99xrRy++61llF2OIDd3VRj7GM
         OWrAUsaIVgNI5OvoliJyiao3vz7Sxov6mkVEFRlflS9WJ465VAEqRYZYvj37OHWc+ofu
         HsAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305403; x=1690897403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXzP32qCaTwfy8d8tbSEIpFNXV74/ZqsIG5KtR4zvko=;
        b=al+hv4FtmmQ7E1kSuGrvJ8yUZoG0GTIac+40NFqarFE8MA7ZmlY6ZGyPq9/hkIUzwX
         v3xbW/19vrz45D+p0V4Rtr774uuqvKwOO9AbZYd13GkHAjB+PYTdljE3cpFqfj5Ddoty
         +gFqt6GZN46u/DEXKygaKrzJV5C+il1nikyInyvXA6/uyPSij+XSYDnhKq27MoCaMsfN
         0WSGMNbGZgZaUtAJcPViKf88Xgy6xVLmwHvP8ZtwFNeDAvdj7V/VbTiKcaiCDELNR8yQ
         IJC3DUO0mEvmHmK6fxJagakATkdjaCz6UNaLSa609+mS7CqTmWlq7PvMI6B5IU4n9/qH
         eLyQ==
X-Gm-Message-State: ABy/qLYJzveVPLgLVeKKLOIVvWFaC3NYn+D8VuWwKKOn+l9Z930LdWKy
        89wL9l/MsY5aIl6gNqxPy8VeVg==
X-Google-Smtp-Source: APBJJlHmwJ1eZW/qtrSXk3PLXzwEGWQekfWM+enD6Nrs678L5I9SmrBbKtSQQa1aFuvPUMXVx8Ww6A==
X-Received: by 2002:a2e:9258:0:b0:2b5:9d2a:ab51 with SMTP id v24-20020a2e9258000000b002b59d2aab51mr4964982ljg.5.1688305403180;
        Sun, 02 Jul 2023 06:43:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:22 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 02/27] ARM: dts: qcom: msm8960: introduce label for PMIC keypad
Date:   Sun,  2 Jul 2023 16:42:55 +0300
Message-Id: <20230702134320.98831-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
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

To simplify MSM8960 CDP board file, add label to PMIC keypad node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts | 20 +++++++++-----------
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi    |  2 +-
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
index 6c1bc3818883..4641b4f2195d 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
@@ -88,17 +88,15 @@ clk-pins {
 	};
 };
 
-&pmicintc {
-	keypad@148 {
-		linux,keymap = <
-			MATRIX_KEY(0, 0, KEY_VOLUMEUP)
-			MATRIX_KEY(0, 1, KEY_VOLUMEDOWN)
-			MATRIX_KEY(0, 2, KEY_CAMERA_FOCUS)
-			MATRIX_KEY(0, 3, KEY_CAMERA)
-			>;
-		keypad,num-rows = <1>;
-		keypad,num-columns = <5>;
-	};
+&pm8921_keypad {
+	linux,keymap = <
+		MATRIX_KEY(0, 0, KEY_VOLUMEUP)
+		MATRIX_KEY(0, 1, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0, 2, KEY_CAMERA_FOCUS)
+		MATRIX_KEY(0, 3, KEY_CAMERA)
+		>;
+	keypad,num-rows = <1>;
+	keypad,num-columns = <5>;
 };
 
 &rpm {
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index fa2013388d99..913bc6afd0a1 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -283,7 +283,7 @@ pwrkey@1c {
 					pull-up;
 				};
 
-				keypad@148 {
+				pm8921_keypad: keypad@148 {
 					compatible = "qcom,pm8921-keypad";
 					reg = <0x148>;
 					interrupt-parent = <&pmicintc>;
-- 
2.39.2

