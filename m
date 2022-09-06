Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 114F75AF3CB
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 20:39:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiIFShI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 14:37:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbiIFSg7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 14:36:59 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78DB4844DA
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 11:36:47 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1278624b7c4so12106026fac.5
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 11:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VeAkYJr5cV7UOdIxHXK8x7A3sYToMzAJATkPDcxd6fI=;
        b=bCQ70kUcHUTtt9rFVZ5Od8WUAFgESMI/to12CwbZLkow3rucb6JtwGAQ1Nj+5LAH6g
         27Ugslizd7++BDUk5czC9l2EQw2/ZII0WELNgprkopvuljx7OwDD5vj8wZYUuLkCBkto
         UCzXRbZ75vQW1cPd5nL+SElSY/c+YHCA078CpWB8sCIfjGHX8QnpNodlHsMKGHssDU48
         OOELE19z32HfpHZ+i6iuPQ+TusZYGcq5WDBiLoxZG6mLRL5oIZ0/sDiUoryFi451vuJ4
         L+QTRvuesYOSKGdH3zps/6uxIBJ9v6zlCy0GvPQ9nvhXYs3fox7OMA49+/dY9UhbN6zG
         WoKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VeAkYJr5cV7UOdIxHXK8x7A3sYToMzAJATkPDcxd6fI=;
        b=YHxOPUO+onlxURwQ7dHWzwErDi1O8vutCdYoIJ3wMiXD4rgaE9qKm5bGTeV7aP+vWq
         HTYEEnM2MFSSuTzHpvtH69SPn9vbIURAHMaNih8Pt1GTNLMX826E/8n5Kwq8HUAU9gW1
         XC9NcJi7Hgk2gKkjp2zBTzcCiHiYQaiEmvl9r/HUMltvfaYfm+0XZxMX9RlmGC6wAWmw
         5oYessU628N6B8N9NGPfIFL1cD+KCnfQdwSRaJMiZGFoJBielnYWEG7e3S98AFj0vUb2
         DnGoPppMUbzBEQMl+Cs7bOvPTMGWL6sKmBkO9U9fh0ymQ1O3y4axKuFZLtj2/RwBys0L
         69Eg==
X-Gm-Message-State: ACgBeo17w+oCeRxc7xF37MQcXOu3V/1grXUV743m1w2W4l5H9LeUsV1c
        IcWVRTkA1WdrPW5Sfg/3/94=
X-Google-Smtp-Source: AA6agR5WocPFsE3jYbjBJ9QILHNVCwf5Jv70R9n2QdLurAWCvwsdRgs51KteWK07As+QWPUt/vJq2Q==
X-Received: by 2002:a05:6870:3449:b0:11d:1e78:266c with SMTP id i9-20020a056870344900b0011d1e78266cmr13232094oah.122.1662489406869;
        Tue, 06 Sep 2022 11:36:46 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id j22-20020a9d7f16000000b00638ef9bb847sm6158887otq.79.2022.09.06.11.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 11:36:46 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: display: panel: Add Samsung AMS495QA01 panel bindings
Date:   Tue,  6 Sep 2022 13:36:41 -0500
Message-Id: <20220906183642.12505-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906183642.12505-1-macroalpha82@gmail.com>
References: <20220906183642.12505-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for the Samsung AMS495QA01 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..e7373846e7d8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+  reg: true
+  reset-gpios: true
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - elvdd-supply
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            backlight = <&backlight>;
+            elvdd-supply = <&vcc_sys>;
+            vdd-supply = <&vcc3v3_lcd0_n>;
+        };
+    };
+
+...
-- 
2.25.1

