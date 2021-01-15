Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 947102F7DAA
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732398AbhAOOFs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:05:48 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1772 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731599AbhAOOFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:05:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719548; x=1642255548;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OxZeZALk6A0U48gWNj8ztjhQy+hUu803QWSi9piqU7E=;
  b=De49CTMbEDSzkn5mA2tkakVM4I/hDUPtI02lOX1Zm7MVS0LIu0Y9HhgH
   /hUon0QS4ugCtEfZoArxsPrYrGqgp0o4dUhAgpapww/0GDqZuygk3e9Er
   WLfi+KudUa95hQaKKtdj1WX3VyoJ7mTnrTTt8vJqkRsLEZBdNP8XInj4J
   e3G16eekABlksPLucJ3wZyuAQJIJc+Si21aMZsDXaup2s0hc4exyBUujx
   GKi5uhcwUs8NR6vZ558TdfJo2eo9VAA6Qq6Ca+sXaoXM3djJ1pzJ01vBp
   o9C34XIee67AFKbXooQuUbs/UJMmvs7ytGnrCJKMFfIbQ0yUXiSC8Dp9Y
   g==;
IronPort-SDR: SVoKZiUPPL9XAxaMuVlUFjURs/viYCnfbSplqcd5YglwE3RgGsUSaikWBqZU4vHpnJTGqIv4Vm
 dVpTIwrmTykr1w7fvdS9/3A3vRhMexm4QmwvrcXeQvSitQrJ+rOpRvieEzN8DHfTVPo/wD82bM
 wigJuJj9JHu1rqUcuflQvBE803F127VktgUoqvkLJC8wI105ZC5BbY6QBM97tFHA7rEA7m3dZF
 OapWSP3iJqIw/pjMTySL/bJlkENJ21izdrrqNaHfiw42vv1JJP3ue+4bszbnLI3PyrLapFCn/S
 tYA=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693638"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:43 +0800
IronPort-SDR: 8g0BVEstOrohbQis+38uCAiaQ2t+tBNZHcPuR5FdFzMeppRg1asBQy5vl+geByA1UwlNfSjElC
 VraQmrqBgU63tJoU2ocndk5L9H3PJMiN8I8Xh37MMFCccFGEld98cHjUKyZA5kEaaGyOGLLH8n
 I4GJcxMDbzOIls+Q3xXhCSDcCTG4Y7NxHv8j5HdklUBT39+IkKdtTqcoVDI1dbP+SuoBwFLZNi
 RnDY+/GhZn9VGx2Y+GvcghrEjwb6eOvEVRTfp0Ag7fmv925dskaP9ecyjXHF04RkrUJNci+0uE
 jHraBcXHTef8lXR80gq1RDhP
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:24 -0800
IronPort-SDR: l5J3/oDhmOFXQL3kYZhfM7YjSkgUHpSU17bD4wa0ySIJ6lWExxCVF/fQ0oHX8sEBHaBP29JV7+
 LTDxO8VnABLUTh1lT+/gCwurJYVGnUh9O+z3+N+VjpSU/lWUggEUgu75Bxc1yetWg/Sq0oa46z
 Ukx7HLotgyTfdUeMA+nmS8ByZMwbYMQiji14P8ujcAhUfT2sgAqCtBYaYWuimVgpO4kd7Pdj5P
 bt+RVR4BF3TqKw7fbsdeooJdkGBWx0so0SCUy2qK/alOq/FCkQ23s8pqCZ1oDGo8/cWAZOScvG
 ldo=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:41 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH v12 04/17] dt-bindings: add Canaan boards compatible strings
Date:   Fri, 15 Jan 2021 23:03:39 +0900
Message-Id: <20210115140352.146941-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
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

