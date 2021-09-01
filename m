Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 968033FD665
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233043AbhIAJUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:05 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:41217 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243514AbhIAJUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:00 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id BD6AF580B22;
        Wed,  1 Sep 2021 05:19:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:19:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=2Xz3Y6D/gyY7C
        tqe9aITkYRRiC0YF/N0mmFuOUDcmxA=; b=baojiu4AXHb1/BOJ3XlZGTejFS3Rc
        xs14ADrURj+MxS57S2SkW4OR6iHUE8ohOiq3HRldTwxc+KAuG7IPHCxs5EZWJ7YJ
        hDfZSvl4XenH1mi42NRPi2PMME6u+1xcbqR3V3nZB3c/ZWYdJn3XmQhdjcZT/U/x
        Ukt4YwdJVa4QiOSVwHYS7GfJvSafks+DRoBLOcYVifWZlB38tamRhi0sJ6LZGIl9
        Df6v9WE6L7uK/wQ+1GhyuvYCoDYSiFKZs6KOWZoDvYZf4eMvxDwJv12fa4SGccQz
        plw/TBWVBv6J4lX+PNAt+u78gLsM5YMKMLrdQPavgFL3pNe0xSYjvnx7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=2Xz3Y6D/gyY7Ctqe9aITkYRRiC0YF/N0mmFuOUDcmxA=; b=RB4TrP19
        X5CzSK6LVt2FcwuDJ4ulKIk/ToFgqI2iMk8ir97ALJG6VbF9+Jk+BUK6Jr9n+s5Z
        NUZfHQk39EAoX7VD+lW8u7Th0Xg8G/WBdAuHImD34YGdjZG/abvHiJidIQji6LsB
        eOXWb8PITc5SmftKdtte9eajoCLzjQbOl4W5K9+gqHabM+LVbikixO7bHgpo1BOP
        F85Qkc4qi13n05zhy7WroFknoORv5M68Incxz5lKrKX8XcY/Gv50SfXh7DIvZglx
        e9LSfAdk6eEII1vtEp5satg371ucgQZhoGGDo2/8mRuDSRlGt6lJtiyHlTjBt5PA
        NGPWrMzulRv0Zw==
X-ME-Sender: <xms:h0UvYROSC-WnfPiTFu80dayoAyNzIbFAuyxH5ckWWqDaLWi8IZutpw>
    <xme:h0UvYT9gpFZkgniApsZbZXdumxSec9AGw2t-2ovijLF0-YtdgUIm2HgJV78S1lygR
    OBogv3CSIzbJfuYQa8>
X-ME-Received: <xmr:h0UvYQTt6eWLfz0ocRh7oDZx88FAQNLm0OVPsYycKIK0eWjGlFdlGEJgYlncqeIaSlJonbbIdKov77kigQ1STR3YKVfb5TEsJ1ZW>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:h0UvYdvuHkxCDq0Dz7cdyHr7SnaczkPGMs5v-1_hAOIg5dI2LIbdIw>
    <xmx:h0UvYZc57IszIUeYqHhDqWI4_-iKHxWNQvetRoYQpuZjrNiKPBRqgA>
    <xmx:h0UvYZ3LbFkforw9NJBv6fn3lj_EPJBizkvAHPQlJw3nhEiMR5R9ew>
    <xmx:h0UvYZ3_8O_5ZixSWwBw2doUztVQWrNm-zRtVFCZrkPMZzoVeIUMCg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:02 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 04/52] ASoC: dt-bindings: Convert Simple Amplifier binding to a schema
Date:   Wed,  1 Sep 2021 11:18:04 +0200
Message-Id: <20210901091852.479202-5-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

