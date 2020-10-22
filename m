Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86750295797
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 07:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2507750AbgJVFFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 01:05:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2507745AbgJVFFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 01:05:22 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AF3C0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 22:05:21 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id o1so365233pjt.2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 22:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wpLYvGhuKyxRXzfVKDpynuN2d2Rj3ki47jaONctjv2M=;
        b=RBhmk4Yoxh9jge/imYHKNgrjYeOVihPb1YzvKBi30BYoocMGuVr03u2v8Yh5x9HBY+
         9x+ZgOAWZy+tADrZRVw85qC71V6vjSqpprPTk7GaRbCkW9+/42aAwkMrHLTfeneklWye
         ZtEXbdQU53ltimT+Ktri5sDHtWTTQNfASUZ58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wpLYvGhuKyxRXzfVKDpynuN2d2Rj3ki47jaONctjv2M=;
        b=TF0hLlt8+Jty6zFRv46cmfHJjg9/l0bSEgYXD7iGaZAP2184LpJXWNl76A/YYgNMVJ
         hGGdZ/YjVOVqRbzDkPVi8px1hZDfiuqBEqIAskfDV1aQkC0MBD2RxchFXkmW8wn2sTRW
         rcT/+57c1BpxNgqBPjSuszCbIWvIwx6H9uvpWq58Bs1a7x7zpUGzwtm2tt7WcDGP5JYK
         tHzHkfBQ4ERtqK2TXKwvxsTt6tYSW3FmErs8AKj98cjoRGL2m3veCF7S9x2fmMCDyr0c
         NH7x3fYMVk5PLzaKdE9FKREmGZZIXok36V7TKN60lbzSuqb6gz7N0hoL3ifp8s0HrRJA
         DnvQ==
X-Gm-Message-State: AOAM533+Z31WC2hmJUYHFZYtjmaOEZ7rhY5aLwSq00IA4yt4iz2NRtYN
        9ho7mWFdR+XfdDgyd1LjILomzQ==
X-Google-Smtp-Source: ABdhPJwE6Djg9sy5FUg+MODQPTa7yCYtbMqMJOwWukFS48qoFn6DL7xRd79dt+BffZ+JvAe/dWMiIg==
X-Received: by 2002:a17:90a:788a:: with SMTP id x10mr86917pjk.236.1603343120839;
        Wed, 21 Oct 2020 22:05:20 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net. [73.63.253.164])
        by smtp.gmail.com with ESMTPSA id q16sm394954pfu.206.2020.10.21.22.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 22:05:20 -0700 (PDT)
From:   Alexandru Stan <amstan@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Alexandru Stan <amstan@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] arm64: dts: qcom: trogdor: Add brightness-levels
Date:   Wed, 21 Oct 2020 22:04:44 -0700
Message-Id: <20201021220404.v3.2.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022050445.930403-1-amstan@chromium.org>
References: <20201022050445.930403-1-amstan@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We want userspace to represent the human perceived brightness.
Since the led drivers and the leds themselves don't have a
linear response to the value we give them in terms of perceived
brightness, we'll bake the curve into the dts.

The panel also doesn't have a good response under 5%, so we'll avoid
sending it anything lower than that.

Note: Ideally this patch should be coupled with the driver change from
"backlight: pwm_bl: Fix interpolation", but it can work without it,
without looking too ugly.

Signed-off-by: Alexandru Stan <amstan@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index bf875589d364..ccdabc6c4994 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -179,6 +179,15 @@ pp3300_fp_tp: pp3300-fp-tp-regulator {
 	backlight: backlight {
 		compatible = "pwm-backlight";
 
+		/* The panels don't seem to like anything below ~ 5% */
+		brightness-levels = <
+			196 256 324 400 484 576 676 784 900 1024 1156 1296
+			1444 1600 1764 1936 2116 2304 2500 2704 2916 3136
+			3364 3600 3844 4096
+		>;
+		num-interpolated-steps = <64>;
+		default-brightness-level = <951>;
+
 		pwms = <&cros_ec_pwm 1>;
 		enable-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>;
 		power-supply = <&ppvar_sys>;
-- 
2.28.0

