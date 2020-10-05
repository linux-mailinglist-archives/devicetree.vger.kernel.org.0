Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA1FF283956
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 17:15:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726822AbgJEPP4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 11:15:56 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:50529 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726813AbgJEPP4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 11:15:56 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 73127580176;
        Mon,  5 Oct 2020 11:15:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 05 Oct 2020 11:15:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=Ut3ZT+W4+yvZB
        ml4M9YqRFh4J0n6Jv0UFC/16UuzKdY=; b=KrRTk/XHVwtlapk9qJTQG8Jw2VJuv
        wNTSQ+GKLKmdhuY463e62mvV5g/4WoY6xN0iNEk/GJThjl1M0GLhzgWxvGefbGcr
        4kE5DFA2YT0e8RFgBX2ZLT6X0jyYK+rBVUkNS0laqlYI03+8ZslkEYDl0FxCqmj2
        HaXgxAvTOmKbBNA/2qIpP9IBmjYAX6Ejn6aRcbyXQbg2U815kqV7BIRTlcdeR/7/
        qTolsS45EYWa30ZU+JKb6aBuKUUDMs80WNZuwisy7StB77hAf/Lr2kkMc2Jbs+HJ
        e5QA8ESMb20n44z9AllNwd5WYWbI28XgS+uwQ/AiWve+1aMBJ6T2IIi1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=Ut3ZT+W4+yvZBml4M9YqRFh4J0n6Jv0UFC/16UuzKdY=; b=IFhHuvE3
        KxDWmY35DYhw26Kv2jEblDP9dS3mvO7nksq3MHhSEJiI0WkGaIpTw5c8skEWA1Di
        ATYjRZPOx8YNMIi8ys1BBgRa4M5TptGtU1LeaM4A36tFevkzv3+pzQxaq65IRkR+
        AnvdiG5kNnkItrq79HyaVYpE4TzzPFKo4YpikhOlmWVupRJ2AoaN7Z3gx4hdCf5m
        AzB9R+NT4v4hilDwa2ltYTn0bnZeiGecjWBnprJS3CWSPwPy0xLckftwCLy/QH+b
        riFh7TG+Oir4m9qfOXJ2yxcMsGXLw4hwppOTNq+qGgsxfIojYKR/roe34Xx0XkQ4
        GL+9WoUyMaOy/Q==
X-ME-Sender: <xms:qzh7XzAvGxydSQJv0HBBiQKhXpZiF_k0Xy0hv7MpvMYs9468cGN_EA>
    <xme:qzh7X5hTLsyU-ClIfqmY3c0gXygFk0KIpDx5_bWMaO7TC3XsV-ez0qu-j5S0Spjnp
    6Aek6N6-iHAAywgSI8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgedvgdekjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qzh7X-l_VGbn_xk80qRx1rdhhFta3YpJVe_g24maDRZyelT0T5N_Jw>
    <xmx:qzh7X1w4lbqUq76VmNqXGHF5JxqBXiv8EZA40gguXAgAvHXz8tG95Q>
    <xmx:qzh7X4RrP3tKu5on4tHpm8URm3O1dZ5ERsfxa-lEyiDNr7jra7LBlA>
    <xmx:qzh7X9LmJ5Ik0OcGd2v8vIETNYGCL0cS4f09YCjnw4fwRF7w66eP3Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id D7847328005E;
        Mon,  5 Oct 2020 11:15:54 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        dri-devel@lists.freedesktop.org
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v3 6/6] [DO NOT MERGE] ARM: dts: sun7i: Enable LVDS Dual-Link on the Cubieboard
Date:   Mon,  5 Oct 2020 17:15:44 +0200
Message-Id: <c47e17763c45cffb34a580fc8ad1e8e85b0f8469.1601910923.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
References: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For the sake of the example, let's enable an LVDS Dual-Link display on a
Cubieboard.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts | 69 ++++++++++++++++++++++-
 1 file changed, 69 insertions(+)

diff --git a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
index b8203e4ef21c..20278a27ec16 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
@@ -85,6 +85,49 @@
 			gpios = <&pio 7 20 GPIO_ACTIVE_HIGH>;
 		};
 	};
+
+	panel: panel {
+		compatible = "panel-lvds";
+		width-mm = <153>;
+		height-mm = <90>;
+		data-mapping = "vesa-24";
+
+		panel-timing {
+			clock-frequency = <148500000>;
+			hfront-porch = <88>;
+			hactive = <1920>;
+			hback-porch = <148>;
+			hsync-len = <44>;
+
+			vfront-porch = <4>;
+			vactive = <1080>;
+			vback-porch = <36>;
+			vsync-len = <5>;
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				dual-lvds-even-pixels;
+
+				panel_input_0: endpoint {
+					remote-endpoint = <&tcon0_out_panel>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				dual-lvds-odd-pixels;
+
+				panel_input_1: endpoint {
+					remote-endpoint = <&tcon1_out_panel>;
+				};
+			};
+		};
+	};
 };
 
 &ahci {
@@ -218,6 +261,32 @@
 	status = "okay";
 };
 
+&tcon0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcd_lvds0_pins>;
+	allwinner,lvds-companion = <&tcon1>;
+	status = "okay";
+};
+
+&tcon0_out {
+	tcon0_out_panel: endpoint@0 {
+		remote-endpoint = <&panel_input_0>;
+	};
+};
+
+&tcon1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcd_lvds1_pins>;
+	allwinner,lvds-companion = <&tcon0>;
+	status = "okay";
+};
+
+&tcon1_out {
+	tcon1_out_panel: endpoint@0 {
+		remote-endpoint = <&panel_input_1>;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;
-- 
git-series 0.9.1
