Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 938404CD25E
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 11:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233073AbiCDK1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 05:27:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234093AbiCDK1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 05:27:43 -0500
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C07E1AA072
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 02:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646389612;
    s=strato-dkim-0002; d=gerhold.net;
    h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Iqm1fpwUrmgjEvUGxc9v780M6SwTcyGfZQ5pzdpBkTg=;
    b=DpqODdD+uC0r6yxbd22i5n+1nANHB1y4KLVKumhK4BTkdY5Q+4UblsHJloiVf6xGQf
    bAwSCr9d6o/pGE3bRm40/8ULVsv5qt1PfwWo6mugnND4+E1pb+THdiI80pXlM3Nt2EaM
    KyZshBQoazzEPOdE5CQtFQfcNrNjHHjEyjv26iqW4zCnUXY4hpG0hEG4nr3nFx0vczsv
    /4tVor1WstvC7u6MO1LFfsO/4fZ3J6JiezSvm7JdPsU5LgNaUu8XyKepqQ9oAI8BDoG/
    oEcR1RpnfDiOAd02x3B77f14DJocvUJKnkrOgUV1EtkHH6AjT1+W0P+83N7dd7RB9aEm
    kh4Q==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7UOGqRde+a0fyL2muE="
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id 2c4d58y24AQq4vD
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Fri, 4 Mar 2022 11:26:52 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v2 1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
Date:   Fri,  4 Mar 2022 11:24:51 +0100
Message-Id: <20220304102452.26856-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304102452.26856-1-stephan@gerhold.net>
References: <20220304102452.26856-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DT schema for describing Awinic AW8738 audio amplifiers. They are
fairly simple and controlled using a single GPIO. The number of pulses
during power up selects one of a few pre-defined operation modes. This
can be used to configure the speaker-guard function (primarily the
power limit for the amplifier).

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
Changes in v2:
  - Rename "enable-gpios" -> "mode-gpios" as an attempt to better
    reflect its true purpose. Add description to prevent confusion.
  - Rewrite all descriptions to be more clear about the purpose of
    the amplifier operation modes.
  - Add maximum for "awinic,mode"
---
 .../bindings/sound/awinic,aw8738.yaml         | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw8738.yaml

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw8738.yaml b/Documentation/devicetree/bindings/sound/awinic,aw8738.yaml
new file mode 100644
index 000000000000..dce86dafe382
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/awinic,aw8738.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/awinic,aw8738.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Awinic AW8738 Audio Amplifier
+
+maintainers:
+  - Stephan Gerhold <stephan@gerhold.net>
+
+description:
+  The Awinic AW8738 is a simple audio amplifier with different operation modes
+  (set using one-wire pulse control). The mode configures the speaker-guard
+  function (primarily the power limit for the amplifier).
+
+allOf:
+  - $ref: name-prefix.yaml#
+
+properties:
+  compatible:
+    const: awinic,aw8738
+
+  mode-gpios:
+    description:
+      GPIO used for one-wire pulse control. The pin is typically called SHDN
+      (active-low), but this is misleading since it is actually more than
+      just a simple shutdown/enable control.
+    maxItems: 1
+
+  awinic,mode:
+    description: Operation mode (number of pulses for one-wire pulse control)
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 7
+
+  sound-name-prefix: true
+
+required:
+  - compatible
+  - mode-gpios
+  - awinic,mode
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    audio-amplifier {
+        compatible = "awinic,aw8738";
+        mode-gpios = <&msmgpio 114 GPIO_ACTIVE_HIGH>;
+        awinic,mode = <5>;
+        sound-name-prefix = "Speaker Amp";
+    };
-- 
2.35.1

