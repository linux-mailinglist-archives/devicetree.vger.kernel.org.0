Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 847C146C80
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2019 00:45:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726297AbfFNWpo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 18:45:44 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:39086 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbfFNWpo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 18:45:44 -0400
Received: by mail-pf1-f193.google.com with SMTP id j2so2234977pfe.6
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 15:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CmE6N4JKzhXb5lHoVXsuD5qj8tmeCrMDzU4ePEIWm0Y=;
        b=E73CaugswLEoSnRUob/BsIpit8Tpx/hMYrnG1PMqIuPtY3H8B5BMGazNT5uoypDBWx
         osOLOrWmYS78KuZdurwrMG5aU1Y229O/IYHb/YcPh8YQIb9gbtbFQLqx5utdsF24L0cP
         CMPNavVjwHgO3gIr+WTWuV2HWsmZ2/Og89tlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CmE6N4JKzhXb5lHoVXsuD5qj8tmeCrMDzU4ePEIWm0Y=;
        b=bPf2w3s6UPPv0CMvCToQldDH6QY6e9V0b448m+YwPVQynhTAZv8aqI/Twid0SH2c4U
         qQuSNnmj1FAojubEEEv+qqJXlsOGZcI/SqUhQl15j2sjdH8B36L9nmQPfPo3W83zGQZe
         nbs+2fJ32fcO1C+e3tHSb2QC7i8adVQwmBLI7to43QtS04egUz2H32eCaVeneyvw87k0
         jKQqeiDnZqmNqCQHEfjusI4p8f3oVesBcFPaPu1aCx4MDbFwefSzYXgGoExxNfKcWaWg
         w0rYTtYRSERCWxv6Wlck85CQvTNgQlOrV+1A7smpQhEisyFiM4jjjSFr7mb2g3XtaF7j
         +5kQ==
X-Gm-Message-State: APjAAAX2efW+WWEs/Flma2N3Pj/p1FBLC0zPdBhRC4tw2/vS3LcG6U8U
        blvdM7mgTy3p01GrUe0W53Z5Lg==
X-Google-Smtp-Source: APXvYqyN12JRzQIV0hm4tLUoGW9KOz1B4YaxPa5FrSR+r+v1H8arhpYH9PjobRBRAWHrn53K5WiajQ==
X-Received: by 2002:a17:90a:37ac:: with SMTP id v41mr12841194pjb.6.1560552344085;
        Fri, 14 Jun 2019 15:45:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id x129sm4099537pfb.29.2019.06.14.15.45.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 15:45:43 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Pavel Machek <pavel@ucw.cz>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight settings for Minnie"
Date:   Fri, 14 Jun 2019 15:45:33 -0700
Message-Id: <20190614224533.169881-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.

According to the commit message the AUO B101EAN01 panel on minnie
requires a PWM delay of 200 ms, however this is not what the
datasheet says. The datasheet mentions a *max* delay of 200 ms
for T2 ("delay from LCDVDD to black video generation") and T3
("delay from LCDVDD to HPD high"), which aren't related to the
PWM. The backlight power sequence does not specify min/max
constraints for T15 (time from PWM on to BL enable) or T16
(time from BL disable to PWM off).

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Enric, if you think I misinterpreted the datasheet please holler!
---
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 468a1818545d..28cbe07f96ec 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -86,8 +86,6 @@
 			240 241 242 243 244 245 246 247
 			248 249 250 251 252 253 254 255>;
 	power-supply = <&backlight_regulator>;
-	post-pwm-on-delay-ms = <200>;
-	pwm-off-delay-ms = <200>;
 };
 
 &emmc {
-- 
2.22.0.410.gd8fdbe21b5-goog

