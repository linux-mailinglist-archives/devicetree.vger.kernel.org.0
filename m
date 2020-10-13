Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DBD228C9AF
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 10:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390644AbgJMIBf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 04:01:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390549AbgJMIBc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 04:01:32 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EE9AC0613D2
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 01:01:32 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id az3so1655376pjb.4
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 01:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PX6utEv95nZrK8Cio4KcHOFe3eh1+n1xQTOKgWru7Q8=;
        b=Yq/nvpaQ5Hpx/VK+3t8sVeKV8lzlwCiDy9N4+pw8gUCZpI3XS9cL9KwWtSFkhWhisR
         LGmwRdWOc8I/GXFP/OoRfZ5q2niv7Jht6WP1s7Niv6VRkxKqD+4GSHYXr/EGk+DgX4ts
         Psnki/01Xl8AnE4gxxe2SnN1XiYtoSXrDxcqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PX6utEv95nZrK8Cio4KcHOFe3eh1+n1xQTOKgWru7Q8=;
        b=MHxjYX9x3sa58YXnkwOiiSgESznPZyUPRZ2GRocs4Lffo/TWFVFe+JohSeCxRmtYpW
         WWPkosgVyOoL1BqfLy+OlO8T/9mXpcH0xKRTQlH8aEei7GaVrMblfsRwrAh4jnWXSkBs
         s0VcLCdJbh/IydIcqHvonx7b68UNI1U3iVXGVoJtusRSpJWRY2HxmNxhack14J48Gi4l
         Ok8Q48r/GrsGNeW17iQyoVG7n7ALJgpklD576uAkHsa4tKnv8lBoOHB1auzV0918TjfW
         vXvSo9U2eOemE2/KusKI92J+OAxRwgX7Mc39RvdRQgYcQGb3qYEIdkq0m9f7JHYm9eoO
         VrgQ==
X-Gm-Message-State: AOAM531US8yFj8pZ4Gja+BEuc+MGzB95P7FHBaJ8fOShFNBaPUp9+aN4
        DlqemiJkhTPiSduFhZ5aohsK4Q==
X-Google-Smtp-Source: ABdhPJwy8G+WoGa8xfqN7S2NUeVNZqaFQcnZEV3UAVpca7MBw+WNfz5pRUiBOuT/fqofn7wEFblptA==
X-Received: by 2002:a17:90a:160f:: with SMTP id n15mr24051942pja.75.1602576092037;
        Tue, 13 Oct 2020 01:01:32 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net. [73.63.253.164])
        by smtp.gmail.com with ESMTPSA id y124sm14956924pfy.28.2020.10.13.01.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 01:01:31 -0700 (PDT)
From:   Alexandru Stan <amstan@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Alexandru Stan <amstan@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] ARM: dts: rockchip: veyron: Remove 0 point from brightness-levels
Date:   Tue, 13 Oct 2020 01:01:02 -0700
Message-Id: <20201013010056.v2.2.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013080103.410133-1-amstan@chromium.org>
References: <20201013080103.410133-1-amstan@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After the "PWM backlight interpolation adjustments" patches, the
backlight interpolation works a little differently. The way these
dts files were working before was relying on a bug (IMHO).

Remove the 0-3 range since otherwise we would have a 252 long
interpolation that would slowly go between 0 and 3, looking really bad
in userspace.

We don't need the 0% point, userspace seems to handle this just fine
because it uses the bl_power property to turn off the display.

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

