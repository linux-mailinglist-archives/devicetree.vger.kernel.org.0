Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FDF34576EC
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 20:15:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231807AbhKSTSS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 14:18:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbhKSTSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 14:18:18 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7681C061574
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:15 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id l22so47488678lfg.7
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9V4Hpv6UNWdRgHARpjljLPLAlbYv9H5cBhCpbSSCi+c=;
        b=f7rVKibT3ecrqCR0cs8vfe4FUDUZpkC2KqGSAXEQMFj2vekBjOILbMhzEq1i6vPYzT
         3vy8ZsvpvNMVwxYAXZSVCOjOr9rQzEWPk9vLd+YWzFq9qtayWT8X6yzYGM8eF8zjCu1u
         Fx84ccQbk4K/fRYJaHwUatGQcDF21etw/xzCK7cL49iFR+WTzKu6vs6GMQpv2O4DV0hk
         /o9u9J3r0xpbHuEHLdS5f4FF/a7JqBUdOu91yujKs1xRPuHBu67Ti2viXY/nu6eLZX/0
         9H6kmTQxh8fyFSTA04h0NyrN4o1mkpweRVYDSuoqMcfz8+DQYcD69fKBjyQowYhwB5za
         yO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9V4Hpv6UNWdRgHARpjljLPLAlbYv9H5cBhCpbSSCi+c=;
        b=RPsgdGR4mvKYrtUbi9lveGfkwJlxE4MSxqmLibXNhzCeTQIVU58OuGUi+05sDr67z9
         zct61QSE2VNCFRyX+xjohXnor2iet8fK7N9kNe72fkX7zgq01Tnu/0lwKXkuXiKYkRfP
         EJO80ihqUAbSDiDeMkGtJHMh48Qy+hyrUVS8ei6+2PAKgLLLoUyd6oF5pqpmXc4tjkEC
         6prSk23dYq4MaHrdtCak8Sk8JAJDOOyvEB+T/kXsWA8tKTyfXRUgUhl5d+f/JmcgKnwn
         fpdOf847qsu6OmOWIfck5Xs4U5qZnjU6T78EzSSiTz6onrJDK/UiUZQNlXzdXayBkHr/
         VqQw==
X-Gm-Message-State: AOAM530XHUCsYmNM0AvN5u9GqfAh80uHUtsMME+btA3TfENfSbwl7TiT
        v899DKvdkjqh+xgOySMNsWZWVA==
X-Google-Smtp-Source: ABdhPJxHKK81BOCRmq9i0bH5Ik3SOWDmpYRjcSqLtGov2dr/uD2ezBgt0kps6WS4s0VWUQp3y4f0xg==
X-Received: by 2002:a19:6412:: with SMTP id y18mr36119126lfb.494.1637349314198;
        Fri, 19 Nov 2021 11:15:14 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id d4sm67676lfg.153.2021.11.19.11.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Nov 2021 11:15:13 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Maxime Ripard <mripard@kernel.org>
Cc:     Evgeny Boger <boger@wirenboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: sun8i: r40: add rtp node
Date:   Fri, 19 Nov 2021 22:14:56 +0300
Message-Id: <20211119191456.510435-4-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119191456.510435-1-boger@wirenboard.com>
References: <20211119191456.510435-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 SoC has touchscreen controller also serving as general-purpose ADC.
The hardware is very similar to A31, except that R40 has separate
calibrated thermal sensor IP, so temperature sensing channel in RTP is
not documented and is not to be used.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 1d87fc0c24ee..3e98f24c1400 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -786,6 +786,14 @@ ths: thermal-sensor@1c24c00 {
 			#thermal-sensor-cells = <1>;
 		};
 
+		rtp: rtp@1c25000 {
+			compatible = "allwinner,sun8i-r40-ts",
+				     "allwinner,sun6i-a31-ts";
+			reg = <0x01c25000 0x100>;
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			#thermal-sensor-cells = <0>;
+		};
+
 		uart0: serial@1c28000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x01c28000 0x400>;
-- 
2.25.1

