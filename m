Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1544AD3B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 23:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730333AbfFRVWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 17:22:37 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:45613 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730102AbfFRVWg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 17:22:36 -0400
Received: by mail-io1-f66.google.com with SMTP id e3so33135825ioc.12
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 14:22:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oMHPI35360QufLzN+4Af6FW7H+HNv6sQR/L9S4vlS8g=;
        b=hJ+0lQf1syo5P4OyT1iRaXlsycrIgeOdzKM4SsG1FuA6dEn9B3H/x3EktA6yDyXCCd
         agjfIcjXt9V9VVVr8IYf8pcmusVOSlExTTLxXmz8b5AGKUxH1ns9ekKG+KlVxrMXJQSY
         RW05U+pr89MLjLkB8+eBq9hOJ5RBYSgc3bif5RQy0ZO2+sV38njfinSG9zGGqKSzacWL
         KzVt/MKyJHuKGYsTV+arxhY3DSiOBDtSdard2dD8oWejTjJJILRGgvWYH/tKAphEWvU7
         p95Nr3DxIKeDxTjKTfwGhAhpy/3B2MIZd9D26zyVDvZ8BQN3t9PgH2Lxfsup8bvMW5Em
         gTOw==
X-Gm-Message-State: APjAAAVqFrz45HZKrn8+tkGWvemTj9piUOFy3TwFFBME0YZhU2Q+uWaF
        U2WShW5jK2OOnWEIh0Jw0mESXzQ=
X-Google-Smtp-Source: APXvYqxzfgOcDR9cnTkVTzVzzuH6pKPixOSFtXOrtwcaLc+HIdWrrCqbV9V68mP6sK4aBGUAPNzzGQ==
X-Received: by 2002:a05:6602:220d:: with SMTP id n13mr3726065ion.104.1560892955748;
        Tue, 18 Jun 2019 14:22:35 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
        by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 14:22:35 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to json-schema
Date:   Tue, 18 Jun 2019 15:22:28 -0600
Message-Id: <20190618212229.32302-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert RDA Micro SoC bindings to DT schema format using json-schema.

Cc: "Andreas Färber" <afaerber@suse.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
Andreas, Update the license on this one too to dual licensed if you 
want.

 Documentation/devicetree/bindings/arm/rda.txt | 17 ----------------
 .../devicetree/bindings/arm/rda.yaml          | 20 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 21 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/rda.txt
 create mode 100644 Documentation/devicetree/bindings/arm/rda.yaml

diff --git a/Documentation/devicetree/bindings/arm/rda.txt b/Documentation/devicetree/bindings/arm/rda.txt
deleted file mode 100644
index 43c80762c428..000000000000
--- a/Documentation/devicetree/bindings/arm/rda.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-RDA Micro platforms device tree bindings
-----------------------------------------
-
-RDA8810PL SoC
-=============
-
-Required root node properties:
-
- - compatible :  must contain "rda,8810pl"
-
-
-Boards:
-
-Root node property compatible must contain, depending on board:
-
- - Orange Pi 2G-IoT: "xunlong,orangepi-2g-iot"
- - Orange Pi i96: "xunlong,orangepi-i96"
diff --git a/Documentation/devicetree/bindings/arm/rda.yaml b/Documentation/devicetree/bindings/arm/rda.yaml
new file mode 100644
index 000000000000..51cec2b63b04
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/rda.yaml
@@ -0,0 +1,20 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/rda.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RDA Micro platforms device tree bindings
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - xunlong,orangepi-2g-iot     # Orange Pi 2G-IoT
+          - xunlong,orangepi-i96        # Orange Pi i96
+      - const: rda,8810pl
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 2c6f4d15805e..56ee276088eb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2111,7 +2111,7 @@ F:	arch/arm/boot/dts/rda8810pl-*
 F:	drivers/clocksource/timer-rda.c
 F:	drivers/irqchip/irq-rda-intc.c
 F:	drivers/tty/serial/rda-uart.c
-F:	Documentation/devicetree/bindings/arm/rda.txt
+F:	Documentation/devicetree/bindings/arm/rda.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/rda,8810pl-intc.txt
 F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
 F:	Documentation/devicetree/bindings/timer/rda,8810pl-timer.txt
-- 
2.20.1

