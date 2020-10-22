Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D817295795
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 07:05:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2507732AbgJVFFS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 01:05:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2502102AbgJVFFR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 01:05:17 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 937A0C0613CE
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 22:05:17 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id 1so328381ple.2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 22:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K2s/WABeigsA7Mtk0S1o9sQLZAsD6w8Z+WN9DH8FOQc=;
        b=nlxR/fPH/lcxICagndJXRM49tb//f/NoqPZcOrpnte9T+UHf5tUQMXKMOW48/Ie8yy
         uAdP6rToRhWnhNHnghik3iVL4daQCvLzujuFNaAHnpAEvhPJ3foQdFeAvs+UzXYCSWkV
         vVE9SUk5KveUwC9mN14Z5Cvwk7ObaDWOF5WXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K2s/WABeigsA7Mtk0S1o9sQLZAsD6w8Z+WN9DH8FOQc=;
        b=NA0zIupDG4c9Q+WuYg2MzJRawOgsavjd06Fm9WlKKB/Ky2DW9DitPiKK8OjUgoWdwI
         zcRchnSKIx+YG7Y0KgGdr4PrOPpqcrskoVL/fzS7xSkv3g38J5cwPskY2d6RPyYG7v29
         4U5X78mmMJE1voHlu5JYGr8RphPYfdb1XadBPd/ExCNpaI/kMXhWzKfSkKnVvjaOsUXA
         IDrOVXUho0edkiSiQjpSazmqw+XDQn8W4QgSIzGj+JT6MpkECYyPUpS1xYAjyKX4xGmG
         zQPZcvx76RvhJCJI6rfc3Kk9eSlTikOaxiqfFu5wBPwk64kRPm6tjxMojcJx2YH97v2p
         X80Q==
X-Gm-Message-State: AOAM531mpjOMrcpyhXoJIDvoZ3jHfbdmoZq1lgn4kUxLL5IbO/XdpzaJ
        aPFPcnREKiZkaRKJdjxzf7o3gg==
X-Google-Smtp-Source: ABdhPJy1S3Qg0UXAo7NAUpXG3IP9he1/d4XCGb8CAjHReHbkbKr6Op7VKpnwFVAXlxRcrXq41UUX2w==
X-Received: by 2002:a17:902:bb8c:b029:d2:2503:e458 with SMTP id m12-20020a170902bb8cb02900d22503e458mr1016068pls.18.1603343117155;
        Wed, 21 Oct 2020 22:05:17 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net. [73.63.253.164])
        by smtp.gmail.com with ESMTPSA id q16sm394954pfu.206.2020.10.21.22.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 22:05:16 -0700 (PDT)
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
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/3] ARM: dts: rockchip: veyron: Remove 0 point from brightness-levels
Date:   Wed, 21 Oct 2020 22:04:43 -0700
Message-Id: <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022050445.930403-1-amstan@chromium.org>
References: <20201022050445.930403-1-amstan@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The extra 0 only adds one point in the userspace visible range,
so this change is almost a noop with the current driver behavior.

We don't need the 0% point, userspace seems to handle this just fine
because it uses the bl_power property to turn off the display.

Furthermore after adding "backlight: pwm_bl: Fix interpolation" patch,
the backlight interpolation will work a little differently. So we need
to preemptively remove the 0-3 segment since otherwise we would have a
252 long interpolation that would slowly go between 0 and 3, looking
really bad in userspace. So it's almost a noop/cleanup now, but it will
be required in the future.

Signed-off-by: Alexandru Stan <amstan@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index af77ab20586d..4a148cf1defc 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -20,7 +20,7 @@ / {
 
 &backlight {
 	/* Jaq panel PWM must be >= 3%, so start non-zero brightness at 8 */
-	brightness-levels = <0 8 255>;
+	brightness-levels = <8 255>;
 	num-interpolated-steps = <247>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index f8b69e0a16a0..82fc6fba9999 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -39,7 +39,7 @@ volum_up {
 
 &backlight {
 	/* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <0 3 255>;
+	brightness-levels = <3 255>;
 	num-interpolated-steps = <252>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index 069f0c2c1fdf..52a84cbe7a90 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -23,7 +23,7 @@ / {
 
 &backlight {
 	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <0 3 255>;
+	brightness-levels = <3 255>;
 	num-interpolated-steps = <252>;
 };
 
-- 
2.28.0

