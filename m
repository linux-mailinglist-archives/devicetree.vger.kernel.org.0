Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 962C2263C19
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 06:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725372AbgIJEeF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 00:34:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbgIJEdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 00:33:49 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF7CBC061757
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 21:33:48 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id j6so2657656qvn.13
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 21:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=kepGzz19JH800nsZ5Euti5avIzl4EmHZn4FGf0VjD0I=;
        b=THImz+evU69aiW7lVozK8lfXVEvqb5rS2iTkM4mQlTFfk26rIIMHdBcCSQRS/7jGaW
         mArPRYtTu0VhgV4LSMGWBaF+TQEkuXN347EB9qNhdYe8GGXl9IpDPSFJ1ano9zth5Dr8
         VWKB11yKbl03rzckK4Zxr7+CktyHThy4pJBWhIsH5n6t3eX1kenolJiPjeO/SX6gGTHC
         iHPxG0NASw8DpM0Wtzb9i38TQ4escQQOmBfSCBnq3HCUS9IunUGgUi86nMrYwH+TMvo4
         yiWjMw8/a+K02vWh7TmS90UgS2I+OqOWF0qM0ot15+lK6j4dBObB6nHlogHwxXl505MN
         xk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=kepGzz19JH800nsZ5Euti5avIzl4EmHZn4FGf0VjD0I=;
        b=cHBT/t2FklObU33jGbp69g7z1bpvxcbmY0yKxexNDxfdL377JOYQ7D4a5SQC7w/IPx
         X36qw+rHLTsK4iQOfEEt+d9vucMC400q7ui7cV8uIHpJPk1lsjhkOfuRAlsIbS2RarGq
         Bx3L3slnIO9GEBVkYvk1jx9WVQyuoq3Q2RWTZrk/Xm+XxCUNwZAOQa48Ekbej5NuqRyo
         Q7YL6IDSb5EAtXxWbzzxQAZUXIAxdDNZO9fwB4m52Eh1bVBc4i4oBpnwq6Z8+5sVLcJe
         NmutqYlqGGOAfGQsVLpxtq4wI9CKtBWbEHxVUZKGzhH+eFaTtyZp09ikV2aBUVFvXjNO
         ifBA==
X-Gm-Message-State: AOAM531kGJg7VkTTq9x+Ca8+sJ3NflLmMNYHiqwfsjXnt+xuBAtqSjeX
        s/lEwM8s0nct52yubnVhzTPa16Sjv2zr
X-Google-Smtp-Source: ABdhPJxKSj/lsjg9wQDLeS2GUfIq9++14VvrNo44AJdg/0uAWewWnroPPltEH4kuL72hmdxf2My0ln8ARLb1
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a05:6214:14a3:: with SMTP id
 bo3mr7207877qvb.8.1599712427993; Wed, 09 Sep 2020 21:33:47 -0700 (PDT)
Date:   Thu, 10 Sep 2020 12:33:31 +0800
In-Reply-To: <20200910043331.3808223-1-tzungbi@google.com>
Message-Id: <20200910043331.3808223-3-tzungbi@google.com>
Mime-Version: 1.0
References: <20200910043331.3808223-1-tzungbi@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH RESEND 2/2] ASoC: dt-bindings: rt1015p: add document
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, jack.yu@realtek.com,
        tzungbi@google.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds DT binding document for rt1015p.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/realtek,rt1015p.yaml       | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/realtek,rt1015p.yaml

diff --git a/Documentation/devicetree/bindings/sound/realtek,rt1015p.yaml b/Documentation/devicetree/bindings/sound/realtek,rt1015p.yaml
new file mode 100644
index 000000000000..def1db298eac
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/realtek,rt1015p.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/realtek,rt1015p.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek rt1015p codec devicetree bindings
+
+maintainers:
+  - Tzung-Bi Shih <tzungbi@google.com>
+
+description: |
+  Rt1015p is a rt1015 variant which does not support I2C and
+  only supports S24, 48kHz, 64FS.
+
+properties:
+  compatible:
+    const: realtek,rt1015p
+
+  sdb-gpios:
+    description:
+      GPIO used for shutdown control.
+      0 means shut down; 1 means power on.
+    maxItems: 1
+
+required:
+  - compatible
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    rt1015p: rt1015p {
+        compatible = "realtek,rt1015p";
+        sdb-gpios = <&pio 175 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.28.0.526.ge36021eeef-goog

