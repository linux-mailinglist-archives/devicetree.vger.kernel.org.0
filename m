Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96931501BA2
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 21:15:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344339AbiDNTRR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 15:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242337AbiDNTRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 15:17:15 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A68D57164
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:14:48 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id z6-20020a17090a398600b001cb9fca3210so6591739pjb.1
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t3B8R1R0UeZGzGIpSP1VsaVNrwO0rNV84syuceuTaAY=;
        b=b5Fs5sDOa79UhjbzPTs/JgC3ZwAG7NBgvr6aXt7bYFnhtYwh5Qhq4awyCED6jrY/ls
         6kXC+XwBxlCEfJYSsKooIzN+n2k85eLJA4On2pukofnTXDJI47phHjHNzpuoqz1Z/hfA
         CUkxnAUQ6ExxLagh3N2auhdDGFfha9QHP7p2/1ZLM/SN9R8l0eGlJFlk0qTI607sY7nQ
         buU+vmnbqP0VzyEnqYwpcnJJ6VqPMt1cjurzeEvmmIRsmBNDA13xA5+n6NRTaaA7gHH5
         s2eyvq89sXUs87L/lCOC1ufp8KMyH9jOxFNd/uTuundTTixrIxgw66cT4NysAjnIH7mE
         MLDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t3B8R1R0UeZGzGIpSP1VsaVNrwO0rNV84syuceuTaAY=;
        b=WR2k27Rt87I5Dl2P4SH2CH0gLixRykvHkysujjj4rG+eNX+F7RQNKQgnyxXqJRYjOo
         lCagJuRj0uCLqYa3yE6/aVT4buiWWxSxDCJWx/J/PWHtCR3jsNZFTwm/THs60Pu5sebW
         FyzhkAjyIQO/GyMwR2Ilcq2OjycoMRKQ43iWTr64rW+oHV1W5iTx/eJuV22tE+NI2srM
         m4WAhpDaWWmrrDEkOw/gfB8LlJhdpemIY5/EcCn9bjaQruktpNLdgOVYdegBrCcuYIhj
         fR/p8Kmqx/E4IK1DyItZPNQRDOBRudtPVmRIOiCG8DD6+aTxmDcDOKQm8PBmK+Ojx/w8
         BQ0A==
X-Gm-Message-State: AOAM5327XyOoHOJVKPWwqL9siCRwCMGVtRi6xgwis0vYJZZD976DH4L+
        7kQM9hHKhpCJ0Rkb0vOahWovKA==
X-Google-Smtp-Source: ABdhPJyKMz9LyNs/fJ1c9/QdkmkC1o9RA5i86GWq//yvKqL0YII6HsSpPoBCxC8yJnQ9BCUWp+qP2A==
X-Received: by 2002:a17:902:8304:b0:155:d594:5c04 with SMTP id bd4-20020a170902830400b00155d5945c04mr47435554plb.105.1649963688006;
        Thu, 14 Apr 2022 12:14:48 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:5b60:6a76:138d:2646])
        by smtp.gmail.com with ESMTPSA id e12-20020a056a001a8c00b004fab88d7de8sm614148pfv.132.2022.04.14.12.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 12:14:47 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 1/2] dt-bindings: wkup-m3-ipc: Add ti,set-io-isolation property
Date:   Thu, 14 Apr 2022 12:12:49 -0700
Message-Id: <20220414191250.2969282-2-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220414191250.2969282-1-dfustini@baylibre.com>
References: <20220414191250.2969282-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the ti,set-io-isolation DT property on the wkup_m3_ipc
node which tells the wkup_m3_ipc driver to use the wkup_m3 to enable
IO Isolation during low power mode transitions on am43xx platforms.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
[dfustini: convert to YAML, make DTS example that passes check]
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
Changes from v1:
- correct typo of 'ti,set-io-isolation' property in subject
- make 'ti,set-io-isolation' only valid for 'ti,am4372-wkup-m3-ipc'

 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 79 +++++++++++++++++--
 1 file changed, 74 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml b/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
index 7f4a75c5fcaa..97eb0faef345 100644
--- a/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
@@ -24,14 +24,22 @@ description: |+
   A wkup_m3_ipc device node is used to represent the IPC registers within an
   SoC.
 
-  Support for VTT Toggle
-  ==================================
+  Support for VTT Toggle with GPIO pin
+  ====================================
   On some boards like the AM335x EVM-SK and the AM437x GP EVM, a GPIO pin is
   connected to the enable pin on the DDR VTT regulator. This allows the
   regulator to be disabled upon suspend and enabled upon resume. Please note
   that the GPIO pin must be part of the GPIO0 module as only this GPIO module
   is in the wakeup power domain.
 
+  Support for IO Isolation
+  ========================
+  On AM437x SoCs, certain pins can be forced into an alternate state when IO
+  isolation is activated. Those pins have pad control registers prefixed by
+  'CTRL_CONF_' that contain DS0 (e.g. deep sleep) configuration bits that can
+  override the pin's existing bias (pull-up/pull-down) and value (high/low) when
+  IO isolation is active.
+
 properties:
   compatible:
     enum:
@@ -63,6 +71,25 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: GPIO pin connected to enable pin on VTT regulator
 
+  ti,set-io-isolation:
+    type: boolean
+    description:
+      If this property is present, then the wkup_m3_ipc driver will instruct
+      the CM3 firmware to activate IO isolation when suspending to deep sleep.
+      This can be leveraged by a board design to put other devices on the board
+      into a low power state.
+
+ allOf:
+   - if:
+       properties:
+         compatible:
+           not:
+             contains:
+               const: ti,am4372-wkup-m3-ipc
+     then:
+       properties:
+         ti,set-io-isolation: false
+
 required:
   - compatible
   - reg
@@ -74,21 +101,63 @@ additionalProperties: false
 
 examples:
   - |
+    /* Example for AM335x SoC */
     soc {
         #address-cells = <1>;
         #size-cells = <1>;
 
-        mailbox: mailbox {
+        am335x_mailbox: mailbox {
             #mbox-cells = <1>;
         };
 
-        wkup_m3_ipc: wkup_m3_ipc@1324 {
+        wkup_m3_ipc@1324 {
            compatible = "ti,am3352-wkup-m3-ipc";
            reg = <0x1324 0x24>;
            interrupts = <78>;
            ti,rproc = <&wkup_m3>;
-           mboxes = <&mailbox &mbox_wkupm3>;
+           mboxes = <&am335x_mailbox &mbox_wkupm3>;
            ti,vtt-gpio-pin = <7>;
         };
     };
+
+  - |
+    /*
+     * Example for AM473x SoC:
+     * On the AM437x-GP-EVM board, gpio5_7 is wired to enable pin of the DDR VTT
+     * regulator. The 'ddr_vtt_toggle_default' pinmux node configures gpio5_7
+     * for pull-up during normal system operation. However, the DS0 (deep sleep)
+     * state of the pin is configured for pull-down and thus the VTT regulator
+     * will be disabled to save power when IO isolation is active. Note that
+     * this method is an alternative to using the 'ti,vtt-gpio-pin' property.
+     */
+    #include <dt-bindings/pinctrl/am43xx.h>
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        am437x_mailbox: mailbox {
+            #mbox-cells = <1>;
+        };
+
+        am43xx_pinmux {
+            pinctrl-names = "default";
+            pinctrl-0 = <&ddr3_vtt_toggle_default>;
+
+            ddr3_vtt_toggle_default: ddr_vtt_toggle_default {
+                 pinctrl-single,pins = <
+                    0x25C (DS0_PULL_UP_DOWN_EN | PIN_OUTPUT_PULLUP | DS0_FORCE_OFF_MODE | MUX_MODE7)
+                 >;
+            };
+        };
+
+        wkup_m3_ipc@1324 {
+           compatible = "ti,am4372-wkup-m3-ipc";
+           reg = <0x1324 0x24>;
+           interrupts = <78>;
+           ti,rproc = <&wkup_m3>;
+           mboxes = <&am437x_mailbox &mbox_wkupm3>;
+           ti,set-io-isolation;
+        };
+    };
+
 ...
-- 
2.32.0

