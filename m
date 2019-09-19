Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25F9AB72A2
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 07:29:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388173AbfISF3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 01:29:07 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:40318 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388167AbfISF3G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 01:29:06 -0400
Received: by mail-pg1-f194.google.com with SMTP id w10so1189873pgj.7
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 22:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7UOcZwhIF06MhGn+HJKXs6pdfSRqhxVhEIb50OgmNOI=;
        b=Y7HZPUIUZqEK4jo+BJve1KpFrqXMnsuT4bQMzaur4NSxYR5oJZEaU/x99ezt/hgzfm
         M8PBWQosHOZYlBM54/Fa5fMIwPZQ7ECsrS5UPQMAhp40MvbZCPvEYUe+LfiUyItaU+O5
         VrurC+B1oAuvwLo1lyOl7ZjDnYwRIKRGoziX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7UOcZwhIF06MhGn+HJKXs6pdfSRqhxVhEIb50OgmNOI=;
        b=dw7H4dCvxIyjd21BOokjOuwzva/KZi9cIoaF5VyB7mfZKFobIPtOsN+cxqynT+hl4B
         B2VdaVkIJCNM9Ug8M7tCXNPAxFAUAbJ5+YDMc3TLCp6DPX1nMkWh1AiqrVXJNDq67kS7
         JkhEbTmgi5eJUQkvKbFob3SY8KMInxwnKV3sNzArvUrNppiKMYtSZ/WSE4KQj2/ewNaQ
         G/8Hy+UUIRPcNm7TMGNLPN5iteFOW5v7BtrNc8XBHiGxWkmsM2H/yK/U3UubD8Sk2QeD
         IWKmUDY6lN0s9+kJmBwGDS9ZUyScZwLUsYKmVX5v0G5T3qzTv2FgiTGORuF14yGiamI8
         nG6Q==
X-Gm-Message-State: APjAAAW4aAB9XM4ZDKrRnqbqQF+XTfoP9qTYgilsbGKybz1MI4uhT6zm
        OWdD4YKFHZsVcMaZBFaNwe9v1w==
X-Google-Smtp-Source: APXvYqwhNboYAOFo2Eq0/XPNnZNqgcNjmWaxGA4Hw7IJ25NN0lvkUgCVt3/UnpQ1hpCwXf1Vlu0p/A==
X-Received: by 2002:a62:fb06:: with SMTP id x6mr724333pfm.186.1568870945159;
        Wed, 18 Sep 2019 22:29:05 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
        by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 22:29:04 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 5/6] arm64: dts: rockchip: Rename vcc12v_sys into dc_12v for roc-rk3399-pc
Date:   Thu, 19 Sep 2019 10:58:21 +0530
Message-Id: <20190919052822.10403-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is always better practice to follow regulator naming conventions
as per the schematics for future references.

This would indeed helpful to review and check the naming convention
directly on schematics, both for the code reviewers and the developers.

So, rename vcc12v_sys into dc_12v as per rk3399 power tree as per
roc-rk3399-pc schematics.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
index e09bcbdd92f5..51242ea5447d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
@@ -57,9 +57,9 @@
 	 * should be placed inside mp8859, but not until mp8859 has
 	 * its own dt-binding.
 	 */
-	vcc12v_sys: mp8859-dcdc1 {
+	dc_12v: mp8859-dcdc1 {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc12v_sys";
+		regulator-name = "dc_12v";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <12000000>;
@@ -85,7 +85,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc12v_sys>;
+		vin-supply = <&dc_12v>;
 	};
 
 	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
@@ -118,7 +118,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_sys>;
+		vin-supply = <&dc_12v>;
 	};
 
 	vdd_log: vdd-log {
-- 
2.18.0.321.gffc6fa0e3

