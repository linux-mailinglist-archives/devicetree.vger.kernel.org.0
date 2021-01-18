Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEE3B2F9790
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:04:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726592AbhARCEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:04:38 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:23242 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726186AbhARCEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:04:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935472; x=1642471472;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OxZeZALk6A0U48gWNj8ztjhQy+hUu803QWSi9piqU7E=;
  b=OFas/Mukni3FGy0qnzL5ai9pvI01Xu70aDwAp1xJZqunn2ucwQOdzO0y
   D9yJ5u9hQPtvxwHkkRtHHw5hg+aJc0C2Z1wwTyfvNTTWXRM8YIO1HlxX5
   a3tJJrzzCZnuB/yVjGbW4OJ/9Ck+sH6mEKhJlWUTKMpLL4B32hs7mEZZv
   xx6bCY6KxHc6/fGy4wkkEu6AO+yWO+3hHMaTpIlPbIUcxZKwGF5sKSNZn
   wytEFKLLpFcJrtGJckg0L0c59E4N36CzhXRXLP3HlMqTiRyL0bNnGu1ti
   M4XFEliMO61WfRycWplxTgX4goYfNj8Q9nTbVZzvvnS19p8KImYd9rPmC
   Q==;
IronPort-SDR: GuJ5/DttAbwgHYyoUKEQIzYx/5hC2xynXFQBfBnq4EHuHL1JjjTot7ASnM7DgPf724g613V6ty
 P2XL8VOZiwWl3C6w+5Hd4trFCMN6aH9jI1iiFZMAEeWQ2d9/i4IfF5WXCi7cZp0ddlEMWu7grw
 J0Y6jhCNgSpD6OZy/klEqdk39hkskieYbVvCYDizow0SyyJEdiyd4PY39qvhD/uVdiv1Lnf+QZ
 EBSTeIe73pTnQiCah273ekq2SvvBtrPeBrgsNtz1HDpHoVzwbKy897omxLtFgkxU2WV4FYJoLk
 UTI=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840853"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:02 +0800
IronPort-SDR: KJgawEfx3IxAmMMSsAjnDPaak3hiqcIhHT8i8YSgySz1hWUqjff1cZUD4TnLPrWWgy0IhxrkIJ
 5OozwDeE2kGzD3WWNDn1DABvPXCtEYXf1wgwiHeA8Cs/aLzCylgbEdkfuX/Xe7juPAYR8A9juW
 sX/t4bYi16tlezk5UE+oIuJS2rlLkfy6tt7TLUa+O4nkvD2O9Uv5sJKfgnMcI0Y7jSrkgeU9Nz
 tTaFYkqKz7gDa1s0blUqNr/xH3oE74JDO+IV9KDfmSz7TP7DhoQ/gRyjlfHUSW4fTyOcRAUaao
 E8DsR99T4btGpAcMWm9M4ipF
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:40 -0800
IronPort-SDR: 5aRbhHDdZ8s4MmZwWXcSTYSctnmetJ2hzXvG3owDgvgnj3nkl7xbHMrUlSYuRIMXjxYQmbi/cd
 NPIzHkfAjnqoRWf0/ldZosMwZ7JpxyaiokiXoBJX8QGNq589VLRcPxxOvOTBUx8j2a8LvL1atw
 cqiuhnDBlLHC87DBkBdLDG6OPYSaILwvll9Wpej6udFLuFH8AUNaZjaec6A3heFZKftW5i6XiP
 sQ5OzrS8pd15SJnlwbURJATKm6YfsX3+g82oOO4H90pJDP6rQ1TRRx7TY8BbI+ZxB6VxFkmC9K
 cb8=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:00 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH v13 03/17] dt-bindings: add Canaan boards compatible strings
Date:   Mon, 18 Jan 2021 11:02:30 +0900
Message-Id: <20210118020244.103451-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

