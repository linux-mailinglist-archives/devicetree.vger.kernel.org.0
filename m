Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8ED65B4577
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 11:15:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiIJJPA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 05:15:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiIJJOq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 05:14:46 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 989DE1D0CD
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:14:44 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id v6so4806370ljj.0
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=F43WJbqoo0esyv4lpLD+5bCe2x3EVG4sANVKIPN1Vsw=;
        b=gjQYC5tvkqwyAfGwYyZaxzlELAmUX4A4Oc5Oq/5KenDEAxOminiHi9muEYn8A5WejU
         Uk7OxU1imFSFvjNZQNUToxTlaFjq4NRad7xRkUJXd6zsnr6J0NkZMmVT7BiGI8N0Prcz
         0xaLNWYTVpp+8UMU318UqhCqWbUJkiHbtO03y2f+rLdIqBiDNIe6snfySzCuhjsygfTy
         AlOEfVBmxbrSoPXrmO7/0ECoPXMyPeq1hXfPNzTgGDV/MzAZWzq8ksfA7viiIiV3+DTI
         nfNqUPkNCi2v8m+zsAHxBFrvrlDropSFV8TWS+4v1ktuu5mWDxRc29Uz3cQQQuAZpG9r
         sa8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=F43WJbqoo0esyv4lpLD+5bCe2x3EVG4sANVKIPN1Vsw=;
        b=nKJ7g4UxAKeYswDhn6HvZVTfQ4QHbgNhNcLsQQKT0QPLs8RCXRve+0oIVMrCCXGMHD
         tTHJVmuN4UquBH4y8XwdB1MHwZxJZLPLytQ5BlY3u+YmWiECigtpf9twf0K9FPEqHhOy
         LrQoSmHWybMvd3AosunvP0KoUX7dwxbugu3FCDja9gXUhQ4jRbXyM7jBEDKBACoMXO++
         8AARkEfCLN/TgQmEmo7oSGuyFuRYOjAwdchODE0FuRkO71tOUnE2Ojwezdj2/D5bNoPL
         OtSmldc1V60XO/sLssRsRzpxORD8ywej+Fgk7EvkGzzEhYVYiHHZ/EQ5aXXyMJsUhbcB
         Qunw==
X-Gm-Message-State: ACgBeo3VREYwx8lA3NXi7IWo2/X5MiUxFWyWelDn5jjnexS3ZOAp8O08
        8KbHKBpF6XoSd93yI8lyVCSuOA==
X-Google-Smtp-Source: AA6agR4rhGrcfIu0K6zucUbz27AGSZJkv8AZnGPF287UzI8abX8D1GX4w+zjXIJoDrL3P/ZIcJk53Q==
X-Received: by 2002:a2e:958a:0:b0:26a:a393:4480 with SMTP id w10-20020a2e958a000000b0026aa3934480mr4974663ljh.490.1662801282674;
        Sat, 10 Sep 2022 02:14:42 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x22-20020a19e016000000b0048b26d4bb64sm201552lfg.40.2022.09.10.02.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Sep 2022 02:14:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 05/15] arm64: dts: qcom: sdm845: align dai node names with dtschema
Date:   Sat, 10 Sep 2022 11:14:18 +0200
Message-Id: <20220910091428.50418-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220910091428.50418-1-krzysztof.kozlowski@linaro.org>
References: <20220910091428.50418-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects DAI node names to be "dai":

  qcom/sdm845-xiaomi-beryllium.dtb: dais: 'qi2s@22' does not match any of the regexes: '^dai@[0-9]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts           | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts   | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 132417e2d11e..2110a5893149 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -651,7 +651,7 @@ led@5 {
 
 /* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
-	qi2s@22 {
+	dai@22 {
 		reg = <QUATERNARY_MI2S_RX>;
 		qcom,sd-lines = <0 1 2 3>;
 	};
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
index 0f470cf1ed1c..68e2a07a01dc 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
@@ -338,7 +338,7 @@ resin {
 
 /* QUAT I2S Uses 1 I2S SD Line for audio on TAS2559/60 amplifiers */
 &q6afedai {
-	qi2s@22 {
+	dai@22 {
 		reg = <QUATERNARY_MI2S_RX>;
 		qcom,sd-lines = <0>;
 	};
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
index afc17e4d403f..4f6f1ce7286c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
@@ -544,8 +544,8 @@ resin {
 };
 
 &q6afedai {
-	qi2s@22 {
-		reg = <22>;
+	dai@22 {
+		reg = <QUATERNARY_MI2S_RX>;
 		qcom,sd-lines = <0>;
 	};
 };
-- 
2.34.1

