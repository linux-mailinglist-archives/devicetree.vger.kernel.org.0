Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CF925F27D2
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 05:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbiJCDYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 23:24:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbiJCDYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 23:24:42 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3681F71
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 20:24:39 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id w2so9135829pfb.0
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 20:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=1y4CMatLLOuro4rYb7OubdSD1veGSab01mNr081J92M=;
        b=CUUbIbXr4y7X+8xAYu6pggMYvjZ6bjnSOdyJkD56wqb+1K2VYP+WsqOpqUH9IhO/LZ
         ZL0hZyQmXIPZg6gLQOO54EVKepyBPWfU0xRQBuHLWtBnOobVagpC/w2SczQRiM0+iexI
         sCIdT48Suwxfxwuf4qdf/+uqPmwYx+RCOdvkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=1y4CMatLLOuro4rYb7OubdSD1veGSab01mNr081J92M=;
        b=OIcypIoX1XV0XVt1L0NthDEAfPgwVqR0/gtmhSCeakWp5wdShnjmMLmmW2CbS8zJqZ
         9CdpPsvUIaNhn7OLyPnckOO60XYPmMKJNn6lAdft61c2uHUpQgpRXNqB+0o62UIzO78F
         KUwUptfFXO7aduY+nWNVwniHJdpBJ+t1ILce9PHB8f1gTnkX6TRNdOa6RYT0ZWGbyF9C
         ZsrF3bL7hh3VLt3OroD4GKp4NNWsFsyuamrPAe9071rGi9vHSVXkqCSVW5Regdfe/41v
         gknjoP2eyFE4YcUzFAbS16KTlYvCYDLSyzhQLc94A6/ZSbG4UeM6YCXrpvbUsPnbXTPL
         1Yaw==
X-Gm-Message-State: ACrzQf3BB4aZK7m9jClZFIzCmBQ+2pj69Pe8RJ5d82njOZgV5rNfBKV/
        xnLnsetTo2/E+b9XloXWyzvxP+DYTLgWkdYPlWY=
X-Google-Smtp-Source: AMsMyM7cXSgnJr2XZBmkVT3lYym1Q9Qfw368cYr1s/XzYa9ZAOtBkV1xO4LefN4cJbEDs6czYM7u1w==
X-Received: by 2002:a05:6a00:2316:b0:548:58b6:b17c with SMTP id h22-20020a056a00231600b0054858b6b17cmr20406125pfh.53.1664767479241;
        Sun, 02 Oct 2022 20:24:39 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id y25-20020aa78f39000000b0053e7d3b8d6dsm6157977pfr.1.2022.10.02.20.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Oct 2022 20:24:38 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 1/3] ASoC: dt-bindings: add schema for WM8961
Date:   Sun,  2 Oct 2022 20:24:12 -0700
Message-Id: <20221003032414.248326-2-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003032414.248326-1-doug@schmorgal.com>
References: <20221003032414.248326-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Create a simple DT schema for the existing Wolfson WM8961 driver so that
DT support can be added to the driver.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 .../devicetree/bindings/sound/wlf,wm8961.yaml | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8961.yaml

diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8961.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8961.yaml
new file mode 100644
index 000000000000..795d34e1e97a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8961.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/wlf,wm8961.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Wolfson WM8961 Ultra-Low Power Stereo CODEC
+
+maintainers:
+  - patches@opensource.cirrus.com
+
+properties:
+  compatible:
+    const: wlf,wm8961
+
+  reg:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - '#sound-dai-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          wm8961: codec@4a {
+                  compatible = "wlf,wm8961";
+                  reg = <0x4a>;
+                  #sound-dai-cells = <0>;
+          };
+    };
-- 
2.34.1

