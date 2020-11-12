Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF032B10B2
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 22:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727268AbgKLVzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 16:55:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727043AbgKLVzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 16:55:15 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79A0C0613D1
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 13:55:05 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id v20so8065841ljk.8
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 13:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v/3CmVlipZFwgHhvcxuym7DjFXqNo5n9hsm6eQ+Z+yk=;
        b=i90VJSA79DqoRY0MYFhcvaAWxVXUBRbT4HSO1+XQM8Uk4+XrLGFgq7kaHiH9QUZd06
         RKPW9IUmMOs+HaLVdlWx3LnfZKF4t61Nx6KuNu6Y09vyq8uYjHqgm/1atqO0e+5yT/v5
         gS4jrqWD9DL+YDSNryxq+B/7C8BLawgUYVlWUxWAO7BpmYIg9w+3lO7AklGAr3wEc/mF
         b8a5TcjW6rCJGkLzeujPb/BWUllAdnCv6Xqaa2wK8FM3ZlxwHjJGoytvepePliy+XKRS
         2MkLDeYJoAAfVJxAlXyFgFuYkAL07s9+ca7ZrXfo+OVk6KhhOlX4EQcVXshzJNWvoV7n
         B91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v/3CmVlipZFwgHhvcxuym7DjFXqNo5n9hsm6eQ+Z+yk=;
        b=p1omBPmI4BY7FDsCYD1MN0IBJ2Kwu3TrxtwpfYwJIHzJk8qlTEDEyQzGXmsXlfmY8x
         yEMpZ+w8i/n3oAH2oRSdH5oroTYr0EUCglOhdqhwIAi+Sa0dpjjUjzhgwaE/ojHv+sIS
         zWABHkiWajHVh/N/1dwn8WdHo2jnm03skNoyVVWP3sJ8PMa2bKttHn9RUwzoR4hrVQyK
         qOeJpTd9PdZsjhnv/23dTNXndo8/oqZjqsR1Cj/JpZ9clxss+XU6rKuxQWPR6yyr/nhe
         kiLBA4vyhEsTVmbNcXCRYaTnj+RbKbuMKwUq0oJgb3R3M6mBQsQgIab4vCTvRd7CZzr0
         H1bA==
X-Gm-Message-State: AOAM532Py1AJETHRUCwnBU57FmikcRHv4BgK1sbnWy4N49ompofOZbD+
        x8xJDHzJ+6YrEjyV4QgvVQv46g==
X-Google-Smtp-Source: ABdhPJzzgpyzv2K/kYruF1QaR9zrulX98gMjoiTd9fiEkJPvmDbWFb8CTGYGZioT85nzerjVnl9iCw==
X-Received: by 2002:a2e:3a08:: with SMTP id h8mr751990lja.263.1605218104173;
        Thu, 12 Nov 2020 13:55:04 -0800 (PST)
Received: from localhost.bredbandsbolaget (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
        by smtp.gmail.com with ESMTPSA id x24sm967731ljj.112.2020.11.12.13.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 13:55:03 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org
Cc:     Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/3 v2] iio: accel: bmc150-accel: Add DT bindings
Date:   Thu, 12 Nov 2020 22:54:49 +0100
Message-Id: <20201112215451.2606136-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These accelerometers have bindings used in the kernel and
several device trees but no proper bindings documentation.
Add it.

Also add a compatible for the BMA222 that I am right now
adding support for in the driver.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Rename to simply bosch,bma255.yaml after one of the
  common accelerometers.
- Specify that the SPI uses a 4-wire interface.
- Specify maximum SPI clock frequency to 10MHz. (Checked
  all the datasheets.)
---
 .../bindings/iio/accel/bosch,bma255.yaml      | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml

diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
new file mode 100644
index 000000000000..5f48bdcf382c
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/accel/bosch,bma255.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bosch BMA255 and Similar Accelerometers
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description:
+  3 axis accelerometers with varying range and I2C or SPI
+  4-wire interface.
+
+properties:
+  compatible:
+    enum:
+      - bosch,bmc150
+      - bosch,bmi055
+      - bosch,bma255
+      - bosch,bma250e
+      - bosch,bma222
+      - bosch,bma222e
+      - bosch,bma280
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+  vddio-supply: true
+
+  interrupts:
+    maxItems: 1
+
+  mount-matrix:
+    description: an optional 3x3 mounting rotation matrix.
+
+  spi-max-frequency:
+    maximum: 10000000
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #include <dt-bindings/interrupt-controller/irq.h>
+        #address-cells = <1>;
+        #size-cells = <0>;
+        accelerometer@8 {
+            compatible = "bosch,bma222";
+            reg = <0x08>;
+            vddio-supply = <&vddio>;
+            vdd-supply = <&vdd>;
+            interrupts = <57 IRQ_TYPE_EDGE_FALLING>;
+        };
+    };
+  - |
+    # include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        accel@0 {
+            compatible = "bosch,bma222";
+            reg = <0>;
+            spi-max-frequency = <10000000>;
+        };
+    };
+...
-- 
2.26.2

