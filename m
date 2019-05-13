Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4127F1B6FF
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 15:26:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728579AbfEMN0m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 09:26:42 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:39939 "EHLO
        mail-wr1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728577AbfEMN0m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 09:26:42 -0400
Received: by mail-wr1-f53.google.com with SMTP id h4so15284453wre.7
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 06:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vPE3jxCO3dCQR+ybH4Gy+efpIpySYIwlVy/qEuYWDIY=;
        b=g8eRb+2Ye5bChbQzqB5uao6VM8WXp8fKutdZSzNyT+KSAaYvR0EequtAtjOPxZAiPW
         geHXsBfDa5q4YSH7jEEHce3pQ480eBTmAVgtGKTksz96oPgnZ9sDb3kXpi5Rxx7MUKD6
         Q7x8NplJmezylTtJYTzw8t+vhFN0VRk93+whQ/cIJgosstN6HundDjINH409Xu2RTNn3
         W92hgrAd/KiabsLQaEtIbKXWSlJ/2TIf3ueJ/qyec6sVPaMTV0YbGapLgU0Ywyh2VyVG
         g/hPZvO9EVWWi4Uj6JvDdoVSzzu4JMRcTe3JaLFMj9aZpBmxMV7NdK18KkQysCDvKryy
         29zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vPE3jxCO3dCQR+ybH4Gy+efpIpySYIwlVy/qEuYWDIY=;
        b=FOLN/jbo8l/GGqdto6Q4CYdPjh4QNBRhGlEmp/ydVsWCiBX+k3DlSZ8MGmWg2Uo49a
         Fgltadrsww3h2bOYLeHn1EkBxw4L64HVBbTYBZUg+fzkWGKUhtR9Pnd94jkF6InZ1SMp
         PGwd4darZ9gj/0i9MWzT8hNQMEpK2V0uKrFZ02vZ7r8r1JbrRsLB/xXUWDlD2l0PafEU
         feaxM/67KP8EyrgkehPzBuRwZ9azVdQltyAsCbsM84g8pDXbnbH0Ah8HNazLr6QiWMrR
         VZ/GnR/Xg2TyF+hJ8QWlRTHZReEIghuM52eyZwS91HjEg+K+r6LhxnXaA6WyhLJxKi+I
         TVUg==
X-Gm-Message-State: APjAAAWTxTCT05IvMulhQYpSAI0s/ichjVLE2Pk/0ahXsfS+tpHVKxkz
        I9vcVu6ps0BdOEFjwnpBv8boiQ==
X-Google-Smtp-Source: APXvYqySFgPHBjr/wKnTqEBG02gIwRobVpzN22Zu5VUMEwIG0+8bMfpops6VWDvfUHaJpt3uXuot2g==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr18657626wrp.67.1557754000110;
        Mon, 13 May 2019 06:26:40 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id t13sm16400701wra.81.2019.05.13.06.26.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 May 2019 06:26:39 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH/RFT] arm64: dts: meson: odroid-c2: add missing mmc modes
Date:   Mon, 13 May 2019 15:26:27 +0200
Message-Id: <20190513132627.25149-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sdcard uhs modes up to DDR50 and push eMMC up to 200Mhz
With the new tuning method, these modes appear to be stable

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---

 This particular board has always been painful when it comes to
 its eMMC modules. While testing the new tuning method introduced
 in the last cycle, I have not seen any issue with HS200@200Mhz.
 That being said, I only have the 16GB module.

 In the past, problems have been reported with other modules while
 it was fine on the one I have. Clearly, I don't have the full
 picture.

 Kevin, I don't know how you prefer to proceed. I am personally in
 no rush to see this applied. I'm sending this mainly to make sure
 it is shared and give people a chance to report issues.

 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 1cc9dc68ef00..5a139e7b1c60 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -255,6 +255,10 @@
 
 	bus-width = <4>;
 	cap-sd-highspeed;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-ddr50;
 	max-frequency = <100000000>;
 	disable-wp;
 
@@ -272,7 +276,7 @@
 	pinctrl-names = "default", "clk-gate";
 
 	bus-width = <8>;
-	max-frequency = <100000000>;
+	max-frequency = <200000000>;
 	non-removable;
 	disable-wp;
 	cap-mmc-highspeed;
-- 
2.20.1

