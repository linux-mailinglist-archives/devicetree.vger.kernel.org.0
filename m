Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC1B3FD664
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233149AbhIAJUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:04 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:50889 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243501AbhIAJT6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:19:58 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id C8034580B15;
        Wed,  1 Sep 2021 05:19:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:19:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=LPit8wcoZO4dv
        io5leaRKYe3Q9Z+NaV+MmDoHIcsCLg=; b=rmzn7uhWsmZKkqaq/gB7HPlw7NY3K
        ua44uo8ZOp4NlNUgUrz410VIHVMtBqfe75Q16DsQ0yYFTJkmujUuerOwc2ad4hDr
        /8YPCtz/OMKYjcQ/liZcCAx9yXfObbR713QMfU8FwipnHZxKl/Gpq6x55ZAsEaqk
        85w9Lt4El1VtsBsEurnoJa4NPJIlCmAdHTmWazSgQmDYIha6AhN0nF+UnicaWOk0
        ksLE6Kk0ZZ3Puz9jfSk6R/DQB8oYzUGE1JjUcuinpw9Ps/EJz5TwWwbkqi0xj0Zl
        fZTdOXj4GqWmojMmulhjvmRskTJIx9tRBPhfjLjCz0sWi3hKcD0YXI4dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=LPit8wcoZO4dvio5leaRKYe3Q9Z+NaV+MmDoHIcsCLg=; b=aWKDEajc
        8JwmukY+cVmpYsMMgF1Wy2oLQ6aJd//XcHzEfJe1OpQf6ompCIjEANLR042PiCiu
        RJ7RwT7Ru5HTMXTTHj6jZFJ/hb/ULYN0+iAbE3EKbofi7mpYqr14i/7/yQX4CfSl
        VlKDs8H4cO5cvDh7y9Y03V6J2qHFqofuV3NqWPWqR7vSxk4kPJsrD03aooPZKZxM
        SyOsAjfOFp5VY/5FlRTMAAO0HdBHh1tz7EbQSNE9LmHFX2GZoLO682bNt86u/4qm
        1oF7q1HV0EP2nsoCHh1XGmN5ar7+fKJA5j1jO++3lV2Z/idzQ4oB8IzUO7pW04Te
        kYlp5WdC2kpM1w==
X-ME-Sender: <xms:hUUvYXc2zgTpSI5463nv5w0M25Q8ZagVBueJuZ-tYhcLC_QtfG1fSQ>
    <xme:hUUvYdM2ZgAWP1K95tpm5u7mQS8tRbs6MH5hv4Xx9fKyGlNVPSBT30NZCW87abIjt
    e-3j2xWan2hRx1fVRU>
X-ME-Received: <xmr:hUUvYQhCq3xkBuCSY-89tVyiXrA7m0-Mw9jXcwUDO4PLm_pASHZY8JPUrV8F20z2Kyl-aH32Lm82yrm2FxpGEtf2owXE6WrVWxCA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hUUvYY-5gQY4VDkb54X3ZN6iocababe40JGsLwqCuPWnKIupagEajg>
    <xmx:hUUvYTtACqBZqy3mjMrgHrjTGMXSl_tcSmv02MSirSfrqzx-UP-LyQ>
    <xmx:hUUvYXH3XDtla30eBRw7dNv-ZXznwdWwOOe6ZuDWioUowACWBzmRJA>
    <xmx:hUUvYUlXPYJgky2qaVpc1b4nZxXm7yFjqN1xB1iCB4pYwh_Wb6uGfg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:01 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 03/52] ASoC: dt-bindings: Convert SPDIF Transmitter binding to a schema
Date:   Wed,  1 Sep 2021 11:18:03 +0200
Message-Id: <20210901091852.479202-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

