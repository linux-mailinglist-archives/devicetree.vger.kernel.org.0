Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6FCC38091B
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 14:05:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232773AbhENMG0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 08:06:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232741AbhENMGZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 08:06:25 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3722C061756
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 05:05:14 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id p17so15336987pjz.3
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 05:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ESz1m+xFUF72VscU5fWkJoT2mNgqOdvTW7GhFogGpow=;
        b=jlLMKB+F/SNGEYmoZGhZ5YtkM3COzY94C5Ivz+iYkjUmqI2lLnk4k6ZlSvm1tbAFrL
         4CatoS/pHf+J0nmYUQ2qGObJ35+qtUdDEGjYQ6dR2xuafEBAbonWclGOYfp4TScaZDyE
         RVxAypldZSDnc6ZJnYTa89lgL8Lu1GIg4vkpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ESz1m+xFUF72VscU5fWkJoT2mNgqOdvTW7GhFogGpow=;
        b=T8raS0Sm7Ln6WwrRZNnxaZR4f/r7l7EyuIK6uFrT2+QwQwJFfHWaAQIlAMSlIIAhy3
         4F5dLkZqF8IyqL0j0EhKGcuVfJfvA6qvLW/qh8XY/sOFHm2eB01aACgOG+rjPWxWwpax
         7DOJwS9KwzzJ9ZYsL9JUUrjlwmJKeqzR/eRtXDT0f9Z4gWCYcNDjm/QvIMEhkXPNOZ8y
         W4KcD2T5+6Ef9RteirVNMGP27qaSGQfJsqjjq2MPWMRVMursmdK6nOkDIxbAZ7qDEqjU
         oNRu+uIINiWSRh84CAWLczqcy9n20qFAEy5AsFNE8PY9LgVqnM144bh1phS/Foee7vIC
         kdOg==
X-Gm-Message-State: AOAM531mjXzU/ZXFQbvfPi3G7c7bN9+MaFFpstMVbgMPfB0InkJ7G93J
        Oc/zOC9uEylNPug3HILyCTBuvN+Rs39qyBlR
X-Google-Smtp-Source: ABdhPJxqR+M96mho41Ct8cnfTqOd9Wenm8xCKMaP6Cs7rBEAt2Gh3Wb8X7EhF1DQX9+x5g4tQFQzHw==
X-Received: by 2002:a17:90a:c217:: with SMTP id e23mr10653652pjt.43.1620993913826;
        Fri, 14 May 2021 05:05:13 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:b:7641:4b1d:694e:6ea2])
        by smtp.gmail.com with ESMTPSA id q24sm4117786pgb.19.2021.05.14.05.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 05:05:13 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>
Cc:     Stephen Boyd <sboyd@chromium.org>, linux-kernel@vger.kernel.org,
        linux-input@vger.kernel.org, Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Jiri Kosina <jikos@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>, Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 1/2] mfd: google,cros-ec: add DT bindings for a baseboard's switch device
Date:   Fri, 14 May 2021 20:05:05 +0800
Message-Id: <20210514120506.264838-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.31.1.751.gd2f1c929bd-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is for ChromeOS tablets which have a 'cros_cbas' switch device
in the "Whiskers" base board. This device can be instantiated only by
device tree on ARM platforms. ChromeOS EC doesn't provide a way to
probe the device.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

---

Changes in v7:
 - no changes from v6

Changes in v6:
 - Remove a label for cbas node in a example

Changes in v5:
 - Add missing blank lines and change the description property's position.
 - Add a note to description: "this device cannot be detected at runtime."

Changes in v4:
 - Define cros-cbase bindings inside google,cros-ec.yaml instead of
   a separated binding document.

 .../bindings/mfd/google,cros-ec.yaml          | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 76bf16ee27ec..929c17552d8b 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -114,6 +114,22 @@ properties:
       - "#address-cells"
       - "#size-cells"
 
+  cbas:
+    type: object
+
+    description:
+      This device is used to signal when a detachable base is attached
+      to a Chrome OS tablet. This device cannot be detected at runtime.
+
+    properties:
+      compatible:
+        const: google,cros-cbas
+
+    required:
+      - compatible
+
+    additionalProperties: false
+
 patternProperties:
   "^i2c-tunnel[0-9]*$":
     type: object
@@ -180,6 +196,10 @@ examples:
             interrupts = <99 0>;
             interrupt-parent = <&gpio7>;
             spi-max-frequency = <5000000>;
+
+            cbas {
+                compatible = "google,cros-cbas";
+            };
         };
     };
 
-- 
2.31.1.751.gd2f1c929bd-goog

