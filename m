Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC8742B5649
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 02:34:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726086AbgKQBdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 20:33:55 -0500
Received: from mail-oo1-f54.google.com ([209.85.161.54]:34192 "EHLO
        mail-oo1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgKQBdy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 20:33:54 -0500
Received: by mail-oo1-f54.google.com with SMTP id q28so4384249oof.1
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 17:33:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qK36A5rVThIRP81jEbeCpq/j9+HO/HBCjgD8p63pIAY=;
        b=aVDiJRoHDjcVNWqkzZaMosqQNpokVA3MvyozHJLhIjOTk9vU3PiUtbK2dvPNdmbrZ1
         exFxQLlSfYITAcbge8Hzy3yJuRQoIAGzu10wl2I8hADd6PzqdPfb66TvJyA3zPNWAlzz
         RwR8toJ6fOlUMnXuBf7oBDpSBzd98ROdREn0tZsetok6k2fpUElQRpH6n0Z+PiIa2NQX
         sVlSLhzpfJf94g4GwqWkBDNjmOZrm58/ZrLk61zsbZi0F4qnlIAVwS90THky2R7qN13n
         hbBLk9dQvXtdtNfa161DiRVg6Tin56rk3HHFVrtaXjczckmx+ykBod8G/uGiLCgheagi
         eWJA==
X-Gm-Message-State: AOAM533RkgLR9kK+dY1mBSU3xYUKIYLPrIaly3KigkzzQdjbstQR/930
        hlX10T8CrrxX0DxsBR6NgfStTG3iqg==
X-Google-Smtp-Source: ABdhPJykb52AnSl4SEA/E7nSB7S68jQee/nKPxZolW8lsORhSo9gx3/n5M5AC1cckKrEW8rbVno8Ww==
X-Received: by 2002:a4a:e09a:: with SMTP id w26mr1528078oos.18.1605576831640;
        Mon, 16 Nov 2020 17:33:51 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id j9sm3861325oij.44.2020.11.16.17.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:33:51 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 1/4] ASoC: audio-graph-card: Refactor schema
Date:   Mon, 16 Nov 2020 19:33:46 -0600
Message-Id: <20201117013349.2458416-2-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201117013349.2458416-1-robh@kernel.org>
References: <20201117013349.2458416-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sameer Pujar <spujar@nvidia.com>

There can be customized sound cards which are based on generic audio
graph. In such cases most of the stuff is reused from generic audio
graph. To facilitate this, refactor audio graph schema into multiple
files and the base schema can be reused for specific sound cards.

The graph card nodes and port nodes are separate entities, so they
should be separate schemas.

Signed-off-by: Sameer Pujar <spujar@nvidia.com>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
[robh: Split out port schema. Add graph.yaml in subsequent commit]
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/audio-graph-card.yaml      | 106 +-----------------
 .../bindings/sound/audio-graph-port.yaml      |  86 ++++++++++++++
 .../bindings/sound/audio-graph.yaml           |  45 ++++++++
 .../bindings/sound/renesas,rsnd.yaml          |  12 +-
 4 files changed, 141 insertions(+), 108 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-port.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/audio-graph.yaml

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
index 2329aeb91db7..109e55f9e597 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
@@ -4,120 +4,24 @@
 $id: http://devicetree.org/schemas/sound/audio-graph-card.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Audio Graph Card Driver Device Tree Bindings
+title: Audio Graph Card Device Tree Bindings
 
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
+allOf:
+  - $ref: /schemas/sound/audio-graph.yaml#
+
 properties:
   compatible:
     enum:
       - audio-graph-card
       - audio-graph-scu-card
 
-  dais:
-    $ref: /schemas/types.yaml#/definitions/phandle-array
-  label:
-    maxItems: 1
-  prefix:
-    description: "device name prefix"
-    $ref: /schemas/types.yaml#/definitions/string
-  routing:
-    description: |
-      A list of the connections between audio components.
-      Each entry is a pair of strings, the first being the
-      connection's sink, the second being the connection's source.
-    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-  widgets:
-    description: User specified audio sound widgets.
-    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-  convert-rate:
-    description: CPU to Codec rate convert.
-    $ref: /schemas/types.yaml#/definitions/uint32
-  convert-channels:
-    description: CPU to Codec rate channels.
-    $ref: /schemas/types.yaml#/definitions/uint32
-  pa-gpios:
-    maxItems: 1
-  hp-det-gpio:
-    maxItems: 1
-  mic-det-gpio:
-    maxItems: 1
-
-  port:
-    description: single OF-Graph subnode
-    type: object
-    properties:
-      reg:
-        maxItems: 1
-      prefix:
-        description: "device name prefix"
-        $ref: /schemas/types.yaml#/definitions/string
-      convert-rate:
-        description: CPU to Codec rate convert.
-        $ref: /schemas/types.yaml#/definitions/uint32
-      convert-channels:
-        description: CPU to Codec rate channels.
-        $ref: /schemas/types.yaml#/definitions/uint32
-    patternProperties:
-      "^endpoint(@[0-9a-f]+)?":
-        type: object
-        properties:
-          remote-endpoint:
-            maxItems: 1
-          mclk-fs:
-            description: |
-              Multiplication factor between stream rate and codec mclk.
-              When defined, mclk-fs property defined in dai-link sub nodes are ignored.
-            $ref: /schemas/types.yaml#/definitions/uint32
-          frame-inversion:
-            description: dai-link uses frame clock inversion
-            $ref: /schemas/types.yaml#/definitions/flag
-          bitclock-inversion:
-            description: dai-link uses bit clock inversion
-            $ref: /schemas/types.yaml#/definitions/flag
-          frame-master:
-            description: Indicates dai-link frame master.
-            $ref: /schemas/types.yaml#/definitions/phandle-array
-            maxItems: 1
-          bitclock-master:
-            description: Indicates dai-link bit clock master
-            $ref: /schemas/types.yaml#/definitions/phandle-array
-            maxItems: 1
-          dai-format:
-            description: audio format.
-            items:
-              enum:
-                - i2s
-                - right_j
-                - left_j
-                - dsp_a
-                - dsp_b
-                - ac97
-                - pdm
-                - msb
-                - lsb
-          convert-rate:
-            description: CPU to Codec rate convert.
-            $ref: /schemas/types.yaml#/definitions/uint32
-          convert-channels:
-            description: CPU to Codec rate channels.
-            $ref: /schemas/types.yaml#/definitions/uint32
-        required:
-          - remote-endpoint
-
-  ports:
-    description: multi OF-Graph subnode
-    type: object
-    patternProperties:
-      "^port(@[0-9a-f]+)?":
-        $ref: "#/properties/port"
-
 required:
   - compatible
-  - dais
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
new file mode 100644
index 000000000000..9db19d4edc6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/audio-graph-port.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Audio Graph Card 'port' Node Bindings
+
+maintainers:
+  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
+
+select: false
+
+properties:
+  port:
+    description: single OF-Graph subnode
+    type: object
+    properties:
+      reg:
+        maxItems: 1
+      prefix:
+        description: "device name prefix"
+        $ref: /schemas/types.yaml#/definitions/string
+      convert-rate:
+        description: CPU to Codec rate convert.
+        $ref: /schemas/types.yaml#/definitions/uint32
+      convert-channels:
+        description: CPU to Codec rate channels.
+        $ref: /schemas/types.yaml#/definitions/uint32
+    patternProperties:
+      "^endpoint(@[0-9a-f]+)?":
+        type: object
+        properties:
+          remote-endpoint:
+            maxItems: 1
+          mclk-fs:
+            description: |
+              Multiplication factor between stream rate and codec mclk.
+              When defined, mclk-fs property defined in dai-link sub nodes are
+              ignored.
+            $ref: /schemas/types.yaml#/definitions/uint32
+          frame-inversion:
+            description: dai-link uses frame clock inversion
+            $ref: /schemas/types.yaml#/definitions/flag
+          bitclock-inversion:
+            description: dai-link uses bit clock inversion
+            $ref: /schemas/types.yaml#/definitions/flag
+          frame-master:
+            description: Indicates dai-link frame master.
+            $ref: /schemas/types.yaml#/definitions/phandle-array
+            maxItems: 1
+          bitclock-master:
+            description: Indicates dai-link bit clock master
+            $ref: /schemas/types.yaml#/definitions/phandle-array
+            maxItems: 1
+          dai-format:
+            description: audio format.
+            items:
+              enum:
+                - i2s
+                - right_j
+                - left_j
+                - dsp_a
+                - dsp_b
+                - ac97
+                - pdm
+                - msb
+                - lsb
+          convert-rate:
+            description: CPU to Codec rate convert.
+            $ref: /schemas/types.yaml#/definitions/uint32
+          convert-channels:
+            description: CPU to Codec rate channels.
+            $ref: /schemas/types.yaml#/definitions/uint32
+
+        required:
+          - remote-endpoint
+
+  ports:
+    description: multi OF-Graph subnode
+    type: object
+    patternProperties:
+      "^port(@[0-9a-f]+)?":
+        $ref: "#/properties/port"
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/sound/audio-graph.yaml b/Documentation/devicetree/bindings/sound/audio-graph.yaml
new file mode 100644
index 000000000000..4b46794e5153
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/audio-graph.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/audio-graph.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Audio Graph Device Tree Bindings
+
+maintainers:
+  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
+
+properties:
+  dais:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+  label:
+    maxItems: 1
+  prefix:
+    description: "device name prefix"
+    $ref: /schemas/types.yaml#/definitions/string
+  routing:
+    description: |
+      A list of the connections between audio components.
+      Each entry is a pair of strings, the first being the
+      connection's sink, the second being the connection's source.
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+  widgets:
+    description: User specified audio sound widgets.
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+  convert-rate:
+    description: CPU to Codec rate convert.
+    $ref: /schemas/types.yaml#/definitions/uint32
+  convert-channels:
+    description: CPU to Codec rate channels.
+    $ref: /schemas/types.yaml#/definitions/uint32
+  pa-gpios:
+    maxItems: 1
+  hp-det-gpio:
+    maxItems: 1
+  mic-det-gpio:
+    maxItems: 1
+
+required:
+  - dais
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index 51f4dcaa970d..cbfd5914b432 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -9,6 +9,10 @@ title: Renesas R-Car Sound Driver Device Tree Bindings
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
+allOf:
+  - $ref: audio-graph.yaml#
+  - $ref: audio-graph-port.yaml#
+
 properties:
 
   compatible:
@@ -111,13 +115,7 @@ properties:
         - pattern: '^dvc\.[0-1]$'
         - pattern: '^clk_(a|b|c|i)$'
 
-  port:
-    description: OF-Graph subnode
-    $ref: "audio-graph-card.yaml#/properties/port"
-
-  ports:
-    description: multi OF-Graph subnode
-    $ref: "audio-graph-card.yaml#/properties/ports"
+  port: true
 
 # use patternProperties to avoid naming "xxx,yyy" issue
 patternProperties:
-- 
2.25.1

