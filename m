Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4F503A47C7
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 19:19:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231679AbhFKRVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 13:21:42 -0400
Received: from mail-pf1-f172.google.com ([209.85.210.172]:33707 "EHLO
        mail-pf1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231698AbhFKRVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 13:21:30 -0400
Received: by mail-pf1-f172.google.com with SMTP id p13so5005170pfw.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 10:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lm8f+cgoTyoMv6LojWG+q+HbbYy9bIevpHmIO6bhvFQ=;
        b=SONsjUgaSCpjesoP57Duff7/N9FbooF+6xHaFm2/6+0js4J+/5pRap7OlmmS6K14OC
         ALyszZdGFo6vkpx671CpBwRK1M+sBHUkQdLVLzPPpK5eTOW5eAKNSvFxiZfAoJwAv/Da
         YdS1mTEgZqaSZIr66gQ04l0kBwMxoaGE4mjA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lm8f+cgoTyoMv6LojWG+q+HbbYy9bIevpHmIO6bhvFQ=;
        b=cgQQ10nK7QlfFJYg+LRn2FopNQgQLKOJl7gx2XLSFYTddZ21kuyLjA0duUrNnkJiCk
         IPNJhwTPO8KR35NNCCwIY3p3DVxt8XKpsNX7XFYApqCsseJ+viy6TZOehkFTuCfUHZqL
         otxH6j2naim+UU66UpN7O5O83Sq6FVvaThAXV97rcVnh7w7I//97dH7LS3lqZF18nri6
         QUkNtOuA+jCGKnXSaTMfPAYXs8MfJhADqVIvRJ3q7+GEDy/fpnBCf2eT3ot7KBzKdMp8
         Nwibyw2xjNfK3/HRtpO6WyVerd2FfpJzyn2BM/z3hG9Md6HniOn1nXhUHx7IbH5wGzwG
         Ud3w==
X-Gm-Message-State: AOAM532ftfCo8CF1L7rIvpEN8h7OSuqmw8tnFz6o3hVPZ5jbS4CyKV+K
        qXbyR5Jdog6AYzwP27u3RmOL3g==
X-Google-Smtp-Source: ABdhPJwxVBdz4VSd37xZGkjqd3eRlnc19a2QDpFiFB3/GkJaeo2YWCuLiYi8i0v5Gh0sqIcBFVsV3w==
X-Received: by 2002:a63:3145:: with SMTP id x66mr4629677pgx.117.1623431903362;
        Fri, 11 Jun 2021 10:18:23 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:4128:5428:5cd0:cfa5])
        by smtp.gmail.com with ESMTPSA id f17sm5837850pgm.37.2021.06.11.10.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 10:18:23 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Lyude Paul <lyude@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Steev Klimaszewski <steev@kali.org>,
        Linus W <linus.walleij@linaro.org>, robdclark@chromium.org,
        dri-devel@lists.freedesktop.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v10 11/11] arm64: dts: qcom: sc7180-trogdor: Move panel under the bridge chip
Date:   Fri, 11 Jun 2021 10:17:47 -0700
Message-Id: <20210611101711.v10.11.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210611171747.1263039-1-dianders@chromium.org>
References: <20210611171747.1263039-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Putting the panel under the bridge chip (under the aux-bus node)
allows the panel driver to get access to the DP AUX bus, enabling all
sorts of fabulous new features.

While we're at this, get rid of a level of hierarchy for the panel
node. It doesn't need "ports / port" and can just have a "port" child.

For Linux, this patch has a hard requirement on the patches adding DP
AUX bus support to the ti-sn65dsi86 bridge chip driver. See the patch
("drm/bridge: ti-sn65dsi86: Add support for the DP AUX bus").

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

(no changes since v7)

Changes in v7:
- Panel now under bridge chip instead of getting a link to ddc-i2c

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 30 ++++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 24d293ef56d7..c76afd857b54 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -260,21 +260,6 @@ max98357a: audio-codec-0 {
 		#sound-dai-cells = <0>;
 	};
 
-	panel: panel {
-		/* Compatible will be filled in per-board */
-		power-supply = <&pp3300_dx_edp>;
-		backlight = <&backlight>;
-		hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
-
-		ports {
-			port {
-				panel_in_edp: endpoint {
-					remote-endpoint = <&sn65dsi86_out>;
-				};
-			};
-		};
-	};
-
 	pwmleds {
 		compatible = "pwm-leds";
 		keyboard_backlight: keyboard-backlight {
@@ -674,6 +659,21 @@ sn65dsi86_out: endpoint {
 				};
 			};
 		};
+
+		aux-bus {
+			panel: panel {
+				/* Compatible will be filled in per-board */
+				power-supply = <&pp3300_dx_edp>;
+				backlight = <&backlight>;
+				hpd-gpios = <&sn65dsi86_bridge 2 GPIO_ACTIVE_HIGH>;
+
+				port {
+					panel_in_edp: endpoint {
+						remote-endpoint = <&sn65dsi86_out>;
+					};
+				};
+			};
+		};
 	};
 };
 
-- 
2.32.0.272.g935e593368-goog

