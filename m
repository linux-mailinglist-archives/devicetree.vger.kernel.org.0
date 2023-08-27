Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01B6E789AB3
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 03:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbjH0BAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 21:00:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230147AbjH0BAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 21:00:12 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B89CFCF1
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 18:00:07 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fe8c16c1b4so3194360e87.2
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 18:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693098006; x=1693702806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzXt286sPhU+yVmzfDKl882XWnXgjzSmy9rWB6wpkCI=;
        b=hxbFxl2SA4TE2bOgEYJOmTDYgKgaBo+/T5pdXgIBXr7RnaYeDuWKyoSJFgqmAMWqF4
         xdUDCjIej49W8wu7KAJXEwmZ31TAXRte16SViK3n6mW4RnJszlleR5jLy+q469qRXOk6
         SkoFd3VXRL3LAI5ZQhdEVmc8mM382A+Wm3ztwzlx+GSpdbbjrQiiy9F31YKX+wyqY5YI
         aPBvMVLvz4bdwcrFuvmnK6g+q2mawoDLsxrKFuGdjW9BI8DMZ4io+MO82rD4wt93L6YU
         Cd4Lxhat+ogRu/4+/77yxbXFpyVhycLyqFErGYy3fzcp69wfbL3lXtGNriRhA4vVv6fo
         kQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693098006; x=1693702806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tzXt286sPhU+yVmzfDKl882XWnXgjzSmy9rWB6wpkCI=;
        b=g+dw2QxXsHKv67Ny9YsELwEAWab1JXYnAsFe7D3McNbEnp4qT+/+apIAaaqjmFwOdG
         YIF++hcnNimCVh5d7wXQftuMvH+1HEF+X4Xql4iocJIyPOzb1i3eux8UFvtqk1PAp829
         465WtFhf+YXE5/D0SUNRt7AKkS9+EJ6ZvP0YKYWwgQeddxTYYM1cfaP6JGsOo8WYZE+h
         9J5k5az0Vv/qtRP8bUNatSLm7INjKRI5Afh0dpDpW6Hk5U5nn1Fj07OQ7orloLxcoLmo
         TtOAtz6Xg9ADSU7+AZLpcpOzHUn1maydSY15DJHmNb634m6ybzUxXAZiggXVawy8hH5S
         lNBA==
X-Gm-Message-State: AOJu0Yx1SwsGlqoz5g1KOfL/eY/DLlbfRtJKfldVtkzDML7Y+mQg9NQO
        MDANdjsz6uijaa66gXg5Q1J/Yk9WY2TpszTiZII=
X-Google-Smtp-Source: AGHT+IEByNujKNl5zs1G/zJRvv6FCSd+whhLWn+hP15NRohlEiaQyu5W2ck27zhgeilwS3Sv1pX7uA==
X-Received: by 2002:ac2:43ad:0:b0:500:a694:46f with SMTP id t13-20020ac243ad000000b00500a694046fmr3756053lfl.19.1693098005850;
        Sat, 26 Aug 2023 18:00:05 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p18-20020ac246d2000000b00500a08e42e7sm917729lfo.124.2023.08.26.18.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 18:00:05 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org
Subject: [PATCH v4 36/38] ARM: dts: qcom: apq8060-dragonboard: rename mpp ADC channels to adc-channel
Date:   Sun, 27 Aug 2023 03:59:18 +0300
Message-Id: <20230827005920.898719-37-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
References: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use generic `adc-channel@N' node names for board-specific ADC channels
(routed to MPP pins) to follow the schema.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
index 8b70d4a59c7b..bf2527941917 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
@@ -998,23 +998,27 @@ &pm8058_xoadc {
 	xoadc-ref-supply = <&pm8058_l18>;
 
 	/* Board-specific channels */
-	mpp5@5 {
+	adc-channel@5 {
 		/* Connected to AOUT of ALS sensor */
 		reg = <0x00 0x05>;
 	};
-	mpp6@6 {
+
+	adc-channel@6 {
 		/* Connected to test point TP43 */
 		reg = <0x00 0x06>;
 	};
-	mpp7@7 {
+
+	adc-channel@7 {
 		/* Connected to battery thermistor */
 		reg = <0x00 0x07>;
 	};
-	mpp8@8 {
+
+	adc-channel@8 {
 		/* Connected to battery ID detector */
 		reg = <0x00 0x08>;
 	};
-	mpp9@9 {
+
+	adc-channel@9 {
 		/* Connected to XO thermistor */
 		reg = <0x00 0x09>;
 	};
-- 
2.39.2

