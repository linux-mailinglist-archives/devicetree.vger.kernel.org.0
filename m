Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 654BA5F1F13
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 22:02:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbiJAUCO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 16:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiJAUCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 16:02:13 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96AFF286D4
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 13:02:12 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id jo24so6087769plb.13
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 13:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=HPFnu8oaYg4AsNK1EYyLZPu6v1c5gswGTazUj1W483Y=;
        b=FjB7Q63eNKtH2CTjrjtwC8FFLZNbmCp4xDfLMqo030pmeTFsR9l+J5qHV7Zs0QgXk6
         QdpJZslGGsesgS1ZMst/0G0dcq32bQPxxFT9uT3r5JEnV/MwiGzi/IC5Qpo37Vnqb0p3
         ecXfI954khKiRlg+mPHKO7o1ah1g5vRMMl1hQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=HPFnu8oaYg4AsNK1EYyLZPu6v1c5gswGTazUj1W483Y=;
        b=BXZSqLC4S6ibIdWvtS2EXq7ZbD5boX0+snEkVNngWSKDsCJI6qOhbi3IUponiuPeBH
         HF6LLMW3Zw0kKcYIcaFMz3n0uVdiifc9vqKP/NENKna1JZvc8egY3+R9yhaU/kWX2qLB
         6axdwhPDB9ilLd1pzD2hkGt/bLvCpLNABo9SzwjKN/43IQ5845J+MauR5p4slDbyQzxw
         lWxRF8k+MokMxq/UeYTMjBOkgrNzvhc/6Aq65zLw1L+GsB/GeKzRUeZqhDuBXg4HarFA
         xubfdcSO7P99nbv/5mAu1uKkntKnjncvRlcoeYGCzgsRoJSVvHYv1FbJwZo7muKxclTf
         tZ5g==
X-Gm-Message-State: ACrzQf3ULMxTFq5FsYOrvrCfN3wRvpivJOnIhToxmAlZ16uLMyJGxEge
        dTSaeh8ZG3T5fypHD9h1X/0fSw==
X-Google-Smtp-Source: AMsMyM7ZelSG4EOYMkI8bR40RPCxCjXuSv0uJeFYi6pAJFqtZXHX7nttj8TlYq1mnu6tsFVckCZ+fA==
X-Received: by 2002:a17:90b:2246:b0:205:97a5:520e with SMTP id hk6-20020a17090b224600b0020597a5520emr4676864pjb.244.1664654531968;
        Sat, 01 Oct 2022 13:02:11 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id l18-20020a170903121200b0017a8aed0a5asm4313593plh.136.2022.10.01.13.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 13:02:11 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH 1/2] ASoC: dt-bindings: add schema for WM8961
Date:   Sat,  1 Oct 2022 13:00:38 -0700
Message-Id: <20221001200039.21049-2-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221001200039.21049-1-doug@schmorgal.com>
References: <20221001200039.21049-1-doug@schmorgal.com>
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
index 000000000000..73166cf0fdcf
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
+  '#sound-dai-cells':
+    const: 0
+
+  compatible:
+    const: wlf,wm8961
+
+  reg:
+    maxItems: 1
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
+    i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          wm8961: codec@4a {
+                  #sound-dai-cells = <0>;
+                  compatible = "wlf,wm8961";
+                  reg = <0x4a>;
+          };
+    };
-- 
2.34.1

