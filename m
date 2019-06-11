Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5AE3C1DA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 06:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388735AbfFKED7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 00:03:59 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:44071 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728685AbfFKED6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 00:03:58 -0400
Received: by mail-pf1-f193.google.com with SMTP id t16so6522219pfe.11
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
        b=NpIiYZAZ293e5siqen5Oz27pVJuQEiqx/skxzzgF9MmBRxj1DCy5igwLq3xQY5fLt4
         6ijSQMHl5nqD2CEkVoKO7bNwFt2FMABbPicsIoQ+6XGy1CrK43ONHRMIiygoP/GBi1Tx
         mpT3cNIEtjV+ei2btpQJ+tOS5TF+m8OjwvjZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
        b=QNQxW4hVDIU4sxvGvfB5Jw7jp/PkDcEMgjc0GBH46wwCXLLndMzdWAnPSghkHBNOHV
         370aNWReeLZfJiE2q+rra2XQ27xj+xNCtSQT9dvmfFtdNX+VvFeg52ktX/ptOSMll8La
         VUAUmMcOjMgWg7MLrh1D/bemsrf0aWa9z+tXyg8dPg/y3OM7ypHkjKX3Li7EMl8tgEXM
         ZxwznK1uzCJG+L4U2AQVI8JHjwT6I/kr06PhVnGP950sZtFao9I0Qn0NO7EfLgL53Ewm
         tMYJWdBv1tGpv9g1Wpgalmmj3XZeq4YHx48dzdFgz0V2HLAU5nO685WLsy3NwwKHaA7G
         Mr1Q==
X-Gm-Message-State: APjAAAU5wIVRNsSqKbURAZvFe27PZ+lnIZ8Ty6E0HiZ8TRG3IeveIGWI
        VU/9YPMgzvsjeRk0QlgT5AWmEA==
X-Google-Smtp-Source: APXvYqztkWgDwmpShVmNY3JX/yoLvhlQG+pv1dg44RWOiGpLZ5kd7o3wLJ474CqYq7S74tPbVuKsCw==
X-Received: by 2002:aa7:825a:: with SMTP id e26mr79303252pfn.255.1560225837698;
        Mon, 10 Jun 2019 21:03:57 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
        by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.56
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 10 Jun 2019 21:03:57 -0700 (PDT)
From:   Derek Basehore <dbasehore@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        intel-gfx@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Derek Basehore <dbasehore@chromium.org>
Subject: [PATCH 2/5] dt-bindings: display/panel: Expand rotation documentation
Date:   Mon, 10 Jun 2019 21:03:47 -0700
Message-Id: <20190611040350.90064-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds to the rotation documentation to explain how drivers should
use the property and gives an example of the property in a devicetree
node.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
index e2e6867852b8..f35d62d933fc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel.txt
+++ b/Documentation/devicetree/bindings/display/panel/panel.txt
@@ -2,3 +2,35 @@ Common display properties
 -------------------------
 
 - rotation:	Display rotation in degrees counter clockwise (0,90,180,270)
+
+Property read from the device tree using of of_drm_get_panel_orientation
+
+The panel driver may apply the rotation at the TCON level, which will
+make the panel look like it isn't rotated to the kernel and any other
+software.
+
+If not, a panel orientation property should be added through the SoC
+vendor DRM code using the drm_connector_init_panel_orientation_property
+function.
+
+Example:
+	panel: panel@0 {
+		compatible = "boe,himax8279d8p";
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		pp33-gpios = <&pio 35 0>;
+		pp18-gpios = <&pio 36 0>;
+		pinctrl-names = "default", "state_3300mv", "state_1800mv";
+		pinctrl-0 = <&panel_pins_default>;
+		pinctrl-1 = <&panel_pins_3300mv>;
+		pinctrl-2 = <&panel_pins_1800mv>;
+		backlight = <&backlight_lcd0>;
+		rotation = <180>;
+		status = "okay";
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

