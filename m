Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6CC362CCC1
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 22:36:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234261AbiKPVgp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 16:36:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234181AbiKPVg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 16:36:28 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71022101D9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 13:36:23 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h9so32260777wrt.0
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 13:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqZxBgmVFxK0RvfpAaJX1POwshKoiOnk2il2KX/mpC4=;
        b=E6pZQI4Mmi3/a6ONx5vksspSvTZNGeyZ4k2vN/72UTTHl4xh+Gg2QsMoCMJxa+s1SL
         DBSJgHf4WUHSfAczvCPijUb1Z7uO7cU0S1i7EYLxHmsOvcXDI17t3HMX5FlX8MXn4fi8
         O2B6Vab1PDALGtW+Ke6Lv7txyGy93tqfXBi+iN6d854vFxNYIOIFPqgOmBXVPA18hzTM
         venlEkhDy5So9G4qttDNPYZ+ytl8Y9Qbij9Nt2q0J1jNjhyG8PQxOTiZh2IDHdXPFPai
         e55kj53xb35uZQoAjrOaw4r/T7W68eZHT4QlrH3KXtLCfzxqEl6hi4LXsLoAANjOCTI5
         A2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GqZxBgmVFxK0RvfpAaJX1POwshKoiOnk2il2KX/mpC4=;
        b=CHqdCLwwcLWG5956n6vzH3x0djx/2kF8gDkgKB+ygNGcVq+1CCY5+PSE/b2+g13DLA
         vY+W5fqb412UUws8f4+VbSrD2f7WAZrgma6A1/lSXvtRVP6pSDE68VKSXPWZOkC8bLqj
         ZS/u+QEjAz1BjTIw9R20Ov6EzpyrZsnUCtwAXf9yS2ag/pmnwJtIbfpeYjUS8TXJTcAg
         K2lC83Zkv36vH5jCXD1XxB4zbeO5K0aYB/YF9WRHQUwrWarOjXflRnQe1ZQmESMfQpG6
         4uspBVF9cOrTUnP8Q/6+IPXb3347d9IRFYj20QFXQRPcb0kNUbnhK/6o5hgwvKvTKF3Z
         gYRA==
X-Gm-Message-State: ANoB5pmzm77bxWk/pflNarcQCeDIetlQqh65w+Aq+4Uwzfn27IXvUIbV
        Zb2YVG/LDaotB5xMmh6DythClf+0aaJh7JuW
X-Google-Smtp-Source: AA0mqf7c14HGlhArM1SFATdo/QKLxMofYz5UwE2bJtueWhSO6c2Fl/MIc2MnlekrtqaObQlxvCS6gw==
X-Received: by 2002:adf:f7c6:0:b0:236:7a11:b06a with SMTP id a6-20020adff7c6000000b002367a11b06amr15080222wrq.298.1668634581864;
        Wed, 16 Nov 2022 13:36:21 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id fn15-20020a05600c688f00b003b47ff307e1sm3133045wmb.31.2022.11.16.13.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 13:36:21 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Naresh Solanki <naresh.solanki@9elements.com>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v6 1/3] dt-bindings: hwmon: fan: Add fan binding to schema
Date:   Wed, 16 Nov 2022 22:36:13 +0100
Message-Id: <20221116213615.1256297-2-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221116213615.1256297-1-Naresh.Solanki@9elements.com>
References: <20221116213615.1256297-1-Naresh.Solanki@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common fan properties bindings to a schema.

Bindings for fan controllers can reference the common schema for the
fan

child nodes:

  patternProperties:
    "^fan@[0-2]":
      type: object
      $ref: fan-common.yaml#

Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 .../devicetree/bindings/hwmon/fan-common.yaml | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/fan-common.yaml b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
new file mode 100644
index 000000000000..1954882eed77
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/fan-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common fan properties
+
+maintainers:
+  - Naresh Solanki <naresh.solanki@9elements.com>
+
+properties:
+  max-rpm:
+    description:
+      Max RPM supported by fan.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pulses-per-revolution:
+    description:
+      The number of pulse from fan sensor per revolution.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  target-rpm:
+    description:
+      Target RPM the fan should be configured during driver probe.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pwms:
+    description:
+      PWM provider.
+
+  label:
+    description:
+      Optional fan label
+
+  fan-supply:
+    description:
+      Power supply for fan.
+
+additionalProperties: true
+
+...
-- 
2.37.3

