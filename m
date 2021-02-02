Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45CF830BC29
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbhBBKhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:37:50 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35920 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229894AbhBBKhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:37:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262265; x=1643798265;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OxZeZALk6A0U48gWNj8ztjhQy+hUu803QWSi9piqU7E=;
  b=mV+/+ajijf4uz4znSViJKNuBm9i7UuVRJY6sODyXi7ME1fjxdRtd59O0
   tG9G38yzjSBM/LAJ1lzrfuZOSSrnjwVLpiFDD3d9eiH4xPaA7+J6C81oO
   iW0vyTQpRXen+FoOdXpMj6WddfFr+HIqlegsyENsPdz6qTGffn+a3O6WX
   kraFcX+u3wFMR1jOsTkofoqRsiJyfmUmkNKG2WEp4z2Hef7N+OzFkSHzd
   yPy6tvmiMs3QxgSlzsrrCi6Y1ow3gH7lzr46GPV84gz+hdmhAN0ZUnfzE
   S2J6/kvIC4GsSO+O+AQaVI3jvChCm8jNC0Q/+PfGbK5poFxp9/2MrXLtE
   g==;
IronPort-SDR: IaxoxTNtWqZn1r7YCRFqpf7fbpwkY+l9ERka7qA7hLkAflMtRNU9Rmf150eb8ZwzQ6OI8EVwql
 3VACjwmLlax4tOtMSMTaj8vqzJQNmox+uMeV2Bix0p1qlHlcCfuFNrKhwr89PDlVuI1Ua0blrd
 2GE7l27W2ju8UICPqQMiP7MMuFPTSOa+FdnV/3RdprER1pKSpRj+tMyT7VF2kCpxRCJ0ve+RLy
 7gnYoquJNc33CISrXVXhnwwRBhJFIQmNyLaC/QYPPQgaCvrIXK1TB4mwEl9J525cjcq7Fas04c
 Olw=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092483"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:38 +0800
IronPort-SDR: FRyozFdnKonNdE0fT61xIMGBd5ob79Wj3BdmOkEYKUFNTxg3IXpXM1a9S9brjeKnLD/s6VcEl+
 X6Lb1p8/RklFkTziwy8sYhjYXUX7oDRADrpc1Dz3m9FQqpLpFTmjShUw9C/6/ocpXLNxj+y6zH
 pqvzPTa6u3Z0b6KlvCc6h8WUrH7ttdoKxIJ9QmvI88mtxBepY1BTzBauVgNTw/OqjSsrKBt4+d
 wczhP/1HCfG8sGLh4BUFX2ZhLId87gKAaEVtfeKAlyF5QxP0VBba6FxbP0Oi+PTvfuPoPfThdK
 YNjsrJlpFlSqUlOzb6Sn5yTd
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:20:47 -0800
IronPort-SDR: +twt1L5tXiUWw7VjY2nh5ICdjFgLQGgZo982MMaU/CZ8pWIXHLgFYlaBH+ncAHEPPEyYicXEno
 fiYoCldAj39t7BD13owyJKTDZdAOpYQv1Dn8vLEDgn6OIBiw3kXmIsKLtp587mpT4/iKm20Hg1
 1JSvlMIJFz7fKZNERXkoIGmVlwTDyFCdqJiQnXS2A5GV8q8GMxoHTGZMnBVA2PfD2+cCMzskmm
 BX03aVBF4KGRoyNFX4uodbNDZi4uwn4yQG6+cBD1v68Fz1Rrnozt8SOBEEFB8ZpaGPczRjMJxH
 3r8=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:38 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 02/16] dt-bindings: add Canaan boards compatible strings
Date:   Tue,  2 Feb 2021 19:36:09 +0900
Message-Id: <20210202103623.200809-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
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

