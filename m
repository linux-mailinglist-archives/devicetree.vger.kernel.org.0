Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9644C4B416B
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 06:38:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232678AbiBNFhv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 00:37:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240464AbiBNFhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 00:37:45 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 835EA4EF6A
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 21:37:38 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id b12-20020a056902030c00b0061d720e274aso31798569ybs.20
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 21:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=DQT1njARcAhQIihUotwILwK0baqFsKzs/qdOQYfjv+Y=;
        b=oMvKMnKWvbRtr0l3jGrkdm9p29tjSHtw95L8IvCbwaufLdZ58bkWoR/MIAGbmxIDNO
         74swf8EoSGgOIV9tdjWYPg8p+3lenYCFrs0vZKplemvO4UvcORH+n7Mhy+auqOZ2vd+q
         otqKjMDl2eS/6jYwLKo+yju3h1BsAX6WnMrB5qCjKGSBqKss8Kmt66ve3GtbSFvd/EQx
         4PRLsvvjRxehPpufJfqfekjZmzEU4ob0pYTOPHlv1OZFMkkIq+tJA534UOpV769Gbzt3
         NRdZv8XhxXniBv858yKjIfAMxqOwVLivC2/NjUtdoi88OfxIBEXVGAUKzLRru1X+KCHg
         OQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=DQT1njARcAhQIihUotwILwK0baqFsKzs/qdOQYfjv+Y=;
        b=z1aml/8FCulZsl/sSCO67hVgc5tW3gpJvuDzQdsVDYvZFvLstp1n0o06HBiaiuO4eD
         fL0e+L6RMqhy58xYaYp0wW0D3G2QIs0o5TiUHFCAURH02zKTl+gAPjrfN/9oeRAEidzF
         o/dLbadx5NiRoIEp5AuFGDTI4ygb0YQbwPG3GrhjBnLRNDT2mszteGv7c7o8oEWvkt/4
         KoYk8M4BoChXvXsqQf4pt+FpiefcoRN4dEE5Ojgxdwg0RwNnOsjKb1hkOzzcpivTfFgs
         DEg4nFpp5ReAK3syVEYXOD7LAUv8rHkUH5/FTriR2Vrp1U6xM5SckrZYVg73K8Eb6J3t
         grRg==
X-Gm-Message-State: AOAM533QvhyRfp/v4amts8QSYmQF+1QCMrSydBO9ziZr1DFc/X8KhE7/
        hFI+f2iGRpLX6YdCOFQzII6PvYxb/+0w
X-Google-Smtp-Source: ABdhPJxOzKq6UNR5brAsM1MXIf51Dq60vdHRApus/HRyC/6Y4e0TFqZsk5zbI7Qfdjv+7pQmG53gsfD841a+
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:f315:f92d:e3d3:2539])
 (user=tzungbi job=sendgmr) by 2002:a81:a391:: with SMTP id
 a139mr12318940ywh.432.1644817057814; Sun, 13 Feb 2022 21:37:37 -0800 (PST)
Date:   Mon, 14 Feb 2022 13:36:44 +0800
In-Reply-To: <20220214053646.3088298-1-tzungbi@google.com>
Message-Id: <20220214053646.3088298-4-tzungbi@google.com>
Mime-Version: 1.0
References: <20220214053646.3088298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
Subject: [PATCH 3/5] dt-bindings: add google,cros-kbd-led-backlight
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     bleung@chromium.org, groeck@chromium.org, robh+dt@kernel.org
Cc:     chrome-platform@lists.linux.dev, tzungbi@google.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_DKIM_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../chrome/google,cros-kbd-led-backlight.yaml | 35 +++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          |  3 ++
 2 files changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-kbd-led-backlight.yaml

diff --git a/Documentation/devicetree/bindings/chrome/google,cros-kbd-led-backlight.yaml b/Documentation/devicetree/bindings/chrome/google,cros-kbd-led-backlight.yaml
new file mode 100644
index 000000000000..104299e09cbb
--- /dev/null
+++ b/Documentation/devicetree/bindings/chrome/google,cros-kbd-led-backlight.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/chrome/google,cros-kbd-led-backlight.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChromeOS keyboard backlight LED driver.
+
+maintainers:
+  - Tzung-Bi Shih <tzungbi@google.com>
+
+properties:
+  compatible:
+    const: google,cros-kbd-led-backlight
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    spi0 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      cros_ec: ec@0 {
+        compatible = "google,cros-ec-spi";
+        reg = <0>;
+
+        kbd-led-backlight {
+          compatible = "google,cros-kbd-led-backlight";
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index d1f53bd449f7..1815ca0e8ebc 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -90,6 +90,9 @@ properties:
   ec-pwm:
     $ref: "/schemas/pwm/google,cros-ec-pwm.yaml#"
 
+  kbd-led-backlight:
+    $ref: "/schemas/chrome/google,cros-kbd-led-backlight.yaml#"
+
   keyboard-controller:
     $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
 
-- 
2.35.1.265.g69c8d7142f-goog

