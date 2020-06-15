Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5492A1F97DB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2020 15:05:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729977AbgFONE6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jun 2020 09:04:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730207AbgFONE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Jun 2020 09:04:57 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0540C05BD43
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 06:04:56 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id r7so17071034wro.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 06:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kynetics-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xGnsrUoVOZBXJ5xWuUjcUkSKUeGXoNVTCOwqDvT4FJM=;
        b=Yz1AY4Xm2PX4fmylnCSynNbDi5nrFVCSdQsIH2aiqiDYSkgiZnecyZpZwQNZpksdV2
         c7VBDnDUAteERJ7oS6HTSrHQ2GYtuDYSPprHk0TkMEHCkEPid0EUk36Py9M38A1g/SWd
         9Aj4d62t2zAtaiVvKqWef28MHtUF3BNC7Mk/fFXRezJ3WBiriFz6+YPH5E54D5CXzJa+
         DVFXVBmy+swiz9FwBEtPz3ZT3ZpZMysJ5X46nLC2y/ChxSHt8s8FN82Zfms0T0A9yF2T
         a4b/CKxLv+OtVwNo9RUIqbIZg4jWxP6gLlyv+gdU6a/QH2CZFtQgpchIk+fv36QUJV3X
         38NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xGnsrUoVOZBXJ5xWuUjcUkSKUeGXoNVTCOwqDvT4FJM=;
        b=iRiNSZKN1OoE2aCcD1xd6AjDcldhy8DTc4YmH28lOUSmVxPMUEWJ/31thMTNhH/gSS
         XfVjMlEoRqG6qSL2zTztW49VLEgYOn2U4z8FdGxyji9WDq38Vslt77cXKBa3Ksgpeypx
         SuqD2GYCbq1lMPK6otwPdxazGs13fgHIjO4AZTgBEgE7nw4mBeqs2Yp0JvrOIWBxjYZV
         14lbJqwfJ4iz+6zH41Si8QIL52cVPbwksC4Ep1XE/6Rp6Qsp+VZzeX/jFsMlGO060pLV
         UudfL/IgmqvDBH9SWG0KU0jIDKhUsmdYlcUJfifspKLvwirH9Yp5KcWC/9y6MbH6Vm5V
         GfBg==
X-Gm-Message-State: AOAM533QTMzZjyxBUPcW3E1EmGUqACG20PP+gGvN6ED3MgWW72YHWuxS
        eyJ1KEi2tK5X8056IN4VVZlztQ==
X-Google-Smtp-Source: ABdhPJyCbA4P7k40uO6mt2bOu07HU/fYBKq+e7S7CG+VE5FlaW3M581dKgwaQOXyEbfX2cDE+gWybA==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr28032503wru.268.1592226294967;
        Mon, 15 Jun 2020 06:04:54 -0700 (PDT)
Received: from localhost.lan (mob-37-176-61-186.net.vodafone.it. [37.176.61.186])
        by smtp.gmail.com with ESMTPSA id s132sm23900345wmf.12.2020.06.15.06.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 06:04:54 -0700 (PDT)
From:   Diego Rondini <diego.rondini@kynetics.com>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
        Diego Rondini <diego.rondini@kynetics.com>
Subject: [PATCH v2 2/2] ARM: dts: orange-pi-zero-plus2: add leds configuration
Date:   Mon, 15 Jun 2020 15:02:25 +0200
Message-Id: <20200615130223.34464-2-diego.rondini@kynetics.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615130223.34464-1-diego.rondini@kynetics.com>
References: <20200615130223.34464-1-diego.rondini@kynetics.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwr and status leds configuration and turn on pwr led by default for Orange
Pi Zero Plus 2 (both H3 and H5 variants).

Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>
---
v2:
- sorted node alphabetically
- fixed underscore in led names
- removed extra empty line
---
 .../arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts | 15 +++++++++++++++
 .../allwinner/sun50i-h5-orangepi-zero-plus2.dts   | 15 +++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
index cbe32b975c5fe..251bbab7d7073 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
@@ -70,6 +70,21 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		pwr {
+			label = "orangepi:green:pwr";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		status {
+			label = "orangepi:red:status";
+			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
 	reg_vcc3v3: vcc3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3";
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index e67733d133bb4..de19e68eb84e0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -30,6 +30,21 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		pwr {
+			label = "orangepi:green:pwr";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		status {
+			label = "orangepi:red:status";
+			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
 	reg_vcc3v3: vcc3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3";
-- 
2.26.2

