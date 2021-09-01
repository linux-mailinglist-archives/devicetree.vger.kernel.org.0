Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C3C13FD662
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243484AbhIAJUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:02 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:53555 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243507AbhIAJT5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:19:57 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id 38212580AF6;
        Wed,  1 Sep 2021 05:19:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 01 Sep 2021 05:19:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=Nw1E3XUhXZl3E
        Vib6iKp0DgaQ2k4DNURT8dZMhvJBEc=; b=oxXR4UEChdHrgDprcepoqKGmrPtTJ
        FKM0HYR9JBUurzHrYQhmtPLkm5byi5r/SfHZVE4JSmR6l1DcK3yNIe+tpTWVQ682
        IecwW3iT9Eu0X+2wd3qoNFHAQpp2qRXcGTChMzkPjqUg+W3ZkDYvNx4ioamLndXZ
        thATHUzl3LLYdcYosTPmJrr8gS+flAWKk4Eg8a7GGqW11ibBWwd7UQJZ5a0iWHb3
        K01GudGUaBipZuvAVpe7H/6YrssQBd3HD18wWLdjPxCupT/sxILcXJvmYhKktQJu
        93ma6xeQkwe7Tyzu3YWJzujoLEKMiGVY8QDW0Mqugg2Y54TwkV0w9sVSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=Nw1E3XUhXZl3EVib6iKp0DgaQ2k4DNURT8dZMhvJBEc=; b=TJqzxIw8
        IfUnYv9X4E5f+gzGWHmqWDyTHR6sHFt4beIUaAEcNfZqGghFkuejsXsUwIJEwH/r
        rep6yGhJB/Z/oMHL7SUhqPDpDQl03+P00APxqXdFLj8PieFeMWlc5vBHaKerXIVQ
        GuPMamPrKD2TjhOQK8nxhgPJ/lJPLOvhvs13yf95tu1BowmATncHnjMX+t4x1Thu
        W8d0IWoS+UFkKw/PjQO/CzBx8mIKM2rlZO4REAbSnGODNtkAooSuQCWBVq9AW9UK
        o45OgHW5VBl69w7IR9N74+hVEMCr20iySyBTOWyvsa9A59ShjQbcv7+brankxwMo
        1NwtxoIvTzILFw==
X-ME-Sender: <xms:g0UvYeFewQjgWg4Q5TQcdda4TCGaoKfGrDzXXX5xPDdgsZ35jbs-mg>
    <xme:g0UvYfWn9VJ3wAACd6N3GFJp9Qqj2cF6iBvaugrQJdVncM6aoYW5LBxUTNmIZuMuv
    m_lruMiwO_XdqH2O2w>
X-ME-Received: <xmr:g0UvYYL5ukqemdO6EguosH4hsi7xrF6MMa7se0FzWe2PLdujnNdwCKC0OrDviLubHm4iZC2IOJ4E4O9FPQUnExykEegQ7KF_tdJA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:g0UvYYF0gtIusCOhao4tsvvqe4BQYUHOoapsFUv71UhGuIzDZZcNYg>
    <xmx:g0UvYUVFZ1dWT_rknCkalreXXTQol5qd3dSYKFkJC_GPZ8Yd8ZcwVA>
    <xmx:g0UvYbMYtzFrBs4IBU9164-zNoUEureCtbAJ1JIimWK1CJdKhSGVLg>
    <xmx:hEUvYdOybdO5nJ91dqTI4SrB3emNG3BWMZpByisdmpDGA-zoU7At6A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:18:58 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Samuel Holland <samuel@sholland.org>
Subject: [PATCH v2 02/52] ASoC: dt-bindings: Convert Bluetooth SCO Link binding to a schema
Date:   Wed,  1 Sep 2021 11:18:02 +0200
Message-Id: <20210901091852.479202-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bluetooth SCO Link are supported by Linux with a matching device tree
binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Samuel Holland <samuel@sholland.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Accept either a 0 or 1 #sound-dai-cells
---
 .../devicetree/bindings/sound/bt-sco.txt      | 13 -------
 .../bindings/sound/linux,bt-sco.yaml          | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 13 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/bt-sco.txt
 create mode 100644 Documentation/devicetree/bindings/sound/linux,bt-sco.yaml

diff --git a/Documentation/devicetree/bindings/sound/bt-sco.txt b/Documentation/devicetree/bindings/sound/bt-sco.txt
deleted file mode 100644
index 641edf75e184..000000000000
--- a/Documentation/devicetree/bindings/sound/bt-sco.txt
+++ /dev/null
@@ -1,13 +0,0 @@
-Bluetooth-SCO audio CODEC
-
-This device support generic Bluetooth SCO link.
-
-Required properties:
-
-  - compatible : "delta,dfbmcs320" or "linux,bt-sco"
-
-Example:
-
-codec: bt_sco {
-	compatible = "delta,dfbmcs320";
-};
diff --git a/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml b/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
new file mode 100644
index 000000000000..e3a1f485f664
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/linux,bt-sco.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bluetooth SCO Audio Codec Device Tree Bindings
+
+maintainers:
+  - Mark Brown <broonie@kernel.org>
+
+properties:
+  '#sound-dai-cells':
+    enum:
+      - 0
+
+      # For Wideband PCM
+      - 1
+
+  compatible:
+    enum:
+      - delta,dfbmcs320
+      - linux,bt-sco
+
+required:
+  - '#sound-dai-cells'
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    codec {
+        #sound-dai-cells = <0>;
+        compatible = "linux,bt-sco";
+    };
+
+...
-- 
2.31.1

