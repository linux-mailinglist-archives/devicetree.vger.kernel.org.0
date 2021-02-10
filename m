Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AD04315E82
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:04:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbhBJFDt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:03:49 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20614 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbhBJFDs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:03:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933429; x=1644469429;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=U5RPnx9naL44L8pODbHMwPFT+udQFeaq9RcnNssxEXo=;
  b=nxVJzt7VNA4IE+tiXEmYOK7l/oBlJIcqs5OAPDVkThULHQu2P22uxCof
   +k29aBLkoVkC9Jhfnr70W8b+CO0hc7H+Uojccez8djAVQd2xRo1MKgJee
   j/WsmVRjPVmAaQy2iK3I15vqrKI7lxUO/nEC2HqEqkfWBtk6B0QGzSISM
   Ize9Oz/rJh0IJeroo2XUGsCiOG1LCkA4kloX5E8+yFP08j+fQSgxQ7cU0
   yImygDDpv9XQKfsvfBiGWCFwTz3SYruPiI5SDiSvOskUl2azlp24M/6cx
   3z/jvTPRLBfFKftBFcczLk5a53fKsMAsWaiiT/oV8I8VmCozhzUyvRntM
   w==;
IronPort-SDR: qfal9+oLeHnyAb9JJ24P/hqrzLx8X62MPsuUENOAfxycQtgG/G7xaUUcOlslQbDXZ80JgkKXLF
 e2c9iDWXdg6TqaI3CEeA1uAAPSr5hx213kO472knK68NdGi0BehIV1pQSJE2HbuSATJ7/QjEhn
 WU33EwV0n1QxojatGhelTklW+YU3S8HcKgaF7vlArMtCpHhmqbkq0wEjiv8lK4QZUJu+pAIFEx
 ZA89btoU/W3XBvsehtcl45cMYsFNZwljdX/uppW4SwfGHTftaeTN+bllxyLmYUD3XmyvbDrjrj
 Ji4=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775807"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:44 +0800
IronPort-SDR: +hQt3gcUD2BQMmJ69f+WPOWFZbT1n9d0XTlkOIZKjRL16WfvoIXkjGsnm7ht/lRcEhrP4QuDfI
 61yKU2dqLH5nJPUjVGtD00nTXCvIwc9TvSWmOIhl8wM47YjT6TOXv3VzCEzVsJgKk6WGUDAQE3
 xck2HM13wCRGSmIAbEyb+5qU3sPPlMZxzsHuD7T9StdinV5MB5Vf8UnFCHkoBOAPnp9CAPYium
 3998x/9OHncny850DswTuL9VJYguDm9/+sAZVg36s0Z4x3Z8erjEUsBKQ77Sh2xz/KNfiC0McX
 6rKf33a64xyWV+nQXWNsxm43
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:35 -0800
IronPort-SDR: 3rAW0T5oSh2Evimxpvw/oa1Q9wE/nHcWdhmfSlPLQfT4cH96Msjg3wTS/JTP/MUuldA0EXkz1l
 GlVCyJrlyx4PpcRH6WD36QEY0LIu2VBmd6VY272FX1v3iWmvhYrlSBP8DNTS6L48kwSfFpu0Yj
 ayLyk47Fk/q93AozckM4jJjRXhbHATP7q0GuXc565El+phbYy21EZs8d743+W9h0wl/clVt58t
 46/udT3tVFt1OjohFE0BV+KHCfoOLids/IFsOBdvkBduX0OOIu1vyBrc9C3gJaPzM1cPa1jAgs
 w6c=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:42 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 03/17] dt-bindings: add Canaan boards compatible strings
Date:   Wed, 10 Feb 2021 14:02:16 +0900
Message-Id: <20210210050230.131281-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce the file riscv/canaan.yaml to document compatible strings
related to the Canaan Kendryte K210 SoC. The compatible string
"canaan,kendryte-k210" used to indicate the use of this SoC to the
early SoC init code is added. This new file also defines the compatible
strings of all supported boards based on this SoC.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/riscv/canaan.yaml     | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/canaan.yaml

diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
new file mode 100644
index 000000000000..f8f3f286bd55
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/canaan.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Canaan SoC-based boards
+
+maintainers:
+  - Damien Le Moal <damien.lemoal@wdc.com>
+
+description:
+  Canaan Kendryte K210 SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - const: sipeed,maix-bit
+          - const: sipeed,maix-bitm
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: sipeed,maix-go
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: sipeed,maix-dock-m1
+          - const: sipeed,maix-dock-m1w
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: sipeed,maixduino
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: canaan,kendryte-kd233
+          - const: canaan,kendryte-k210
+
+      - items:
+          - const: canaan,kendryte-k210
+
+additionalProperties: true
+
+...
-- 
2.29.2

