Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C28224A805
	for <lists+devicetree@lfdr.de>; Wed, 19 Aug 2020 22:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726689AbgHSUwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Aug 2020 16:52:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbgHSUwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Aug 2020 16:52:04 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81671C061757
        for <devicetree@vger.kernel.org>; Wed, 19 Aug 2020 13:52:04 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id w25so26870789ljo.12
        for <devicetree@vger.kernel.org>; Wed, 19 Aug 2020 13:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=klnwjmccKXa83diz/UPM1wfkPLBuKxflt6KGqDpoJIA=;
        b=iqx9MNXuK9IoffrzNcqTU41PFdUMB91XH71inx1n2Tiz4S5KKqLMmBMh2CkqU+HxTK
         2NodYjaUeQBcdmgPNeWEwyUgePGIoo5qWkdmI7x0ITRwV6yUIEGHVWLHPYm62g1ZfgLe
         06BETNmHkSkmN1fZ6q8o4fzGgUNIZJAy1/dXU64TqjyuQrZsTsYxx8ivEJzwYQ+IKi7W
         1U/sU1KgFu84MyeJkOJN/3VzwhW2LKAKn5Pm/Gv/2HN9RkMAPa7KApzb6AN0I3yx760B
         D9YYJByO495l8YChELhS10ikO2fb6z5pFV1FbppTFHLDj6Cfqk5nW0CeZu7QqcwaClmK
         DveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=klnwjmccKXa83diz/UPM1wfkPLBuKxflt6KGqDpoJIA=;
        b=E34nhPpvuBwZe/Ipr7Gv8bxEHBnAYyCEn1Fdl7R+m+AamcTGUW8JaxNDlblEDXaWbb
         ImSO7Kz/jXthk7L1cU13DWcN9Uj840yqZ86+vbqPQqVrIj3yUHsmAAijOpqqWtsW8v5K
         ao4ezNbO4ZdpUmN+CEkqC3cDEGfjo4TOTvEwCzgTIlEamUC1jv7EQPG82rWDjMTz7Jnb
         ycWO9fXqOi+X0QsDA06OmF3lkwAmb79JewFKbsYTvKrbjlmnIxWybfYvpkXF0Kf9JBPU
         fC6SK4EMGEcjD4+ae4UCQc90+7Mek5DyYrz9AcJ9xjajs9yCRd0VFI7tlb9GLPMGuCb7
         w9Pw==
X-Gm-Message-State: AOAM531weMP/7FIQHHwHM/Ix2fS4JfkzEpMj/NwIiuRTyHcXnO9qus1B
        4Qh+f+hBhTZtnPZfXUJ4rnYK6w==
X-Google-Smtp-Source: ABdhPJzuqHZGPimvmmxbFVWte7D1lk3H6Rdx+S0uh8xMtn50T9AblBCDe5+0zwHi+dkUD38DwYY2ew==
X-Received: by 2002:a2e:531c:: with SMTP id h28mr33256ljb.322.1597870322914;
        Wed, 19 Aug 2020 13:52:02 -0700 (PDT)
Received: from localhost.bredbandsbolaget (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
        by smtp.gmail.com with ESMTPSA id u10sm8188lfo.39.2020.08.19.13.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2020 13:52:02 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Lee Jones <lee.jones@linaro.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH 2/3 v3] dt-bindings: backlight: Add Kinetic KTD253 bindings
Date:   Wed, 19 Aug 2020 22:51:49 +0200
Message-Id: <20200819205150.164403-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200819205150.164403-1-linus.walleij@linaro.org>
References: <20200819205150.164403-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Kinetic KTD253
white LED backlight driver.

Cc: devicetree@vger.kernel.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Drop the pointless cargo-culted "default-on" property that
  we were not using
- Correct the brightness in the example to something legal (13)
ChangeLog v1->v2:
- Create common.yaml for backlight as suggested by Sam and
  use that.
- Rename the GPIO line "enable-gpios"
---
 .../leds/backlight/kinetic,ktd253.yaml        | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml
new file mode 100644
index 000000000000..7a6ec1f8c0f3
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/backlight/kinetic,ktd253.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kinetic Technologies KTD253 one-wire backlight
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Kinetic Technologies KTD253 is a white LED backlight that is
+  controlled by a single GPIO line. If you just turn on the backlight
+  it goes to maximum backlight then you can set the level of backlight
+  using pulses on the enable wire. This is sometimes referred to as
+  "expresswire".
+
+allOf:
+  - $ref: common.yaml#
+
+properties:
+  compatible:
+    const: kinetic,ktd253
+
+  enable-gpios:
+    description: GPIO to use to enable/disable and dim the backlight.
+    maxItems: 1
+
+  default-brightness: true
+  max-brightness: true
+
+required:
+  - compatible
+  - enable-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    backlight {
+        compatible = "kinetic,ktd253";
+        enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+        default-brightness = <13>;
+    };
-- 
2.26.2

