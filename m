Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0FDC3D107D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238948AbhGUNYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:01 -0400
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:53597 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238976AbhGUNX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:23:59 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailnew.nyi.internal (Postfix) with ESMTP id 42B125809C2;
        Wed, 21 Jul 2021 10:04:36 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 21 Jul 2021 10:04:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=Qg2NPL/yZBC7I
        3hyaV9giczjY9T0ILg1ulIEH+Zapyc=; b=nHYd2x17bk+by/B+Rhwbj/HOInlfa
        HLaK2LIicSbg1B8qGwB7gMn0Zuhkwf7tpi+b4k44fUI0gcPKDbeyrg1BleHZZmvm
        b6JOBYeRnyA0WtxTnP5QrfSvm8SnwpADL1iu2Tp4S6tClcBJQwVzcwQrdeGxMKGO
        2/aywLi9xJG0uD8de3eqtQTd9DRG/dMnHqrUcLANC4/cLEJugYf4sCcybONCtc0V
        DOWuJOS352Z+aZ+pa1uafa10f9+YBsmbnw/ejBemoDaQmGjDLcoyif5loL7bn+nP
        QUQ97kCmBBtqOMchXvxPZ33EcfXALAaqzVWmMVK1RXBr1Hg50hLUtKlcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=Qg2NPL/yZBC7I3hyaV9giczjY9T0ILg1ulIEH+Zapyc=; b=koyCtw10
        raK/A/YJRpCo2dpUsLdYtwkYtrLYjRSV4WZrEbKfMfCDYZ9EtSMqX1B+6z8pFaIp
        R7Kt3dZ6ZwieUgE6mWFSyfRdPNCAyytqou3Gt0dLxMyv//utr4tnvBMfJCbN3R4Y
        qIvU5ot+gyjVSM2niNyepRtE2EroulirJMEwaGFrvvZ0LT30YDgjpXU5zXg9ahyv
        lybHy9KYnif3mo5SMEhPyUR4S2mdGlYD/rUCUFq15w5yBf2tekD1Kl95ZcyQmzLQ
        3WMVBfg54o1OK439KmbTNR+/ifJ+PBZpbBK4NiusPUFOl8c05wm0Uhs64Vk575hs
        z5kZZ4OKKSHlgQ==
X-ME-Sender: <xms:cyn4YCl9ssv0Xz3ayIt8OV-Z_3F078wWR86776cuHBlIkwotYUfgVw>
    <xme:cyn4YJ08NE_Q9rta9_KvN2KA4uHbO5YOd0HExIdAIqJoCnOzx6tngDjiKIbnY2iY9
    oXkweYFoYa3DCH_Ws0>
X-ME-Received: <xmr:cyn4YAo1z6XBKFR1eZ5zVleQa9Gc2FF0JwrVQeY1N6Jt-fANeQhfwIdqj76t-TWUbU1xAHqnEi4lani5eNFjYIN_9F470aPmA-Ib>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:cyn4YGn9-5iUm7SLRQtlFCJT1W_UpeIgV7PwkrcHZq-a89WSuYeUIA>
    <xmx:cyn4YA0AB3DWmiozyx1Kmk8S9CPsdKn2GmmheFSmcAZ0m9swX9nSOg>
    <xmx:cyn4YNtP6c-NcW-eVnG2MhHZgJ4-N-TZ4C80_NgYYlRqtwBGpu4EOg>
    <xmx:dCn4YGxKnyC-oPzPOsDYp--M_i23VyOI_VzdDY4QMASgSlBXRZYx_Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:35 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH 03/54] ASoC: dt-bindings: Convert SPDIF Transmitter binding to a schema
Date:   Wed, 21 Jul 2021 16:03:33 +0200
Message-Id: <20210721140424.725744-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SPDIF Transmitter binding is used by Linux with a matching Device
Tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: alsa-devel@alsa-project.org
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/sound/linux,spdif-dit.yaml       | 32 +++++++++++++++++++
 .../bindings/sound/spdif-transmitter.txt      | 10 ------
 2 files changed, 32 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/spdif-transmitter.txt

diff --git a/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml b/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
new file mode 100644
index 000000000000..c6b070e1d014
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Dummy SPDIF Transmitter Device Tree Bindings
+
+maintainers:
+  - Mark Brown <broonie@kernel.org>
+
+properties:
+  compatible:
+    const: linux,spdif-dit
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    spdif-out {
+        #sound-dai-cells = <0>;
+        compatible = "linux,spdif-dit";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/spdif-transmitter.txt b/Documentation/devicetree/bindings/sound/spdif-transmitter.txt
deleted file mode 100644
index 55a85841dd85..000000000000
--- a/Documentation/devicetree/bindings/sound/spdif-transmitter.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-Device-Tree bindings for dummy spdif transmitter
-
-Required properties:
-	- compatible: should be "linux,spdif-dit".
-
-Example node:
-
-	codec: spdif-transmitter {
-		compatible = "linux,spdif-dit";
-	};
-- 
2.31.1

