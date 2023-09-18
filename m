Return-Path: <devicetree+bounces-981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E77A43D0
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B8361C20D04
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8091426F;
	Mon, 18 Sep 2023 08:03:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F945382
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:03:46 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACEAA197;
	Mon, 18 Sep 2023 01:03:23 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c3bd829b86so29929085ad.0;
        Mon, 18 Sep 2023 01:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695024203; x=1695629003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fMDBjV7ZdvjpiKYjnQ9ji2BJe9Llm9jhB+hSl4BOnZs=;
        b=YFdylu1xirAND2CU3V2TjiFJuHh7/pSOGbIlh7l+BvzioafoIKeUoo2MiMpNEdPG/B
         PLkmkoMqmajf23goODDv3uJDTmstqNTvKqOGh/JR3tyhf/v8RuvMNj5CNIIaCJaTkj1S
         J/cPGFcqfRs//T2Gcap40Vy/6I/arK2ePAKWqADWADTL4r7u3QHvqIaqL5ArkpukfPpI
         KHLrftf5coVY0JChKurYKtDTifTYNsZoxzIeq4QsTy3+epynEYaN3/EEtggS7NpxIGIU
         SOtZ5gsCTS+w7rMWpKY0a5cWQLCH0kWSfCiMY6QJvFl1l1A0CtdmJm/BKvK7R6H0YB5a
         gZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695024203; x=1695629003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fMDBjV7ZdvjpiKYjnQ9ji2BJe9Llm9jhB+hSl4BOnZs=;
        b=t0yTJOIwlE5FjzS6kLWDNiAEIsEPDV2oXMriowHpURehcM2s0zlFIaFDdeDFt46Dks
         fLo6Mpiz5eik1a+32ZztlmcI9Cla7zNKdjoWTMzOeRSO38YnKMbclkqWqp8JGcGETE7C
         HP42Qlso1t2g7BuUiwE8IDQDS+xtAOt87f3hxvFX0I9hijv7wku67qrKJ9mUj9BO4o8v
         N9fx+0ILK3Gj5KR1ePC61R/bHDyK8m9TqIRJ0ab/vlu2bUdcC9nQ36U+UoKPqcyBekRJ
         d2UgwIMnA2q5REpovwnI9huf4Xa42OZEyNOwerc1SOkVnTl5Cf++GH8w0pnlcdO+4xsI
         WiJA==
X-Gm-Message-State: AOJu0YyrdOvTc4hb4AFwsc3xWQyGF86/Vzb2mNQToSxLSTV1asGcIGTG
	n5jpiOW5D5I6wag1HdX4Wow=
X-Google-Smtp-Source: AGHT+IGXi2W+J/3x8oK5lbQUD18bLwvnaA/5noW/NYR2ET5Y42Nu5ZbQgsdfCKrlkjysNwN++q7ObA==
X-Received: by 2002:a17:902:e84a:b0:1c5:69fa:23e9 with SMTP id t10-20020a170902e84a00b001c569fa23e9mr2100956plg.58.1695024202898;
        Mon, 18 Sep 2023 01:03:22 -0700 (PDT)
Received: from localhost.localdomain ([115.96.179.37])
        by smtp.gmail.com with ESMTPSA id w18-20020a1709029a9200b001bde877a7casm7716161plp.264.2023.09.18.01.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 01:03:22 -0700 (PDT)
From: Jagath Jog J <jagathjog1996@gmail.com>
To: jic23@kernel.org,
	andriy.shevchenko@linux.intel.com,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
Date: Mon, 18 Sep 2023 13:33:13 +0530
Message-Id: <20230918080314.11959-2-jagathjog1996@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230918080314.11959-1-jagathjog1996@gmail.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add devicetree description document for Bosch BMI323, a 6-Axis IMU.

Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>
---
 .../bindings/iio/imu/bosch,bmi323.yaml        | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml

diff --git a/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml b/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
new file mode 100644
index 000000000000..9c08988103c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/imu/bosch,bmi323.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bosch BMI323 6-Axis IMU
+
+maintainers:
+  - Jagath Jog J <jagathjog1996@gmail.com>
+
+description:
+  BMI323 is a 6-axis inertial measurement unit that supports acceleration and
+  gyroscopic measurements with hardware fifo buffering. Sensor also provides
+  events information such as motion, steps, orientation, single and double
+  tap detection.
+
+properties:
+  compatible:
+    const: bosch,bmi323
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    enum:
+      - INT1
+      - INT2
+    description: |
+      set to "INT1" if INT1 pin should be used as interrupt input, set
+      to "INT2" if INT2 pin should be used instead
+
+  drive-open-drain:
+    description: |
+      set if the specified interrupt pin should be configured as
+      open drain. If not set, defaults to push-pull.
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    // Example for I2C
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bmi323@68 {
+            compatible = "bosch,bmi323";
+            reg = <0x68>;
+            interrupt-parent = <&gpio1>;
+            interrupts = <29 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "INT1";
+        };
+    };
+  - |
+    // Example for SPI
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bmi323@0 {
+            compatible = "bosch,bmi323";
+            reg = <0>;
+            spi-max-frequency = <10000000>;
+            interrupt-parent = <&gpio2>;
+            interrupts = <12 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT2";
+        };
+    };
-- 
2.20.1


