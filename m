Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 856323D107E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238980AbhGUNYC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:02 -0400
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:40797 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238937AbhGUNYB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:01 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 33761580482;
        Wed, 21 Jul 2021 10:04:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 21 Jul 2021 10:04:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=yaFAahpcJkLP9
        c9IO8blHHGww65bHSmpbQ9yOfpm/+s=; b=H+VsCVypLV7c5oEbJ+xaM67kgTtg4
        cDZkj+SmEO/WPYK+VNnZcCSfmeKCPz/DOVN2HQ/Nn/i/biTFKsFMShlEhHMPPIM1
        Vz4IUj9QjDdLzkBrpThwiqlGBmCMVLK0QY0sUxtdItq7ZOKRYFtBksXC0LrAsNkk
        tmHkVV6XQ+KStUyeH4Puag0ETaZ0Unwm9hS1Y7aych7rT6JfrHLOpfPCJHMvfan0
        Im+DTtJ0rUehJo47v6KnUKta5J/ZwCZREwg1QV3RB5HvhQ0dUsD5YWm8jVHMVi/y
        9CTYRPuYZA8Mvfp5gDxSdkniwvE9wwsEO6FuWrfTIa36S4A3kW6swgZiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yaFAahpcJkLP9c9IO8blHHGww65bHSmpbQ9yOfpm/+s=; b=Z3YkWzlc
        m71HQf3Q5pXokZVSEWhjF2pvlodE4DVNjWUuUOChtMPu42u4XUG8zvWD4jb7dsmX
        fery/8HwIRvfaFAqFyhG4e29wj4q2auLbGxzQyraGgGvaxmw2B0IwZD2cO1qd/c7
        OjqCy688GBFN10Ti4OW4ZNNT41hO88bh8/Fcfh2+6+qWCrJzwtBLiicvbY8rcg7D
        dHo4eKKlFz56aOSwwQ/3QpKlPWu5RCIigLVeazqA0axANMC5xQmeaHmJQMJAZcn3
        Ge/XpCNTYjAJKYJOH/8rGiZ3jAvxOEwlXKOZOAi2NtLmu6XY0HNJIuhRsGmpLpUN
        9CBAKjSseHIABA==
X-ME-Sender: <xms:dSn4YGtZu5rEs-3fdyGH4G_b_0ffRMpIDAA72JmGeOpYQoKmk2JKhA>
    <xme:dSn4YLdQtbQIH9VxmnQ96XuQu6QIrf29kH0q9zRymQPErFTW4Scnfnrbi4w5GJ8vA
    kTWOAQnHadlZCCJVYo>
X-ME-Received: <xmr:dSn4YBwgzOmTs_DNtJLzo1uvBk_-xbSLu1rOhQ_n7_nusHD7HNKUmYDkc7VwUITscvpaOBuO5JklDR3ikfFwyvwhqJxhbVoePbZV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:dSn4YBNAdhcqAgcEupdePIK4Ak8YRqGWE76i_uRaNsYkjZw53IYwKw>
    <xmx:dSn4YG8esgJCQagoCcjRW-1MPsUnkQpBOLRRQC8zNDjZarsugSphbQ>
    <xmx:dSn4YJVLaf4D2VDWB_hJR6GQzmUYEtKE-s30RqMovLRmzscQuFgq4g>
    <xmx:din4YH0qKQ637GspXuj7USX3CiQ4A4Xo-l5nYNbM0nPJ1qRYsNn68A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:37 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH 04/54] ASoC: dt-bindings: Convert Simple Amplifier binding to a schema
Date:   Wed, 21 Jul 2021 16:03:34 +0200
Message-Id: <20210721140424.725744-5-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simple audio amplifiers are supported by Linux with a matching device
tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: alsa-devel@alsa-project.org
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/sound/simple-amplifier.txt       | 17 -------
 .../sound/simple-audio-amplifier.yaml         | 45 +++++++++++++++++++
 2 files changed, 45 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/simple-amplifier.txt
 create mode 100644 Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml

diff --git a/Documentation/devicetree/bindings/sound/simple-amplifier.txt b/Documentation/devicetree/bindings/sound/simple-amplifier.txt
deleted file mode 100644
index b1b097cc9b68..000000000000
--- a/Documentation/devicetree/bindings/sound/simple-amplifier.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Simple Amplifier Audio Driver
-
-Required properties:
-- compatible : "dioo,dio2125" or "simple-audio-amplifier"
-
-Optional properties:
-- enable-gpios : the gpio connected to the enable pin of the simple amplifier
-- VCC-supply   : power supply for the device, as covered
-                 in Documentation/devicetree/bindings/regulator/regulator.txt
-
-Example:
-
-amp: analog-amplifier {
-	compatible = "simple-audio-amplifier";
-	VCC-supply = <&regulator>;
-	enable-gpios = <&gpio GPIOH_3 0>;
-};
diff --git a/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
new file mode 100644
index 000000000000..26379377a7ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/simple-audio-amplifier.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Simple Audio Amplifier Device Tree Bindings
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - dioo,dio2125
+      - simple-audio-amplifier
+
+  enable-gpios:
+    maxItems: 1
+
+  VCC-supply:
+    description: >
+      power supply for the device
+
+  sound-name-prefix:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: >
+      See ./name-prefix.txt
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/meson8-gpio.h>
+
+    analog-amplifier {
+        compatible = "simple-audio-amplifier";
+        VCC-supply = <&regulator>;
+        enable-gpios = <&gpio GPIOH_3 0>;
+    };
+
+...
-- 
2.31.1

