Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2527B3D1089
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239070AbhGUNYS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:18 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:54617 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239047AbhGUNYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:18 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id BCEAB5C0218;
        Wed, 21 Jul 2021 10:04:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 21 Jul 2021 10:04:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=yFyu/Rg22jrqa
        k0+ue6zskvujzzVlhA10m4P5xXkkiA=; b=xslnAzuyqezg5vc9HfyAF2rKJbbF+
        RoquyjYqn/KCUzUP0oAn2iz8+dgQUffabQcDDy7CwTj2Egt3uKNFFSAWVjwApTQh
        Lk6giJw0tguyzh0gW4zKzBqhQ/7/oBwu5q7IeZraEBxUCziWEzkgKmy79S+6axcu
        v3SfowqyNuLArMK7wPQrXFEP7YkTbr3SFecZYeTDecpjSwf9xoEW3CblPp/RUz39
        +Hxxki3WkeGHHFh00Qb8WMvVOXD3xzbIom+gjP7CusCh24dkFZ6P+tFze+N0juT2
        12oNGSW7XzTgjQcNDKAGwAI6TViPObbpZbn0n02WJZz6I8r+5B2DhdeMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yFyu/Rg22jrqak0+ue6zskvujzzVlhA10m4P5xXkkiA=; b=j6BTePYL
        aUWJ1299y4qDc5S2oEToZFmUB/gOQrILrsaTvHVNSolXE1tgu75+uVjCzNPv0PEW
        8HbG6xydopdcTHUBlwiqI9Q0ZhBE+dvoO0n9wraG4xijocrBrh273ZTwOcktl853
        17LizD1kGjPwIjnKIuQ3Rauh8opMGVx9xT1nzCVxoTr01BMQ36xrH26n5Y52zFRJ
        1RE4gnRc3seTNPb6sZTGIoKy2SS5xUyCBiUPwQwjF0HXKUz5bGfcBRoYlCEzEpuU
        shBUZ4Ge0izqVz0uTR331E/rwZ80GuauP5IMsIT2d3LqdwkspYG4u+P6xnzdZ5Q8
        +Xehcy1Nsb70lQ==
X-ME-Sender: <xms:hin4YB4GB9WME7OifU17TDM-hM6h469-ldEuUjib9_MIa0bImx_3vA>
    <xme:hin4YO6qGvOMaaDZ42MosC5wlmVB3aTmvxdFdCRkHZ0A_cMnNIZmTeCozv6pTlPNj
    oRZlCCXagoCtzaScGs>
X-ME-Received: <xmr:hin4YIfztGbzR28hSaxaDo7kpcfjVa2H3PoppuZxDNKK7Sb90WxG1KXXGraIkUKvhP2UTejLF2o0K8XR-yJgNeaQPS4khznWQjTG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:hin4YKJmLiVPjlZ4-rK79JCI7tzTKGDNbEjiqNmzNojsEKScghGEVQ>
    <xmx:hin4YFIDk9oK9vvQMYplNFoWQdexjLhd_vGCxA8hKUixLhhoeSJKIA>
    <xmx:hin4YDyyEtL6jMZfzTUu_6OdU3NFam3qpi9VuvzSOKrrBzTNdGowKA>
    <xmx:hin4YKrMXJVfhA57LIzPftu98Qm6eusrZ41voltfLNvCFN8d3lwG5g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:54 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Johan Hovold <johan@kernel.org>
Subject: [PATCH 12/54] dt-bindings: gnss: Convert UBlox Neo-6M binding to a schema
Date:   Wed, 21 Jul 2021 16:03:42 +0200
Message-Id: <20210721140424.725744-13-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The UBlox Neo 6M is supported by Linux thanks to its device tree
binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Johan Hovold <johan@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/gnss/u-blox,neo-6m.yaml          | 62 +++++++++++++++++++
 .../devicetree/bindings/gnss/u-blox.txt       | 45 --------------
 2 files changed, 62 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
 delete mode 100644 Documentation/devicetree/bindings/gnss/u-blox.txt

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
new file mode 100644
index 000000000000..45b886ae0f45
--- /dev/null
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gnss/u-blox,neo-6m.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: U-blox GNSS Receiver Device Tree Bindings
+
+maintainers:
+  - Johan Hovold <johan@kernel.org>
+
+description: >
+  The U-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
+
+properties:
+  compatible:
+    enum:
+      - u-blox,neo-6m
+      - u-blox,neo-8
+      - u-blox,neo-m8
+
+  reg:
+    description: >
+      The DDC Slave Address, SPI chip select address, the number of the USB hub
+      port or the USB host-controller port to wich this device is attached,
+      depending on the bus used. Required for the DDC, SPI or USB busses.
+
+  vcc-supply:
+    description: >
+      Main voltage regulator
+
+  timepulse-gpios:
+    maxItems: 1
+    description: >
+      Time pulse GPIO
+
+  u-blox,extint-gpios:
+    maxItems: 1
+    description: >
+      GPIO connected to the "external interrupt" input pin
+  
+  v-bckp-supply:
+    description: >
+      Backup voltage regulator
+
+  current-speed: true
+
+required:
+  - compatible
+  - vcc-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    uart {
+        gnss {
+            compatible = "u-blox,neo-8";
+            v-bckp-supply = <&gnss_v_bckp_reg>;
+            vcc-supply = <&gnss_vcc_reg>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/gnss/u-blox.txt b/Documentation/devicetree/bindings/gnss/u-blox.txt
deleted file mode 100644
index 7cdefd058fe0..000000000000
--- a/Documentation/devicetree/bindings/gnss/u-blox.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-u-blox GNSS Receiver DT binding
-
-The u-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
-
-Please see Documentation/devicetree/bindings/gnss/gnss.txt for generic
-properties.
-
-Required properties:
-
-- compatible	: Must be one of
-
-			"u-blox,neo-6m"
-			"u-blox,neo-8"
-			"u-blox,neo-m8"
-
-- vcc-supply	: Main voltage regulator
-
-Required properties (DDC):
-- reg		: DDC (I2C) slave address
-
-Required properties (SPI):
-- reg		: SPI chip select address
-
-Required properties (USB):
-- reg		: Number of the USB hub port or the USB host-controller port
-                  to which this device is attached
-
-Optional properties:
-
-- timepulse-gpios	: Time pulse GPIO
-- u-blox,extint-gpios	: GPIO connected to the "external interrupt" input pin
-- v-bckp-supply	: Backup voltage regulator
-
-Example:
-
-serial@1234 {
-	compatible = "ns16550a";
-
-	gnss {
-		compatible = "u-blox,neo-8";
-
-		v-bckp-supply = <&gnss_v_bckp_reg>;
-		vcc-supply = <&gnss_vcc_reg>;
-	};
-};
-- 
2.31.1

