Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A81F8282852
	for <lists+devicetree@lfdr.de>; Sun,  4 Oct 2020 05:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726458AbgJDDOw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 23:14:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726266AbgJDDOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 23:14:52 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AC14C0613E7
        for <devicetree@vger.kernel.org>; Sat,  3 Oct 2020 20:14:52 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id p20so3545077qvl.4
        for <devicetree@vger.kernel.org>; Sat, 03 Oct 2020 20:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to;
        bh=K74BKx9bHZWGmWfzS1oHKSxZQ1iYmkRG86K+uoTE8Mw=;
        b=SNfZWE8cO6qr70BBBZzBKrn6Bz/dkBA6GcN6/4R5MWkUY1R0f44cYmd5szTuEkez34
         PPrXCgbDPW3oPBTvUs9iv8nvsWHsxVInb9of3koDmt66BHzaIhxS75J1G881Vt9u07iv
         /hafahl0jj1lQ9IQxInia9kxYL2K2jersPIfv7UaBSbWb3RBo3fKpM6avbQ5pbZhtrTD
         weirjS2I3vIGGZZvqeEU9iiBdYwoH7Qh/RSPHJNodYFIJ6LyBFqchCZEcs/HT7FKYhw1
         sxTgFxXRevaT30omW8ewh4TJrGEz/F6aJy0LcSP/o7rsk1gF8kT7cgP+eH5DjQgOGM8E
         4bKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to;
        bh=K74BKx9bHZWGmWfzS1oHKSxZQ1iYmkRG86K+uoTE8Mw=;
        b=S3NjsntyxcKUadhN2l+okC0gQ/m6uSW4FLLeUGSJmEOb80ETydZKWGpKAMwBmBhOh+
         JqWHCo1QGOftQJx3BPaEhDWnYcNVwBocI3gKYDt+Q5bCaex4ItYdCg2P5id24KxvctJz
         2hemrzjeupjIyaqKqVO8GizaZ5zW39ffpLVaDYOpU96khmGuJ1D04MvGGYiti/uzgmHu
         78DzhpKASHhRw4XtErrS3vnhF+ZAzB8HQReWfhHNeertX4XBEIZdg0JLz4lEJ+wTNoj7
         5BPlRHT8bpNoge4lGvecbISojOsI4nwOAgGcI1PBlpJCX2fmdL42RT6UfaIEuoO2pR/X
         6oYA==
X-Gm-Message-State: AOAM5318yDc5jaNeCq5NxbHLPftjoONBJ7/1P0ZEkP03FVUBDQLNB+wL
        4fEqWzKXECv0zX9Kr7TMMJrH9kg+G8fCzKxm
X-Google-Smtp-Source: ABdhPJyPnDtt5SCSPZndKt6/zvIc82XFv4am1sypXmgSD/rEZvswkokB14SVVN08/uq7LjfJTZNOtOsuvd2yBUTQ
Sender: "linchuyuan via sendgmr" <linchuyuan@chu-dev.c.googlers.com>
X-Received: from chu-dev.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:3cfb])
 (user=linchuyuan job=sendgmr) by 2002:a05:6214:401:: with SMTP id
 z1mr3148495qvx.53.1601781291176; Sat, 03 Oct 2020 20:14:51 -0700 (PDT)
Date:   Sun,  4 Oct 2020 03:14:44 +0000
In-Reply-To: <20201004031445.2321090-1-linchuyuan@google.com>
Message-Id: <20201004031445.2321090-2-linchuyuan@google.com>
Mime-Version: 1.0
References: <20201004031445.2321090-1-linchuyuan@google.com>
X-Mailer: git-send-email 2.28.0.806.g8561365e88-goog
Subject: [PATCH v4 1/2] dt-bindings: hwmon: max20730: adding device tree doc
 for max20730
From:   Chu Lin <linchuyuan@google.com>
To:     linchuyuan@google.com, jdelvare@suse.com, linux@roeck-us.net,
        robh+dt@kernel.org, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

max20730 Integrated, Step-Down Switching Regulator with PMBus

Signed-off-by: Chu Lin <linchuyuan@google.com>
---
ChangeLog v1 -> v2
  hwmon: pmbus: max20730:
  - Don't do anything to the ret if an error is returned from pmbus_read_word
  - avoid overflow when doing multiplication

ChangeLog v2 -> v3
  dt-bindings: hwmon: max20730:
  - Provide the binding documentation in yaml format
  hwmon: pmbus: max20730:
  - No change

ChangeLog v3 -> v4
  dt-bindings: hwmon: max20730:
  - Fix highefficiency to high efficiency in description
  - Fix presents to present in vout-voltage-divider
  - Add additionalProperties: false
  hwmon: pmbus: max20730:
  - No change

 .../bindings/hwmon/maxim,max20730.yaml        | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max20730.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max20730.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max20730.yaml
new file mode 100644
index 000000000000..93e86e3b4602
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max20730.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/maxim,max20730.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim max20730
+
+maintainers:
+  - Jean Delvare <jdelvare@suse.com>
+  - Guenter Roeck <linux@roeck-us.net>
+
+description: |
+  The MAX20730 is a fully integrated, highly efficient switching regulator
+  with PMBus for applications operating from 4.5V to 16V and requiring
+  up to 25A (max) load. This single-chip regulator provides extremely
+  compact, high efficiency power-delivery solutions with high-precision
+  output voltages and excellent transient response.
+
+  Datasheets:
+    https://datasheets.maximintegrated.com/en/ds/MAX20730.pdf
+    https://datasheets.maximintegrated.com/en/ds/MAX20734.pdf
+    https://datasheets.maximintegrated.com/en/ds/MAX20743.pdf
+
+properties:
+  compatible:
+    enum:
+      - maxim,max20730
+      - maxim,max20734
+      - maxim,max20743
+
+  reg:
+    maxItems: 1
+
+  vout-voltage-divider:
+    description: |
+      If voltage divider present at vout, the voltage at voltage sensor pin
+      will be scaled. The properties will convert the raw reading to a more
+      meaningful number if voltage divider present. It has two numbers,
+      the first number is the output resistor, the second number is the total
+      resistance. Therefore, the adjusted vout is equal to
+      Vout = Vout * output_resistance / total resistance.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 2
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
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      max20730@10 {
+        compatible = "maxim,max20730";
+        reg = <0x10>;
+        vout-voltage-divider = <1000 2000>; // vout would be scaled to 0.5
+      };
+    };
-- 
2.28.0.806.g8561365e88-goog

