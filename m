Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 682AC68C1CD
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 16:38:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231588AbjBFPiH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 10:38:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231674AbjBFPhk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 10:37:40 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126032CC5C
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 07:36:36 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bk16so10741725wrb.11
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 07:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DSZ+ZWDmXDYcYtmIhvFtKPtRA07CwGN6CEZ0BnS9Htc=;
        b=1ymZ4wa9X9VmsnI7dKrwIS7KOHJdftr5rwTlNYrUztYky9zyZPKXb4Q874IsFemt8j
         J30/3nK1SZU0AoHog8FMSurppxgjLSdfkDupT8lTCW6661B5X5lXhRUwfjsKduM64PnD
         NXNTlFyDvsgpaTRqZX126jetYhntw5pEwi25tqexCd4oAyDa3u7dACkn+K1z8zVGZffr
         k0raxVkCqzwmmjZQrnz6ELj8YpQ7A1BtMCKqruw6NL9CsTs4yAcH987G3T7lOk9jndLm
         2vJWg5M1GB1f0U3a08ljzOMaPeWqXaqOEtfrmIu1ItrbgbTpO4OIIx93Oyzg9eOaeJzO
         PTew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DSZ+ZWDmXDYcYtmIhvFtKPtRA07CwGN6CEZ0BnS9Htc=;
        b=iiZIMCK7S/+um7M3rJYTSrjSP8U2ZO/HBhCfs+s645rwl/IAf9fetOJFHy4kMFuJ8o
         P3bYxjXUSTHN1kOmdKOX2g6B3EcT9X2807uVNX8D42c9sxxDzOIqhzL2TcI8B5ctaISC
         XfcxoXt/LxiiAhBDd3vqEu+KoVsv5URhEv4W13BZfoCHl0fvLlgFiMDhPip8Zh/hwiJx
         Fq/OkTkc17j1vP9gDV8ZRq94sfL+qp85PYd3tmCRAdlpm2WPUftpwMlVh5zd0IiUZ/b+
         woRc51lgjtb2qAyFIQdBw7RMCc0DGs2xHE8YDENQCo0PAARHEjnUkzBzaKy/swrPokAf
         bb3A==
X-Gm-Message-State: AO0yUKV9Wfu0t7Ll906030rKXueQQDgW6I8FVqh2mRR7SySc83m1UTKb
        ON2qiaz0YcCm1Ba6sUzOft77cQ==
X-Google-Smtp-Source: AK7set8l0Vem0AHgJtK8mN9RFYv4+5qphxkNS6/M3ZOmuwRAk/w0Zfj9ZrM9d7lz3uie93iC15wpVw==
X-Received: by 2002:adf:f992:0:b0:242:5563:c3b with SMTP id f18-20020adff992000000b0024255630c3bmr16518118wrr.59.1675697698201;
        Mon, 06 Feb 2023 07:34:58 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e12-20020a5d500c000000b002c3ea9655easm2197317wrt.108.2023.02.06.07.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:34:57 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] ASoC: dt-bindings: meson: convert axg tdm interface to schema
Date:   Mon,  6 Feb 2023 16:34:43 +0100
Message-Id: <20230206153449.596326-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230206153449.596326-1-jbrunet@baylibre.com>
References: <20230206153449.596326-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the DT binding documentation for the Amlogic tdm interface to
schema.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/amlogic,axg-tdm-iface.txt  | 22 --------
 .../bindings/sound/amlogic,axg-tdm-iface.yaml | 55 +++++++++++++++++++
 2 files changed, 55 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.yaml

diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.txt
deleted file mode 100644
index cabfb26a5f22..000000000000
--- a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Amlogic Audio TDM Interfaces
-
-Required properties:
-- compatible: 'amlogic,axg-tdm-iface'
-- clocks: list of clock phandle, one for each entry clock-names.
-- clock-names: should contain the following:
-  * "sclk" : bit clock.
-  * "lrclk": sample clock
-  * "mclk" : master clock
-	     -> optional if the interface is in clock slave mode.
-- #sound-dai-cells: must be 0.
-
-Example of TDM_A on the A113 SoC:
-
-tdmif_a: audio-controller@0 {
-	compatible = "amlogic,axg-tdm-iface";
-	#sound-dai-cells = <0>;
-	clocks = <&clkc_audio AUD_CLKID_MST_A_MCLK>,
-		 <&clkc_audio AUD_CLKID_MST_A_SCLK>,
-		 <&clkc_audio AUD_CLKID_MST_A_LRCLK>;
-	clock-names = "mclk", "sclk", "lrclk";
-};
diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.yaml
new file mode 100644
index 000000000000..320f0002649d
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Audio TDM Interfaces
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: amlogic,axg-tdm-iface
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    items:
+      - description: Bit clock
+      - description: Sample clock
+      - description: Master clock #optional
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: sclk
+      - const: lrclk
+      - const: mclk
+
+required:
+  - compatible
+  - "#sound-dai-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/axg-audio-clkc.h>
+
+    audio-controller {
+        compatible = "amlogic,axg-tdm-iface";
+        #sound-dai-cells = <0>;
+        clocks = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
+                 <&clkc_audio AUD_CLKID_MST_A_LRCLK>,
+                 <&clkc_audio AUD_CLKID_MST_A_MCLK>;
+        clock-names = "sclk", "lrclk", "mclk";
+    };
-- 
2.39.0

