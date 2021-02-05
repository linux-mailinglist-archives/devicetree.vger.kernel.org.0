Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3454A310551
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231339AbhBEG7p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 01:59:45 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41743 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbhBEG7o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 01:59:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509481; x=1644045481;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=U5RPnx9naL44L8pODbHMwPFT+udQFeaq9RcnNssxEXo=;
  b=i7Q7NwxSaPgEUoGCCmU0+05YZonWBWK8fDWN0NzL38wPOAySwql/LX3Y
   sC5aMS0KPXe986JzAhglgh3dBtq+Qp8brwqVYNRphRRgd4WmbCj/aJDPW
   LZcUhuWWkAlhLvMhqtiK8HZH4UT9SYlYMpzOVGpPsyVw6ukfQdiSGqkch
   eFCzkjs47gaeQ9pfXkcD1KGGB/ypEuSoYzbu6s8pniiI3NA1wO7uBivNA
   B63WmxRjbg3t7RZjgL1EvezpeyYvGjdufGYJxxQ15+M0ZWAuQH3kA0Zrw
   DLc/fZG35Yy4GvHUC1ZVHfhV42kjTaalx1paDBbyasxrxw/pvytZNCRh/
   A==;
IronPort-SDR: RwPPhpsS2+cDP5zzsb0TP8ey1AsEbGwpH0c+8+bEwgeixU6Ekh0UL/oiSkTaKDdef7cvSN1hUV
 O2V3zYoQdrq6RMsf6ea4hb259UA/SqpjhKp6fgSVz//v3Ax1J0dVEiKIP0v9rLDxuwRnd8ehWB
 kI2/m2adht2QNdkWwaBoLaIjTQO3DOOutZwQLVGj/hbzorD/xR3yvF+KajmwGcNMXcU3UNZ9GI
 E5AOB1HnsoNuGlN9ppDtdJXhBjkkRO+A0TRMAOHENp3792B7q5rWj4NwXFd/5D01Hs6hKhT+YG
 LFk=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312040"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:20 +0800
IronPort-SDR: JiMeNKZ0rsALvi6hwfwVjDs4r3SogumUaSEiUNw/9xAaRy8q0zmlFNaZs8FTAZevG16tJ1KkCB
 sVgvMYRQCWHzynmUNI2yuIXrIY9fYzUjC2K9GwgkyWOqzH8QbAe+lDrCDRE9EBbfZVA3lAK2Bi
 BXaGc73BUdV1F5HwEV6VvdEpqBxlfc1mpynIlhJr2rT7s8wyK2rieO6shlPNmDOz/Qxp6PKglV
 dGTLh3WY7qh2k2k1KEWAgBghHQNi345lXTYMkWdtgQYgiwNSANtwk/8nNPwfCO7v285uju0t+/
 i5cIKrbRv97Dnw5TitutR9U9
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:39 -0800
IronPort-SDR: YIiF6BDlSAeIMG4U+C7LrTDsAsNhjRYGcoiIbpcdLEPEH+gclLXLKOLWSrjGnfYt47uFLDauJh
 7qyzW1u1hJ0yT4Sq8JzZpz7Tagq7Ref3AzT6vT4P7ARLW4iL+kc2wfdeOhfX8Ojc6G4VNqpgtA
 L+lxDUgLx5FcC/EZcAWU5iZ6hWgPoL4PWunjR33hQJfz4ELb0ew4JYuuEk6qt7nKc2ed7Z4MEI
 J1ZwUjV2mkLxYUBWK+OP6uJSOjZtyGgXoB+MG9ZqLxYAxSXwZL4MNki8NPeZyultNsUvXcFTwD
 iaw=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:36 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 02/16] dt-bindings: add Canaan boards compatible strings
Date:   Fri,  5 Feb 2021 15:58:13 +0900
Message-Id: <20210205065827.577285-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
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

