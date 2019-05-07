Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 681EE1643F
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 15:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726481AbfEGNHa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 09:07:30 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:41595 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726406AbfEGNH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 09:07:29 -0400
Received: by mail-pl1-f195.google.com with SMTP id d9so8173544pls.8
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 06:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zVEShq2r+HH1dqUKjsY/tIvQnR4fC4lx62sAnv2cszQ=;
        b=jm+TvJfNFt6JoZDpIcsdQYCpeFYqOblkOGI08ywsGy57x+8/bmkSF4Jiva803NbPKE
         s7m5WLd6gfL1+tbGQjSyYmf3uBgqOudNS4xmd/KNNKzha6oI95GWuIDU4syC1mQ+66W8
         lrUJaarBqXPhwdumssK7oXfiCQKiWLW3S0Kas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zVEShq2r+HH1dqUKjsY/tIvQnR4fC4lx62sAnv2cszQ=;
        b=m6Ilp9UIIRfiascoR3E/dKiLkoXSd6B4MuNiCAsB+BYRQ8Jbgx1bfeVQTgSG9BjInl
         xDe/oRUUJD1/K44cflFHK547d2zQjG6qmkF4UgUQx7KwAR/65cECs6a77251iycrsk4u
         2PxXxssvKOErnE5sebriD6avElBQuJNz6lB79jg+vFPk22S0lu4iic9cLZnKdyAtqD7x
         ILTmRXPihXRRc3v2yYdO1sNY+qkrpRJ1DR5PeF1zODnEalQyxv6qZkMHjSj4goqN38TE
         jwtRubqfmYz2e8gkGlZvmH+a2CR6rn75VjwqRV0ehsgEGJp+WY411mGj2jA2wIVlbWjm
         yvyw==
X-Gm-Message-State: APjAAAXUOdC/XHBb6ud4xr0JGn5zHAenhFdOe55FFL6XLCwLrJSOmSmg
        KlzuHC0xEqd2pD2zBtzEi89zYg==
X-Google-Smtp-Source: APXvYqxTNLStKgWqhFuYnzLAEpQKZaTXrhsWJy7MmuW5PcblTQp6f4JovNxg5jyNfUeBBZ2VP2/bHQ==
X-Received: by 2002:a17:902:2a:: with SMTP id 39mr39639547pla.64.1557234449180;
        Tue, 07 May 2019 06:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:3682:cdb6:452:ecda:bdfa:452e])
        by smtp.gmail.com with ESMTPSA id w190sm21889823pfb.101.2019.05.07.06.07.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 06:07:28 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/3] dt-bindings: display: Document FriendlyELEC HD702E LCD panel
Date:   Tue,  7 May 2019 18:37:06 +0530
Message-Id: <20190507130708.11255-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
resolution. It has built in Goodix, GT9271 captive touchscreen
with backlight adjustable via PWM.

Add dt-bindings documentation for it.
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- separate binding patch from driver
- Add simple-panel compatible as fallback
- Add text info about simple-panel bindings

 .../display/panel/friendlyarm,hd702e.txt      | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt

diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
new file mode 100644
index 000000000000..6c9156fc3478
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
@@ -0,0 +1,32 @@
+FriendlyELEC HD702E 800x1280 LCD panel
+
+HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
+resolution. It has built in Goodix, GT9271 captive touchscreen
+with backlight adjustable via PWM.
+
+Required properties:
+- compatible: should be "friendlyarm,hd702e"
+- power-supply: regulator to provide the supply voltage
+
+Optional properties:
+- backlight: phandle of the backlight device attached to the panel
+
+Optional nodes:
+- Video port for LCD panel input.
+
+This binding is compatible with the simple-panel binding, which is specified
+in simple-panel.txt in this directory.
+
+Example:
+
+	panel {
+		compatible ="friendlyarm,hd702e", "simple-panel";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
-- 
2.18.0.321.gffc6fa0e3

