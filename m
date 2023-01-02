Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AE3A65B14F
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 12:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232852AbjABLmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 06:42:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232890AbjABLmF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 06:42:05 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B012E80
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 03:42:05 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id bf43so41252218lfb.6
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 03:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M7DFtOEQGDvLwuUrCQkDtvWR1xrXOtoaEkWgZ64uacE=;
        b=pAESxmZqzAulg8x3sh2OZEaZmiaXyD7bnR4gfS0oPCHgWp7B9PaNXpAl2QtI4rLYjB
         2CavhcZ5REDROwzAIu0bJwpx60tFdY6w+H1KNuXe418nv5U7R7ZBGe68tsBJjzQJpOTA
         c9y5j3H9QzHDJkuIcdKK0wCB7+xONDKBiqa7btuO41Vw+stxTM7gtUMo+yuyMidqm5c1
         dg7cycmzXZJTHUfmFqCmXHlnY4U2BVO23JVM6Phd/N8DBhEEK56DL1Xv+Jj1GOaVujoq
         Q4IUTCWRrp0yv+Y+bQMpU7AvL8Kg+vOe85MwXs0l0vIXf04nRstEVdb2aHUNJyfHVMzy
         IAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M7DFtOEQGDvLwuUrCQkDtvWR1xrXOtoaEkWgZ64uacE=;
        b=JegEHTORjzBOeFI59W2Dqvi55wGnsWVUIzZZ6cudzUhysBIV3CLuRl2j64PLxiy66S
         Fz6tOhdGNwsB2pYBvD9dKqDJmenfKp1fxABcNtkyN1D8O37OeIIO3xo4DgH8FefsRe4y
         uyPCLXbc58VuwQQuQmVT78gw0T+sAn7cKkLDEsFLsD5W3vaTYSRWNMBWTfS7V3NGkPiC
         QgyWQvzdFe8j1srncnKzRD96IGBtUY7G0I0bSeQoBq55MwI2H9K5+kdQBGyexgp0FA3S
         KakfvdOBFK/cmFw40djU2brMObdLKqoUMjj29dTETO2Mq9JQFVrowbEnfuorNgI4FFLC
         Rx8A==
X-Gm-Message-State: AFqh2kritRaV7lvvckb5zXb7qvOz6GdXILuSqijCRWlTSxh8rySoVs3O
        V6vVvNKOfTIshfXacZRqFYeZyw==
X-Google-Smtp-Source: AMrXdXslY2koB25fyMJHnXJFmB+megTwdgyGhMXZZ7fR0vwUCEuuWNE0R9xXrSbXYX+L5ifophOJwg==
X-Received: by 2002:a05:6512:3d0a:b0:4a4:68b7:d65c with SMTP id d10-20020a0565123d0a00b004a468b7d65cmr12398011lfv.67.1672659723363;
        Mon, 02 Jan 2023 03:42:03 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c20-20020ac24154000000b0048a8c907fe9sm4356397lfi.167.2023.01.02.03.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 03:42:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 6/8] arm64: dts: qcom: sdm850-samsung-w737: Use proper WSA881x shutdown GPIO polarity
Date:   Mon,  2 Jan 2023 12:41:50 +0100
Message-Id: <20230102114152.297305-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230102114152.297305-1-krzysztof.kozlowski@linaro.org>
References: <20230102114152.297305-1-krzysztof.kozlowski@linaro.org>
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

The WSA881x shutdown GPIO is active low (SD_N), but Linux driver assumed
DTS always comes with active high.  Since Linux drivers were updated to
handle proper flag, correct the DTS.

The change is not backwards compatible with older Linux kernel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index daca1e0ad62a..1980080fffa7 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -720,7 +720,7 @@ swm: swm@c85 {
 		left_spkr: speaker@0,3 {
 			compatible = "sdw10217211000";
 			reg = <0 3>;
-			powerdown-gpios = <&wcdgpio 1 GPIO_ACTIVE_HIGH>;
+			powerdown-gpios = <&wcdgpio 1 GPIO_ACTIVE_LOW>;
 			#thermal-sensor-cells = <0>;
 			sound-name-prefix = "SpkrLeft";
 			#sound-dai-cells = <0>;
@@ -728,7 +728,7 @@ left_spkr: speaker@0,3 {
 
 		right_spkr: speaker@0,4 {
 			compatible = "sdw10217211000";
-			powerdown-gpios = <&wcdgpio 2 GPIO_ACTIVE_HIGH>;
+			powerdown-gpios = <&wcdgpio 2 GPIO_ACTIVE_LOW>;
 			reg = <0 4>;
 			#thermal-sensor-cells = <0>;
 			sound-name-prefix = "SpkrRight";
-- 
2.34.1

