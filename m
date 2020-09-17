Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA7D26D608
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 10:12:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726333AbgIQIME (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 04:12:04 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:35499 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726293AbgIQIMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 04:12:00 -0400
Received: by mail-lj1-f194.google.com with SMTP id a15so1246336ljk.2
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 01:11:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=v4GvevF2b0GdSPUoOE8doKHY228reKBSywR4UsvFM+s=;
        b=uA7pfgtBo+g1XiP7RoQtc5DCiDrKRsDYUlHdtJ/vkmjizvA07FAtpzvShBAusl2baO
         WeaWDna/OZZXpUUmiomn1sVK0GE9WzYyhtWMoC5fLMtiOdZxwMBQg+7NdorDcHqkCcDq
         Vz2OY1HW9NHZrwKFeiJqgpyAnz/ZYeN540AI8lEaNmzivG0LxODxVCnIgkpvMXuXnQlh
         3niB14fvqiSR1tUVNygwNrayASXwMz2WHKtybyNkbqtP4dQVRPJM0o2NAwXg+SlZlDMf
         qfu7gHJw7RdIuyJu4wDr9JLbUOHmxYoja0nbBvopvLkMk7oWZ/+4yQ0t2Jj3WG/xeLMF
         oQdg==
X-Gm-Message-State: AOAM530xb9bhNArhNx16iJoLj+QsipG0XBO7TomF+tf7ABMFkMYhYSVy
        gNSjF2AW6VGDW7vsMKXR3lF+DrTpJwe6OQ==
X-Google-Smtp-Source: ABdhPJxoOJCwMDjuUa13tJLY+OMjeiW+OaTl+Do7XP5XcB5hYvkXwJN7xgjvk7kkzLZFm8apkhPSoA==
X-Received: by 2002:a05:6512:304a:: with SMTP id b10mr8361943lfb.475.1600329747049;
        Thu, 17 Sep 2020 01:02:27 -0700 (PDT)
Received: from localhost.localdomain (62-78-225-252.bb.dnainternet.fi. [62.78.225.252])
        by smtp.gmail.com with ESMTPSA id q16sm5896009ljj.136.2020.09.17.01.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 01:02:25 -0700 (PDT)
Date:   Thu, 17 Sep 2020 11:02:18 +0300
From:   Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To:     matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-power@fi.rohmeurope.com,
        linux-watchdog@vger.kernel.org
Subject: [PATCH v1 2/6] dt_bindings: regulator: Add ROHM BD9576MUF and
 BD9573MUF PMICs
Message-ID: <91f6bcbcfce7de3d92c40a6b3a9e4bd84420deee.1600329307.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1600329307.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1600329307.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

    Add bindings for regulators on ROHM BD9576MUF and BD9573MUF PMICs.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 .../regulator/rohm,bd9576-regulator.yaml      | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd9576-regulator.yaml

diff --git a/Documentation/devicetree/bindings/regulator/rohm,bd9576-regulator.yaml b/Documentation/devicetree/bindings/regulator/rohm,bd9576-regulator.yaml
new file mode 100644
index 000000000000..6df077b0db86
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/rohm,bd9576-regulator.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/rohm,bd9576-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ROHM BD9576 and BD9573 Power Management Integrated Circuit regulators
+
+maintainers:
+  - Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
+
+description: |
+  This module is part of the ROHM BD9576 MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/rohm,bd9576-pmic.yaml.
+
+  The regulator controller is represented as a sub-node of the PMIC node
+  on the device tree.
+
+  The valid names for BD9576 regulator nodes are
+  vd50, vd18, vdddr, vd10, voutl1, vouts1
+
+patternProperties:
+  "regulator-.+":
+    type: object
+    description:
+      Properties for single regulator.
+    $ref: "regulator.yaml#"
+
+    required:
+      - regulator-name
+
+    unevaluatedProperties: false
+additionalProperties: false
-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 
