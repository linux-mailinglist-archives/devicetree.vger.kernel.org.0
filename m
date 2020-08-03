Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F4DC23A837
	for <lists+devicetree@lfdr.de>; Mon,  3 Aug 2020 16:19:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727888AbgHCOTB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Aug 2020 10:19:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726847AbgHCOTA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 10:19:00 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC360C06174A
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 07:18:59 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k8so15626730wma.2
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 07:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y/qA8gSb5L1aedrAB+cnwrMt5FiS/mFTvYHuJN7H++M=;
        b=albycSFNZC8kfgH16k++F8/X0yCQh2L6nvlv0z/riHZdTBBLoXZIgUNGEJQJQXAWvP
         tpnajBTPb2Hx4MZG3B3ErbNiHPfmd8VavN/W+lWdxErdIktJY8VNRRsCcl1xDan0/98r
         lBLcz6Pr6HXl6waYqdbPaDrg+d64cAULpiD6puY9fAzRH1NgTNfQx/0fCYDGp/ncaEVe
         vTl+aMq27RjcFqaC7O0WV9P2RiNQp+RQFbK+y9VDuiBRY+h+NpniwBnXMZYrdAq+6mEs
         hDSXC1AvyoajqVcJDGSBjXwxJxLJ5F5zyyydA8w4XPdouOKsowFQMhW6SYqEqIJMfr0N
         4MIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y/qA8gSb5L1aedrAB+cnwrMt5FiS/mFTvYHuJN7H++M=;
        b=OcBI2/U3MrW1v5b1rxcgsk1LuCOEDmTeikT81GfHOOU0MNrj2bFLuWw8lsKTF+j0Ho
         7c1OofcjrTEx5h1i2Dx7qiHFTcXgH0hTftGMIX4K021EVJpJm4S1d3auojrtqeChH+rU
         aO6+y5fTFozXcvobejWIFz/OELtpHsLsFRUYM5FKaEVQZzOakvtEeJItoWI2U3UE5YAP
         Y5rv4Doo4MsiNBFPJdsdACkfQo6XgATjedB8h8aZpRGFI90jXXjDzu/tQP6DotMOuZnQ
         zTT0JvX6Ob1Us4g1oNswoaca7AYHHgNDSho9+D5A6MmLKuxg9W+SvTjJ0TObTaplBBRg
         xqBA==
X-Gm-Message-State: AOAM531ftQL7S/zN34WEN1i9yirgDLaFzbVM9NzmdWtqt0v+qrIPKqJW
        hHFKky6KHsTfRYuGbKRNaKvTpA==
X-Google-Smtp-Source: ABdhPJzbV6bSqxztQ0RcDqfomj9eHW6XIBQxGt/q6sEjUvi4WKNFFkRXdU/aVORDBtacwX1oL8hqYQ==
X-Received: by 2002:a1c:e382:: with SMTP id a124mr235177wmh.11.1596464338292;
        Mon, 03 Aug 2020 07:18:58 -0700 (PDT)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id t202sm24870600wmt.20.2020.08.03.07.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 07:18:57 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: vim3: correct led polarity
Date:   Mon,  3 Aug 2020 16:18:50 +0200
Message-Id: <20200803141850.172704-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LEDs on the vim3 are active when the gpio is high, not low.

Fixes: c6d29c66e582 ("arm64: dts: meson-g12b-khadas-vim3: add initial device-tree")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 4510a63b0006..9e2995dc144b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -70,13 +70,13 @@ leds {
 
 		led-white {
 			label = "vim3:white:sys";
-			gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
 
 		led-red {
 			label = "vim3:red";
-			gpios = <&gpio_expander 5 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio_expander 5 GPIO_ACTIVE_HIGH>;
 		};
 	};
 
-- 
2.25.4

