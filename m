Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15B35CC35B
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 21:09:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728762AbfJDTJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 15:09:23 -0400
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.83]:13460 "EHLO
        mo4-p02-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727978AbfJDTJX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 15:09:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570216161;
        s=strato-dkim-0002; d=fpond.eu;
        h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
        X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
        bh=e7Uk4dL2nxqLZgp4qDJcGqjX0Y1/EQyvkzzozndC2zk=;
        b=XVJkN+hsfN52T2ItunZHK5M6smgiuJD7wCNfqM/izmerwBtM85XeagN3P0Zbhm2S60
        V1d9MBDvkx+cPRWimi1JznUEFxsrfOOhBRnvze7kAd5XRKzg6GlZ6sQKgojd9YuUgu3b
        epte899GcTMy6piJeuBNSyOhrcQieLru9dEoCT0z/6/L6A4/BVCnYSfZJ6NCtdsGn/nR
        gT0FDHJ7GQeFnqNXz8dA4d0yrPsHQDQbTC4SR3W5ScgVnkLLT7PZDlndfP58zspXayrF
        Ryh8Si1CvpD46iommaOnj3q0MQbCeDPq1XbP81R/EyZuWDqAakQZ1Wo9GECrel8lg0f1
        +3Dg==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73dmm4I5W0/AvA67Ot4fvR82tdd3x2KJk="
X-RZG-CLASS-ID: mo00
Received: from groucho.site
        by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
        with ESMTPSA id i07086v94J9EcdY
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH bits, eq. 15360 bits RSA))
        (Client did not present a certificate);
        Fri, 4 Oct 2019 21:09:14 +0200 (CEST)
From:   Ulrich Hecht <uli@fpond.eu>
To:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, jitao.shi@mediatek.com
Cc:     robh+dt@kernel.org, p.zabel@pengutronix.de,
        enric.balletbo@collabora.com, djkurtz@chromium.org,
        architt@codeaurora.org, matthias.bgg@gmail.com,
        mark.rutland@arm.com, stonea168@163.com, andy.yan@rock-chips.com,
        ajaykumar.rs@samsung.com, vpalatin@chromium.org,
        cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
        ck.hu@mediatek.com, devicetree@vger.kernel.org,
        kernel@pengutronix.de, pawel.moll@arm.com,
        ijc+devicetree@hellion.org.uk, inki.dae@samsung.com,
        yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
        rahul.sharma@samsung.com, galak@codeaurora.org,
        seanpaul@chromium.org, Ulrich Hecht <uli@fpond.eu>
Subject: [PATCH v19 1/2] Documentation: bridge: Add documentation for ps8640 DT properties
Date:   Fri,  4 Oct 2019 21:09:07 +0200
Message-Id: <1570216148-22802-2-git-send-email-uli@fpond.eu>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570216148-22802-1-git-send-email-uli@fpond.eu>
References: <1570216148-22802-1-git-send-email-uli@fpond.eu>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jitao Shi <jitao.shi@mediatek.com>

Add documentation for DT properties supported by
ps8640 DSI-eDP converter.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Ulrich Hecht <uli@fpond.eu>
---

Changes since v18:
 - No change.

Changes since v17:
 - No change.

Changes since v16:
 - No change.

Changes since v15:
 - No change.

Changes since v14:
 - change mode-sel-gpios as optional.

 .../devicetree/bindings/display/bridge/ps8640.txt  | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/ps8640.txt b/Documentation/devicetree/bindings/display/bridge/ps8640.txt
new file mode 100644
index 0000000..7b13f92
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ps8640.txt
@@ -0,0 +1,44 @@
+ps8640-bridge bindings
+
+Required properties:
+	- compatible: "parade,ps8640"
+	- reg: first page address of the bridge.
+	- sleep-gpios: OF device-tree gpio specification for PD pin.
+	- reset-gpios: OF device-tree gpio specification for reset pin.
+	- vdd12-supply: OF device-tree regulator specification for 1.2V power.
+	- vdd33-supply: OF device-tree regulator specification for 3.3V power.
+	- ports: The device node can contain video interface port nodes per
+		 the video-interfaces bind[1]. For port@0,set the reg = <0> as
+		 ps8640 dsi in and port@1,set the reg = <1> as ps8640 eDP out.
+
+Optional properties:
+	- mode-sel-gpios: OF device-tree gpio specification for mode-sel pin.
+[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Example:
+	edp-bridge@18 {
+		compatible = "parade,ps8640";
+		reg = <0x18>;
+		sleep-gpios = <&pio 116 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
+		mode-sel-gpios = <&pio 92 GPIO_ACTIVE_HIGH>;
+		vdd12-supply = <&ps8640_fixed_1v2>;
+		vdd33-supply = <&mt6397_vgp2_reg>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				reg = <0>;
+				ps8640_in: endpoint {
+					remote-endpoint = <&dsi0_out>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+				ps8640_out: endpoint {
+					remote-endpoint = <&panel_in>;
+				};
+			};
+		};
+	};
-- 
2.7.4

