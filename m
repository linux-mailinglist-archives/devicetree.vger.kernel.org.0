Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7729D6E0E50
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 15:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230508AbjDMNRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 09:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230390AbjDMNRW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 09:17:22 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56FD5CA
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 06:17:21 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id k36-20020a05600c1ca400b003f0a7c483feso1072336wms.4
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 06:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1681391839; x=1683983839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezwEzIUFbO/ibyCR5/pMZcXsF9FqrfvEohFgkMV09Iw=;
        b=KRprAh3DeL1Jc7nUy6FhEObqRosjdbUrDp6a/kOhNPwwLCOL9pPjxfl2rVQ4WgqvQJ
         DVXIJb2LtEUYCV/FrZsxwEG62SvKFy596HzAVgxmRRBKRIjgpI5kq1EzDbn+RucaX0+a
         7KRgo/u/yVa9lFvgY80K/Mp5UIEUtRbNbKlQMQOr+vr4r5qEjrk4OAed3/R8ukU6n2AH
         1ZmaEwkxdP2C9sRKHhYixYOx4cEVwjZrad9yzqlU42eshedOESYGmds0Wrn6DSdeR0he
         IkSWUXOO3T+bProG7oQtR/VUu43EV4xKxg74fZ3QdCc+yiud17Z+o+geepprV5ujCtBn
         4POw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681391839; x=1683983839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezwEzIUFbO/ibyCR5/pMZcXsF9FqrfvEohFgkMV09Iw=;
        b=JGwJcBLqeoRIJY54SprwcddNlOoR6tbG2Igm41duI1UWWYdnrK3xjxs2RxQTiHAFHI
         4e0vy0M/ekdJD94uL/ij5jw9TdCQA+CpouHBQm+wadoq+AM7vGM6yKZpnQcaUdO31sg7
         7gpnUPHQ0YjPHby3ZLgapS++3th+mmrqnoeJCOjTzjhPYEmUrmMCEPb38niZh9ULOB9M
         uenCtMiTPp3NzAgfeZS7RhMOnCQYP0TirSPdZ0VZ2SmRLRy/C3S99NWh5nXvKsInttPd
         A2LBTiBvy77xSYfBniSeIl3t922JCtcBnbU2ovVd+a4sqMCIOu6Z0SsbPnLthdpvVt6y
         Wzxg==
X-Gm-Message-State: AAQBX9cuUVZFwDg2M7jDrOsrGqh/mAllkj2Gv66GcBTKh8Mc6ArpklgO
        D3GDYfH4mR9avVubWVqp/b6KLw==
X-Google-Smtp-Source: AKy350bWxIfjBDcyPABvkA89eNMTbtHx+VEcdJvuWzTjduVU+no40TpXG4+L1FYXgzlIN1tTfoye9A==
X-Received: by 2002:a7b:ce07:0:b0:3f0:373d:c32b with SMTP id m7-20020a7bce07000000b003f0373dc32bmr1788155wmc.30.1681391839664;
        Thu, 13 Apr 2023 06:17:19 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:814c:fc8a:da02:39ad])
        by smtp.gmail.com with ESMTPSA id v3-20020a1cf703000000b003f04646838esm1796400wmh.39.2023.04.13.06.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 06:17:19 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 3/4] dt-bindings: power: reset: convert nvmem-reboot-mode bindings to YAML
Date:   Thu, 13 Apr 2023 15:17:04 +0200
Message-Id: <20230413131705.3073911-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230413131705.3073911-1-brgl@bgdev.pl>
References: <20230413131705.3073911-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Convert the DT binding document for nvmem-reboot-mode from .txt to YAML.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../power/reset/nvmem-reboot-mode.txt         | 26 ----------
 .../power/reset/nvmem-reboot-mode.yaml        | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.txt
 create mode 100644 Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml

diff --git a/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.txt b/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.txt
deleted file mode 100644
index 752d6126d5da..000000000000
--- a/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-NVMEM reboot mode driver
-
-This driver gets reboot mode magic value from reboot-mode driver
-and stores it in a NVMEM cell named "reboot-mode". Then the bootloader
-can read it and take different action according to the magic
-value stored.
-
-Required properties:
-- compatible: should be "nvmem-reboot-mode".
-- nvmem-cells: A phandle to the reboot mode provided by a nvmem device.
-- nvmem-cell-names: Should be "reboot-mode".
-
-The rest of the properties should follow the generic reboot-mode description
-found in reboot-mode.txt
-
-Example:
-	reboot-mode {
-		compatible = "nvmem-reboot-mode";
-		nvmem-cells = <&reboot_mode>;
-		nvmem-cell-names = "reboot-mode";
-
-		mode-normal     = <0xAAAA5501>;
-		mode-bootloader = <0xBBBB5500>;
-		mode-recovery   = <0xCCCC5502>;
-		mode-test       = <0xDDDD5503>;
-	};
diff --git a/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml
new file mode 100644
index 000000000000..64a7d224c7dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/nvmem-reboot-mode.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic NVMEM reboot mode driver
+
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description: |
+  This driver gets the reboot mode magic value from the reboot-mode driver
+  and stores it in the NVMEM cell named "reboot-mode". The bootloader can
+  then read it and take different action according to the value.
+
+properties:
+  compatible:
+    const: nvmem-reboot-mode
+
+  nvmem-cells:
+    description: |
+      A phandle pointing to the nvmem-cells node where the vendor-specific
+      magic value representing the reboot mode is stored.
+    maxItems: 1
+
+  nvmem-cell-names:
+    items:
+      - const: reboot-mode
+
+patternProperties:
+  "^mode-.+":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Vendor-specific mode value written to the mode register
+
+additionalProperties: false
+
+required:
+  - compatible
+  - nvmem-cells
+  - nvmem-cell-names
+
+examples:
+  - |
+    reboot-mode {
+        compatible = "nvmem-reboot-mode";
+        nvmem-cells = <&reboot_reason>;
+        nvmem-cell-names = "reboot-mode";
+        mode-recovery = <0x01>;
+        mode-bootloader = <0x02>;
+    };
+...
-- 
2.37.2

