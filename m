Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B03A5FD74C
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 11:48:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiJMJsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 05:48:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiJMJsr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 05:48:47 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A169104D27
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 02:48:46 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id w18so2661069ejq.11
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 02:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTl7droVltKnXDsBoh0Qb/I0hZgySD4P2UJsI4/mO+E=;
        b=VcpBLoI2GZnFQeZ10p9jSVjI2ovSK6WLIhf1cD/WeK7vjOV+a/mi71G01oUTaDG9HY
         uX7LtYmSLtlo2i//Hg6RU7kr8zHq1eU+MJsqay6jTioLELp6ZxRV7DqHkKc5m0euXO/G
         ecXpb9faVxqjgYixI4uv7vejFPx9VqGQXV+JtBFegC52xyECEveXo4FVY0iA4qKp8HvY
         PQ8Ylyq4N90WcGHwYTSuIeBMWZpy/wYTc5T5KvmjKKHymXbajALB1/ZFCKI90+4ZlzE4
         l695xSHTF7Gm4tF3itf1YfVpy+TiyI/V2TA9fOeL6vpPspVqc366VkF8pyMpGKJoW968
         F9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTl7droVltKnXDsBoh0Qb/I0hZgySD4P2UJsI4/mO+E=;
        b=S10r/lZyzq15MbTCDsZevoKHTrd9232wmLRVwadmpvgx3l1u/CsTUAj9XQrX+EuUlQ
         czOFFfBKdeJW+oh0aireDSKUwqR0+bLXJkx0T+3T3q0APsASgvCb0SFjgaLQnNBarazm
         o2CPQe2sw6i7+lT0UUafdhneiXdvm2n9Ibc1b8Ob791aOsrXrBF9NzXaIYXNJv/2ii/t
         VOnfPUIr+kdx6FZQEgeRyH10DidApMzF3J4h62SNRj9aXv4PMLX+U5Pz/OHV34gRaIXp
         1AZ7361PFSp/G2LzKLQJGDsnNDAuylXkPqtmHRISe+Pv13Lh2U49QQcqVIO8TBRzBqVa
         24xQ==
X-Gm-Message-State: ACrzQf1JgijPJKmdBDt/e3zWkgWO+emcxcfLit5xIzsOpV6gv7w4P8s5
        YMWbudqhIm9yPKEfgTpYjvckYiCTp+TKQVGk
X-Google-Smtp-Source: AMsMyM789ERJ0LfcbR1x85Clgkt+MXg5q0WqipXrwNTkaf6aozBlkgvD95mFYi97DUcuvbhdtIWtaQ==
X-Received: by 2002:a17:906:7945:b0:73b:e605:f31 with SMTP id l5-20020a170906794500b0073be6050f31mr25947222ejo.129.1665654524224;
        Thu, 13 Oct 2022 02:48:44 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id e14-20020a170906080e00b0078d25e0f74bsm2685353ejd.46.2022.10.13.02.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 02:48:43 -0700 (PDT)
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
Subject: [PATCH v4 1/3] dt-bindings: hwmon: fan: Add fan binding to schema
Date:   Thu, 13 Oct 2022 11:48:36 +0200
Message-Id: <20221013094838.1529153-2-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221013094838.1529153-1-Naresh.Solanki@9elements.com>
References: <20221013094838.1529153-1-Naresh.Solanki@9elements.com>
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
 .../devicetree/bindings/hwmon/fan-common.yaml | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/fan-common.yaml b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
new file mode 100644
index 000000000000..224f5013c93f
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
@@ -0,0 +1,48 @@
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
+  default-rpm:
+    description:
+      Target RPM the fan should be configured during driver probe.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pwm-frequency:
+    description:
+      PWM frequency for fan in Hertz(Hz).
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pwm-polarity-inverse:
+    description:
+      Inverse PWM polarity for fan.
+    type: boolean
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

base-commit: 0cf46a653bdae56683fece68dc50340f7520e6c4
-- 
2.37.3

