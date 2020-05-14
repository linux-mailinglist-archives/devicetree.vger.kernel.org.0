Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46F061D3323
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2020 16:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726051AbgENOgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 10:36:35 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:60738 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726146AbgENOgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 May 2020 10:36:35 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 5D1B42A2EE1
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie,
        shawnguo@kernel.org
Subject: [PATCH v2 1/4] ARM: dts: dove: Make the DT compliant with the ti,tfp410 binding
Date:   Thu, 14 May 2020 16:36:09 +0200
Message-Id: <20200514143612.2094-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a 'ports' node for 'dvi: video@39' and use the proper naming for
the powerdown-gpios property to make it compliant with the ti,tfp410
binding.

This fills the minimum requirements to meet the binding requirements,
port endpoints are not defined.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
 arch/arm/boot/dts/dove-sbc-a510.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/dove-sbc-a510.dts b/arch/arm/boot/dts/dove-sbc-a510.dts
index 2bb85a9b7614..32804c981625 100644
--- a/arch/arm/boot/dts/dove-sbc-a510.dts
+++ b/arch/arm/boot/dts/dove-sbc-a510.dts
@@ -132,7 +132,18 @@
 	dvi: video@39 {
 		compatible = "ti,tfp410";
 		reg = <0x39>;
-		powerdown-gpio = <&gpio_ext 3 GPIO_ACTIVE_LOW>;
+		powerdown-gpios = <&gpio_ext 3 GPIO_ACTIVE_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				reg = <0>;
+			};
+			port@1 {
+				reg = <1>;
+			};
+		};
 	};
 };
 
-- 
2.18.0

