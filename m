Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B61D424349
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 00:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726969AbfETWBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 18:01:00 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:42585 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726830AbfETWBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 18:01:00 -0400
Received: by mail-pl1-f194.google.com with SMTP id x15so7334962pln.9
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 15:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AhecyL2qQDBC3MCxt/zq3Kbo+pVDpSa4FZM2PC318KM=;
        b=Z29uCy48sLghmNEdhhMQV0TpJwla5O9kSHf07Kq1yjC7hxkrawcDlwcEoypi9ODm+q
         n2wRZpZ1LIgMMfnJ6PFTBpPuoRTwNeP9123yeA2DpRntUT8mJfxDahavhiUY5qg6j34u
         VtKZ+kG4sPm3iPzYFN/QPEO/zwnxl/apQ8iGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AhecyL2qQDBC3MCxt/zq3Kbo+pVDpSa4FZM2PC318KM=;
        b=Lb9xPCsQaFP0hPGKcW2EBB3Trr7HumyKNlrqZeZvtm2YGTNeZXgALDmKL8hK2WORlx
         dXEmcHIbsVgvi/bQRP2MSYKFcH/QaiGBGAHUsV9xUNQLm5UPPSviGKs6ajxBxz4dNst7
         Li7eB/PdioPeU3gSDCQraBqvZP6ntHWIq31HTd0cX4RkBV2SCCsN/UUth6+h4nDdkn5T
         SpT331k8YOTcREjpsTQCwI4jG4MhQwdf7TkmtFwdx9uDmstwQeHLAVst4u3lSNyDgi+e
         1h3/e8RVFY0PRmdcxhB2bq1/QWST6jXiM7ntNWzN2rwXSEl8PsWNG9Ee8ydgyMkQiMlp
         Xd0Q==
X-Gm-Message-State: APjAAAV+ntbpuNZ4OyxJNkFVbDVF1HxrMfhWonaHMt5kBuGz460J3mHJ
        cyhPPqkF8lUYYPq1glsK4xJPsg==
X-Google-Smtp-Source: APXvYqw/+0hzgI+vOKWf7oG9dIM+CdVU0SsWOEYDBUI9M09FHn5cLFKmvyy5ff7yHB0Q6vF8xTU8XQ==
X-Received: by 2002:a17:902:8ec4:: with SMTP id x4mr68111479plo.249.1558389659959;
        Mon, 20 May 2019 15:00:59 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id u66sm21907479pfb.76.2019.05.20.15.00.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 15:00:59 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: Use the GPU to cool CPU thermal zone of veyron mickey
Date:   Mon, 20 May 2019 15:00:50 -0700
Message-Id: <20190520220051.54847-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520220051.54847-1-mka@chromium.org>
References: <20190520220051.54847-1-mka@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On rk3288 the CPU and GPU temperatures are correlated. Limit the GPU
frequency on veyron mickey to 400 MHz for CPU temperatures >= 65°C
and to 300 MHz for CPU temperatures >= 85°C.

This matches the configuration of the downstream Chrome OS 3.14 kernel,
the 'official' kernel for mickey.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- added 'cpu_warm_limit_gpu' to throttle GPU for T.cpu >= 65°C
- removed comment saying that GPU isn't throttled beyond 400 MHz
  based on CPU temperature
- updated commit message

Note: this patch depends on "ARM: dts: rockchip: Add #cooling-cells
entry for rk3288 GPU" (https://lore.kernel.org/patchwork/patch/1075005/)
---
 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index 52f6abc22291..34797abe3403 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -75,9 +75,7 @@
 	cooling-maps {
 		/*
 		 * After 1st level, throttle the CPU down to as low as 1.4 GHz
-		 * and don't let the GPU go faster than 400 MHz.  Note that we
-		 * won't throttle the GPU lower than 400 MHz due to CPU
-		 * heat--we'll let the GPU do the rest itself.
+		 * and don't let the GPU go faster than 400 MHz.
 		 */
 		cpu_warm_limit_cpu {
 			trip = <&cpu_alert_warm>;
@@ -86,6 +84,10 @@
 					 <&cpu2 THERMAL_NO_LIMIT 4>,
 					 <&cpu3 THERMAL_NO_LIMIT 4>;
 		};
+		cpu_warm_limit_gpu {
+			trip = <&cpu_alert_warm>;
+			cooling-device = <&gpu 1 1>;
+		};
 
 		/*
 		 * Add some discrete steps to help throttling system deal
@@ -125,6 +127,12 @@
 					 <&cpu2 8 THERMAL_NO_LIMIT>,
 					 <&cpu3 8 THERMAL_NO_LIMIT>;
 		};
+
+		/* At very hot, don't let GPU go over 300 MHz */
+		cpu_very_hot_limit_gpu {
+			trip = <&cpu_alert_very_hot>;
+			cooling-device = <&gpu 2 2>;
+		};
 	};
 };
 
-- 
2.21.0.1020.gf2820cf01a-goog

