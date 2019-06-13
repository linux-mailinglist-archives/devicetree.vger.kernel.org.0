Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6556244B53
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729717AbfFMSyF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:54:05 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44462 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729707AbfFMSyC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:54:02 -0400
Received: by mail-pg1-f193.google.com with SMTP id n2so17842pgp.11
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MxUBHxdyKSzAEkz8czOIEFewVHEPOOsCs5aBdAtPCog=;
        b=Kume8Qo4DTG31GVT3HwqbSf3jX8+J5mtu6SNBDXX4prsKonHXwtLuXX1DCWbwlHeOw
         RHJzfX2ocMubC3vE5FSZ9hKhNTLlI9eva7D8JP29vVUiTPla+FjmevRgyG2Mf2GisNf0
         ujNCTpb7ZdioL8SUWW0FMmy5symxIEKBW2XOM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MxUBHxdyKSzAEkz8czOIEFewVHEPOOsCs5aBdAtPCog=;
        b=lTogcZ4Z3sJHV+46cW236VoqV82DSkxyNLLjrP9JnZ9/8jq0f5dtLMHKBy/hhFQ7vK
         u4BvuXnbmiZdh4fDY5MF7zXowK0rtNDNpaNeERICjq/E99ybifMYCopUW1wfaj1nRGwF
         p/O38nDNxs38YjHBpVe5MwDYTGRoi2+6oRLzj/VN9B/ZZXiPzysI855CnKysnZjIoaRh
         uCxVQel1zqcjbBLsJhQjBjsESEv8GGUXWT0mbwhiFd7N77HX2SmYIqvlyrb2i68y4JG/
         TLwuCr+x76wqhbfYikXQtYsu+4vLlOGgopsnxZNki/KykmkhfHGK6dGNwpKlA5q+N7q0
         DP4w==
X-Gm-Message-State: APjAAAWBTr9MiGjCzaxWI4x1mfDK+5Lq0HY3kVmm62Y4lftG0UOZSyZA
        92aPKUTi1f9UHj/X2ZRuZZ+pWg==
X-Google-Smtp-Source: APXvYqwk7NSKhbPrQsFpyhC5tg7Fy+h3BJ/6OroJFVaqFFLZ0+/oLQ3lZQhgppFUTYV9k17o5ZQ2qQ==
X-Received: by 2002:a63:9142:: with SMTP id l63mr14357491pge.185.1560452041895;
        Thu, 13 Jun 2019 11:54:01 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 11:54:01 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/9] ARM: dts: sun8i: r40: Use tcon top clock index macros
Date:   Fri, 14 Jun 2019 00:22:35 +0530
Message-Id: <20190613185241.22800-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

tcon_tv0, tcon_tv1 nodes have a clock names of tcon-ch0,
tcon-ch1 which are referring tcon_top clocks via index
numbers like 0, 1 with CLK_TCON_TV0 and CLK_TCON_TV1
respectively.

Use the macro in place of index numbers, for more code
readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index bb856e53b806..219d2dca16b3 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -44,6 +44,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/sun8i-de2.h>
 #include <dt-bindings/clock/sun8i-r40-ccu.h>
+#include <dt-bindings/clock/sun8i-tcon-top.h>
 #include <dt-bindings/reset/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 
@@ -704,7 +705,7 @@
 			compatible = "allwinner,sun8i-r40-tcon-tv";
 			reg = <0x01c73000 0x1000>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_TCON_TV0>, <&tcon_top 0>;
+			clocks = <&ccu CLK_BUS_TCON_TV0>, <&tcon_top CLK_TCON_TOP_TV0>;
 			clock-names = "ahb", "tcon-ch1";
 			resets = <&ccu RST_BUS_TCON_TV0>;
 			reset-names = "lcd";
@@ -747,7 +748,7 @@
 			compatible = "allwinner,sun8i-r40-tcon-tv";
 			reg = <0x01c74000 0x1000>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_TCON_TV1>, <&tcon_top 1>;
+			clocks = <&ccu CLK_BUS_TCON_TV1>, <&tcon_top CLK_TCON_TOP_TV1>;
 			clock-names = "ahb", "tcon-ch1";
 			resets = <&ccu RST_BUS_TCON_TV1>;
 			reset-names = "lcd";
-- 
2.18.0.321.gffc6fa0e3

