Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D22F22962C
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 12:43:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390666AbfEXKno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 06:43:44 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:36523 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390604AbfEXKno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 06:43:44 -0400
Received: by mail-pf1-f195.google.com with SMTP id v80so5113938pfa.3
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 03:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qNTSCPsOEC2W2+GNT7l2VKFB0+zY6ZYUs+njP7ZZryY=;
        b=MMbn8v2Zd2qsn/V/zb6Mt7MtfVlWEps+yV995UvWXL1qqyAQ3BZmYedcZmufHrmzso
         pmn/HjUvKsI28wdzVni96j2suAg2VF2NOyBYHDWkoag8/K6d/bRvl3k9S3+JbubG81qG
         C/PJWR2X8Czf3xVJnt9ALXMpfquiiK0chagBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qNTSCPsOEC2W2+GNT7l2VKFB0+zY6ZYUs+njP7ZZryY=;
        b=eg3nP51LaCZ6/Svlxj1E4tjVnHM/qzTlh6y/pj6nLRbXYdAq7SwHDHtftAVke3K4BI
         DKuxfqvpfIGVKb1TTW69Mdou6lu2pCkXKqkMZpVNNa1ZKALmZBeNAEUDBKd8JLUR8HBj
         +cROU3qgXtADeMv5J3WQhTva/h4OwGjw7FWUs8udbbU9exB2IDq+Od6IZ7pC0Rdd6EU0
         sf2uXNwk2oeGi2VNJmW1LX4IyEiVp/JtCu8SmWeR/xcwB5APdE88VgfsNDXYFLfmxFHT
         zaYzKUkm52/JgCen3XRAI/kSrSG02cALPm6riVwNkwSh2bYDj4cl6NU7RSWQVClSJ9Y9
         q/ZA==
X-Gm-Message-State: APjAAAW9h+GPv8DDEe5O3Fz8yuA3TMGI24pfRgxuY2TFsdS/ZMnZb3lf
        t90bNWcF73a4vztjDDgFYEehJw==
X-Google-Smtp-Source: APXvYqwKcohDIPUT5/aEC255pUPB2TXqU3TOva/kNXfG24c8fTCD7t9u2h8RQ7FYuSxfiGAGamTVqQ==
X-Received: by 2002:a62:5653:: with SMTP id k80mr110389226pfb.144.1558694623629;
        Fri, 24 May 2019 03:43:43 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
        by smtp.gmail.com with ESMTPSA id h11sm2303416pfn.170.2019.05.24.03.43.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 03:43:43 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 4/6] dt-bindings: display: bridge: Add ICN6211 MIPI-DSI to RGB converter bridge
Date:   Fri, 24 May 2019 16:13:15 +0530
Message-Id: <20190524104317.20287-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190524104317.20287-1-jagan@amarulasolutions.com>
References: <20190524104317.20287-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
It has a flexible configuration of MIPI DSI signal input
and produce RGB565, RGB666, RGB888 output format.

Add dt-bingings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../display/bridge/chipone,icn6211.txt        | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
new file mode 100644
index 000000000000..53a9848ef8b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
@@ -0,0 +1,78 @@
+Chipone ICN6211 MIPI-DSI to RGB Converter Bridge
+
+ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
+It has a flexible configuration of MIPI DSI signal input
+and produce RGB565, RGB666, RGB888 output format.
+
+Required properties for RGB:
+- compatible: must be "chipone,icn6211"
+- reg: the virtual channel number of a DSI peripheral
+- reset-gpios: a GPIO phandle for the reset pin
+
+The device node can contain following 'port' child nodes,
+according to the OF graph bindings defined in [1]:
+  0: DSI Input, not required, if the bridge is DSI controlled
+  1: RGB Output, mandatory
+
+[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Example:
+
+	panel {
+		compatible = "bananapi,s070wv20-ct16", "simple-panel";
+		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
+		backlight = <&backlight>;
+
+		port {
+			panel_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_panel>;
+			};
+		};
+	};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dsi_out: port@0 {
+			reg = <0>;
+
+			dsi_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_dsi>;
+			};
+		};
+	};
+
+	bridge@0 {
+		compatible = "chipone,icn6211";
+		reg = <0>;
+		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			bridge_in: port@0 {
+				reg = <0>;
+
+				bridge_out_dsi: endpoint {
+					remote-endpoint = <&dsi_out_bridge>;
+				};
+			};
+
+			bridge_out: port@1 {
+				reg = <1>;
+
+				bridge_out_panel: endpoint {
+					remote-endpoint = <&panel_out_bridge>;
+				};
+			};
+		};
+	};
+};
-- 
2.18.0.321.gffc6fa0e3

