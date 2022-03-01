Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F3844C8BD7
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 13:42:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbiCAMmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 07:42:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234783AbiCAMmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 07:42:51 -0500
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6970898F72
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 04:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646138525;
    s=strato-dkim-0002; d=gerhold.net;
    h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Znlo/K3f7ZM1OI2X+Dlir6ob8K70SHoTC+P3PBMezhY=;
    b=CyupNifZJqC/kXZie75hhhlEl3cWhkxmsUOr3w6IQdoRhuYPYJhmuNIo0H5YQM/qZ3
    6oHsHTMI42VmUO3IuvOuUi3JPO+qD6m+S6vBcpy8E1JIV2/obSjoh0rdhIVpdzKcXIBe
    2xp7uyFLVHyDD+35snx4QEF9uRev1rcp1rl+K1uDZROZgoBIGKgDn56QetzNHvjgkskX
    MQVqrsE+MSr/4B1VDwHFL2HwbnbG7vQeImDaMi+VuW9//U27cl1VzHlec1XIEng17/i/
    M+f07d6Vw7Uq+Jn/p3r3FfCKfZdL4hfZnqj3KLLqmtcbqZrO0P1sCjmaqJ28WxhMJMHw
    SFUQ==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7UOGqRde+a0fiL2ZP6Q"
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id kdc58dy21Cg5a4n
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 1 Mar 2022 13:42:05 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
Date:   Tue,  1 Mar 2022 13:37:41 +0100
Message-Id: <20220301123742.72146-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220301123742.72146-1-stephan@gerhold.net>
References: <20220301123742.72146-1-stephan@gerhold.net>
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
during power up selects one of a few pre-defined amplifier modes.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../bindings/sound/awinic,aw8738.yaml         | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw8738.yaml

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw8738.yaml b/Documentation/devicetree/bindings/sound/awinic,aw8738.yaml
new file mode 100644
index 000000000000..83934a835fd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/awinic,aw8738.yaml
@@ -0,0 +1,48 @@
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
+  The Awinic AW8738 is a simple audio amplifier using
+  one-wire pulse control to set the amplifier mode.
+
+allOf:
+  - $ref: name-prefix.yaml#
+
+properties:
+  compatible:
+    const: awinic,aw8738
+
+  enable-gpios:
+    maxItems: 1
+
+  awinic,mode:
+    description: Amplifier mode (number of pulses for one-wire pulse control)
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+
+  sound-name-prefix: true
+
+required:
+  - compatible
+  - enable-gpios
+  - awinic,mode
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    audio-amplifier {
+        compatible = "awinic,aw8738";
+        enable-gpios = <&msmgpio 114 GPIO_ACTIVE_HIGH>;
+        awinic,mode = <5>;
+        sound-name-prefix = "Speaker Amp";
+    };
-- 
2.35.1

