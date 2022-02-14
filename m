Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D947A4B43F8
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:20:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241952AbiBNIUU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:20:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241945AbiBNIUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:20:06 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E73DD25C54
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:19:58 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C065E407BD
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826797;
        bh=o/YgTPBdxwkk76YIPJfDwO9KLR8OIlu6EoGrWBDU/GQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=EwTyN5N67UAQHLpprepPlAdArEoxH9FHAtFV+b2v/8mCpJO9jzmVzcILyPM1QfAbE
         mcYvaKAxFLktyuhN6d8z+h5Ije00wbvaMxqdQcusXQUlfOszPBuuMobs1BrXaKaANb
         9dlfmVgYjSoQt2dKnfeJ/ZSY+y1qzxVO9Fjhv7VR++Dy8m0dWIbJnuE5jhsBzkGIA1
         n+qAYg2y5g/hq71m0WQZbiuHAxmVjasQzBlAgOptKuU9jy81ta9rak5q4puZxmImiQ
         QzRXART7ckrtwQCvBQSSU96TSsvUzC9xC0sKw2KEQYTwjoP0Ah9DwcJioZJ7+YEa0R
         8mDjyxKbwq3Dg==
Received: by mail-ej1-f69.google.com with SMTP id hc39-20020a17090716a700b006ce88cf89dfso586401ejc.10
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:19:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o/YgTPBdxwkk76YIPJfDwO9KLR8OIlu6EoGrWBDU/GQ=;
        b=xfGwbooMHFkr9bAqrzm2JWDOuciKufxh3glSjihRXRh0C+JyCaupM0NkK3bwVuZz02
         KMlhEGTEVGUYc3g4IJOiyFZaP+uumXN60+oQuxCg/rshZ48y5P4fjvy3kITi6TkSA27D
         UQgn1avLnT6cniooFhnJ3nERKSl1EdOh/taoH00vbTM68p60oHWGfYAVxcq9zIM6Stq+
         soONHm7kDMqn3IaYVnWFUfSCGiziA0iZd7BPsvCb06HTc74V7NwLoOlkX/28sqGvfOVV
         91yun+rMUGbeog8wxUTRYnUa9RpMbduCGb2cIs82e3JbrKFK1R0QHY2Jq8Z8CBuTzVCX
         31cQ==
X-Gm-Message-State: AOAM5337npkwxLVXKLzZllQ+HgeCsUERjoWnOeatZVFXGwnYzSxx7Uav
        R2E1DSfwHvhuLHnQGePb4tLbA23Mpi3WNj3Rz8lNbGTN7PqO37ODnXFvPJfxi5Wa9VhHI4LQWpA
        yChp5/d2HwRCrh8FBhgWFnOPEHHRF8ofrQHqLjPU=
X-Received: by 2002:a17:907:6091:: with SMTP id ht17mr10718093ejc.607.1644826797394;
        Mon, 14 Feb 2022 00:19:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwkFPJeiJWjmWYMYKnbVg1bBwxgaPTZV+oh4RSUxGNA67GTozBuexvPDdoyT1VdY/d6fUhgGw==
X-Received: by 2002:a17:907:6091:: with SMTP id ht17mr10718069ejc.607.1644826797215;
        Mon, 14 Feb 2022 00:19:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id b20sm2022941ede.23.2022.02.14.00.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:19:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: rk3399: align Google CROS EC PWM node name with dtschema
Date:   Mon, 14 Feb 2022 09:19:16 +0100
Message-Id: <20220214081916.162014-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dtschema expects PWM node name to be a generic "pwm".  This also matches
Devicetree specification requirements about generic node names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 9b2c679f5eca..3355fb90fa54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -462,7 +462,7 @@ ap_i2c_tp: &i2c5 {
 };
 
 &cros_ec {
-	cros_ec_pwm: ec-pwm {
+	cros_ec_pwm: pwm {
 		compatible = "google,cros-ec-pwm";
 		#pwm-cells = <1>;
 	};
-- 
2.32.0

