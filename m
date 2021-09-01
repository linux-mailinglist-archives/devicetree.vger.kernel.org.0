Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFB713FD666
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243505AbhIAJUG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:06 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:38813 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243503AbhIAJT5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:19:57 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailnew.nyi.internal (Postfix) with ESMTP id D26FC5802FE;
        Wed,  1 Sep 2021 05:18:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 01 Sep 2021 05:18:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=3yomxpkPFm1FI
        Eaqfzf/NNqj5DtvmQUrtwAFUvBRgfU=; b=ks1Q1D3JFJGOMUbGhsZGsQ96c8PBI
        yhK+O5XegEkxvb/EfcmLyU7jARub+k1kq49OF9nX3G2/2GJxPLwK/OLRwmJilt1b
        1pArqIX5V4n4lOiqS+CTbZDGxJ5fQrtbgusdoUsqLt7Wzs3AH3SIiEpYlUgokVmX
        tRHszmghQcibF3I1ZOiQ6D7BqhMwy4Miqn6rXK1RSJsMBZmTPMv9K3QgQuCD0HdA
        y/KVVuN8Fq4SPJ4UqlQO8pkedoZGvXXa5o9Mqcpr+ktHc1L68wPKZf0piaQCz6SD
        2oextD8yY3A2b/qOPU66Ap8ytGREOTX+/GUwvy5qMNqKapS5xwr9FclGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=3yomxpkPFm1FIEaqfzf/NNqj5DtvmQUrtwAFUvBRgfU=; b=hLXLNayg
        7QPYuWiS3me/eqc92sGRUwE8O/7RGIlUpqMo3Wh+ugx4WrnrloSpxATfnqWzjCfP
        sLXyJuuFx3FjOPCgi9VilrVvzoBpF87AzI8uQsan+27nShJ/xycXzP7YesfUuO2h
        l8ZiyMcD+/QVmw8gj2iyjwUHJfyx6dDS5Ecglx4gnNQQooAoG1hdGaoNZKpwv3dt
        nVnurPo56M4QWlNmCB35WUTsg35i8WQ0b0tmB/JK0rNftjl0Zgt/d/UXFRGvCoQg
        jRK33YIMH3Dspi1jxsWZ3THiTYD1wn8YRZ8jXusoIIOpKBUP6AGXaWi68soR1fCQ
        5MsTIczdILD06A==
X-ME-Sender: <xms:gEUvYXCO8UPiHJ1cHWnKhkPJKszRT5I37O92DivU5gciVa0fQuHLOw>
    <xme:gEUvYdhhCKsLlkgv9w9c0XmLa5PwBhSpZ-39Ie-2CLT1CyId7ik4AtEN1YWDYUdjw
    fNkd663i17FwoBRMD8>
X-ME-Received: <xmr:gEUvYSkR-tTSqwmuA18gYv0Jh1bWlZACQ6LiicW5xf7Wds3vRFfCL5hu4X1MPNqkNUZnDqzFO0JrsZWQiKTp7i-MQ0xU7lyJ9Y8W>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:gEUvYZyQk_7uNVx-OPJgJTwzFNF9O_dZUkcsydMLVJDHfQewFEK5Tg>
    <xmx:gEUvYcR-1MxvYIV5BSh5mXxWdR4_-sf4n-G86-Uk313OC0_g-gBgTA>
    <xmx:gEUvYcat9HULakMthbU_K-otYYIfop_Bm5ULGqllkFT0UykpMuPgkg>
    <xmx:gUUvYQa-yRj42RyBEFC1NtGawmtZqau02xALyEt73O2DkeXHuir77w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:18:55 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, patches@opensource.cirrus.com,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 01/52] ASoC: dt-bindings: Add WM8978 Binding
Date:   Wed,  1 Sep 2021 11:18:01 +0200
Message-Id: <20210901091852.479202-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though we had the wm8978 driver for some time and a number of
boards using it already, we never had a binding for it. Let's add it
based on what the driver expects and the boards are providing.

Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: patches@opensource.cirrus.com
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Changed the maintainers of the bindings
---
 .../devicetree/bindings/sound/wlf,wm8978.yaml | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8978.yaml

diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
new file mode 100644
index 000000000000..944e5859c962
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/wlf,wm8978.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Wolfson WM8978 Codec Device Tree Bindings
+
+maintainers:
+  - patches@opensource.cirrus.com
+
+properties:
+  '#sound-dai-cells':
+    const: 0
+
+  compatible:
+    const: wlf,wm8978
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 526000
+
+required:
+  - '#sound-dai-cells'
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@0 {
+            #sound-dai-cells = <0>;
+            compatible = "wlf,wm8978";
+            reg = <0>;
+            spi-max-frequency = <500000>;
+        };
+    };
+
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@0 {
+            #sound-dai-cells = <0>;
+            compatible = "wlf,wm8978";
+            reg = <0>;
+        };
+    };
+
+...
-- 
2.31.1

