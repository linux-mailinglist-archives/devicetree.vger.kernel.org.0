Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 194751364A
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2019 01:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726326AbfECXlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 19:41:55 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44039 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726600AbfECXlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 19:41:55 -0400
Received: by mail-pg1-f193.google.com with SMTP id z16so3435785pgv.11
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 16:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l6MT9XTAzOvtTX/5BFhs9O1ystNfk4PRmB7Zlq4GEks=;
        b=I5fn02mFQifGjpN0d9pCsyFAkP0MMebBP27unuYA93mPS3ebr9BWDLvtr+yO1a2e6z
         QFv0PURfYyU3xNua5DcLsUe1CQxpXqCtmWtwy+EPAHfT9ko5ETR7YgNcCYM9ny4JGycA
         krx7V9STi0K9MjPb7O8DJBl600XH1dLo6AO1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l6MT9XTAzOvtTX/5BFhs9O1ystNfk4PRmB7Zlq4GEks=;
        b=bOM5vnbNE8wSgPPZbgogy3801qPZ5PTAb3UAw4NI/+NC1wrKWgJxRhbuQMoGo8Ox0y
         55CmJ4o7CwqxpkmWjvT8g3cm9mYqnQR2u+11lJDdLhlUyzHXazun5CjjqvRbCNs/SIO4
         7qWssyd/i+eDGhmj0cd5L4kPCOyqkliRJCuTt9SUxvgp2mhSw9zgXrbg/UeTexSsgLfM
         tC0dvFdQfeE95sNYdPjN4Zl3ENvKxrfTqlJmgj84DvOElaYGUbio+JCtboHVt1L3sD6h
         LGaLfwRIWUg0x7Lbru7O2FsBiHYCOKeUJxZcgCTtSiROERRiYrYMHfotQJArqoaT9pVY
         V7wQ==
X-Gm-Message-State: APjAAAW6nYnH24/53t8zbZbanxMNUw2ZXGjtZfOGjaDZ5eAqxeGosAhg
        oi6I2wQWxoi6Z0rp5ycqkJXukBEHbik=
X-Google-Smtp-Source: APXvYqwfAhHmGJSMOXVwAdgxx8w7CRNIyO+uqKMR8/EDcFyegYMrslQC+XFDA+zm7x6sp4sqFt9B4Q==
X-Received: by 2002:a63:6196:: with SMTP id v144mr14442228pgb.235.1556926914434;
        Fri, 03 May 2019 16:41:54 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id c8sm4480462pfr.16.2019.05.03.16.41.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 16:41:53 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Shawn Lin <shawn.lin@rock-chips.com>,
        linux-rockchip@lists.infradead.org, briannorris@chromium.org,
        mka@chromium.org, amstan@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: Make rk3288-veyron-minnie run at hs200
Date:   Fri,  3 May 2019 16:41:42 -0700
Message-Id: <20190503234142.228982-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As some point hs200 was failing on rk3288-veyron-minnie.  See commit
984926781122 ("ARM: dts: rockchip: temporarily remove emmc hs200 speed
from rk3288 minnie").  Although I didn't track down exactly when it
started working, it seems to work OK now, so let's turn it back on.

To test this, I booted from SD card and then used this script to
stress the enumeration process after fixing a memory leak [1]:
  cd /sys/bus/platform/drivers/dwmmc_rockchip
  for i in $(seq 1 3000); do
    echo "========================" $i
    echo ff0f0000.dwmmc > unbind
    sleep .5
    echo ff0f0000.dwmmc > bind
    while true; do
      if [ -e /dev/mmcblk2 ]; then
        break;
      fi
      sleep .1
    done
  done

It worked fine.

[1] https://lkml.kernel.org/r/20190503233526.226272-1-dianders@chromium.org

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 468a1818545d..ce57881625ec 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -90,10 +90,6 @@
 	pwm-off-delay-ms = <200>;
 };
 
-&emmc {
-	/delete-property/mmc-hs200-1_8v;
-};
-
 &gpio_keys {
 	pinctrl-0 = <&pwr_key_l &ap_lid_int_l &volum_down_l &volum_up_l>;
 
-- 
2.21.0.1020.gf2820cf01a-goog

