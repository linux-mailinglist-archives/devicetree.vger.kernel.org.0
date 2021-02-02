Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB6CC30CA64
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:50:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237464AbhBBSr3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:47:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238940AbhBBSpb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 13:45:31 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4021BC061351
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 10:44:39 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id m6so14962796pfk.1
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 10:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zfJaZeSP3qU8KrwqMarKO9cEtnMLo05eOmQMM7Wyxtw=;
        b=oL3IHeauIK9c1jLr1x2r1LH7GiSvm8eL9TDTTc2m1ETATV8q0JEtGWJKYX8lUu/hoD
         ZC/+4yGd4qHjS30KO82h6eLxQIDOWHatA3ubZMlB2HlxaRR1eSmw91CE8DezIo+Nb9MG
         s7/A3LN7T8onzpXtAtvjNitsTagZCydF5pVsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zfJaZeSP3qU8KrwqMarKO9cEtnMLo05eOmQMM7Wyxtw=;
        b=lbjityEfHDfZX74EtS8y8RDfHdvZnFa8msu/e0VQdZQd1KZIRvVYwJiwS4HxQgIT6q
         OCj4Xc8GLSQvOmh2juy73LMjS/S4N815Q3D0iMV5TNnkXC+o+VvISutrNOitTBVinaWf
         mb2Qo4QswL1TphfIN3+nAKY/W25j4Exw+kCthfIFo0IbTAQjI/Pxf7g+f8/twpm297ay
         /Nb4PTnw776ym6d5zlv2Vm/ymTNmuwkjRUmmXlzj3aoo0vwDnDxaIdd27EBePp/nwIfN
         n4Ed9n89bOEi/rzHf4vy4uP5YwcKrRxRYYCwj9vnEbWZvVmEz6mA2Nl4h1I4soxyhPJ3
         bUtw==
X-Gm-Message-State: AOAM530czu+aHjm7LJeI9on5gOa8LnyrfhkxCtKLrAcnSaNcr4kJ+0mH
        5mD17ucPbBvUpDR+fUYoo9D9dA==
X-Google-Smtp-Source: ABdhPJzS00o0ZNT47WkBftyVcE9yIkAKxQ94TVrKcAir0QcSpAuRTCBsXTKGmytpN3Ma/5+3rKSWwg==
X-Received: by 2002:a05:6a00:15cc:b029:1ba:5282:3ab8 with SMTP id o12-20020a056a0015ccb02901ba52823ab8mr22733375pfu.77.1612291478865;
        Tue, 02 Feb 2021 10:44:38 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:201:3571:bd6e:ee19:b59f])
        by smtp.gmail.com with ESMTPSA id b21sm23159859pfb.45.2021.02.02.10.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 10:44:38 -0800 (PST)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 2/3] dt-bindings: iio: Add cros ec proximity yaml doc
Date:   Tue,  2 Feb 2021 10:44:33 -0800
Message-Id: <20210202184434.42644-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210202184434.42644-1-swboyd@chromium.org>
References: <20210202184434.42644-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some cros ECs support a front proximity MKBP event via
'EC_MKBP_FRONT_PROXIMITY'. Add a DT binding to document this feature via
a node that is a child of the main cros_ec device node. Devices that
have this ability will describe this in firmware.

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Gwendal Grignou <gwendal@chromium.org>
Cc: <devicetree@vger.kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../google,cros-ec-mkbp-proximity.yaml        | 46 +++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          |  3 ++
 2 files changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml

diff --git a/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml b/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml
new file mode 100644
index 000000000000..d82b929af445
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/iio/proximity/google,cros-ec-mkbp-proximity.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChromeOS EC MKBP Proximity Sensor
+
+maintainers:
+  - Stephen Boyd <swboyd@chromium.org>
+  - Benson Leung <bleung@chromium.org>
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+
+description: |
+  Google's ChromeOS EC sometimes has the ability to detect user proximity.
+  This is implemented on the EC as near/far logic and exposed to the OS
+  via an MKBP switch bit.
+
+properties:
+  compatible:
+    const: google,cros-ec-mkbp-proximity
+
+  label:
+    description: Name for proximity sensor
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      ec@0 {
+        compatible = "google,cros-ec-spi";
+        reg = <0>;
+        proximity {
+          compatible = "google,cros-ec-mkbp-proximity";
+          label = "proximity-wifi-lte";
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 76bf16ee27ec..479a9f15de32 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -94,6 +94,9 @@ properties:
   keyboard-controller:
     $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
 
+  proximity:
+    $ref: "/schemas/iio/proximity/google,cros-ec-mkbp-proximity.yaml#"
+
   codecs:
     type: object
     additionalProperties: false
-- 
https://chromeos.dev

