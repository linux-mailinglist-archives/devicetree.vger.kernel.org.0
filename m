Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DA6F30DA6D
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:01:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhBCNBS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:01:18 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14157 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230106AbhBCNAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:00:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357805; x=1643893805;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HuL/RXPfYhx4XwPsZJpcViVF/tXPYXsIbvZ4bFefu0E=;
  b=f2GRXag+jUte37tJ1UP034KKs9bjCLk9pWnoNXLfT9/ms752tNgUSMl+
   uK45Fc5mhQpx+meE8SfHi35S3BAR33VPM8TdYCVFsG5UQ/YrmpT4UCckh
   bhzBgDX6gHmKUJ/u8EkOY7IPJwCEfBHgR9UPs4k1eIduvc62yoniSzLiJ
   gNDeEnbwbxzKjOiHWKXD7QleHTle5JgvQU32r3ZslTys5FNjmz26NGj2Y
   1ZlHt+ja62O5evDfGEJPtvfV1QXXWl9ODLHMAH3hAJ2/JK699RGQchUgH
   fcF7/06vvFfjRiM+7Xtoz7PHzwiFAclldogk1WD3rVjpGO/36TBuKeYG8
   Q==;
IronPort-SDR: HpoB2CY2089NSN+wYWore6vlClPG+ImmfbS8rv46BHgJyVFzUcygAVzatO0eMImygxJF9a3eKh
 6czHo9cqTlAyQyikVzOwJek1JPAx6NQrgcXSbvhl2D/ck1wnb/LUBKpCIuqUTk878KZu+IlMe3
 STNS6vgffi1lIvbm7pEx71F59UPsWzG5deCgMX7t9n1etmgTCDPjDqY2Z7CBJHKq7tBilovMJV
 mVI0s+gxkniVhx2X7UZyEmKJyoPHTxX1sA4GU/i1d3f1P5K9WQ+3Klzw+/ym5k53xm8asvob21
 kAw=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106919"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:27 +0800
IronPort-SDR: Ms8Y3amOmTLpaJoSypu6k8MaIR7R9MJDKUyW8/kVVELNeaD4OCk7BehdKHir2HTqYf0d8JKeIQ
 i7/j9s/6du/xAEBf0exVonJJiOstTqAL7mWxPWkAS3nUewQa3T5Dn0TXIVeY+mNnpGNIx+vCNA
 I3d42gg3t3dqykndDdqWv4I40s0+x/B+t1ND0bi40AriGAl8//gACm7voxZ7YMw7WakzCUU+OT
 nyq65sZGIC1MrO1jFzUZOaemnMmZJ3WKhozEaz0NaCv/gfgxuJ84QZKDMhmOsnl/WeK/4d+uDH
 YG9F/9qZTM/GF1xUmd91zZcZ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:43 -0800
IronPort-SDR: IGikk8QHZypD1jGsJsdb+5pPWh+/5WToE7Jk6xfhjobvY7bXiFuHpAKHMNcB8kupXC55/qInsW
 J8cOwaq2t0YUyjL9T1uPtsKNrNbRobcCY6XR6qzWDSZkhRalM3C+46atK9kdQCxxQXG3ROmGCV
 sLufGIdvq+W3d/r7CSSjcvn3X4+2B5qYv1B55YzbmEsv+ZOcwwHWNDiW6r09IIA9YZvPrJ0MfQ
 cDvx+NRXvdxN/qkBRyrqzNmW8aweg9CBt62jaiBeZ4GrrQOWoHMSNWkGMw9jRirFH+PkOqySNc
 IUA=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:41 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 02/16] dt-bindings: add Canaan boards compatible strings
Date:   Wed,  3 Feb 2021 21:58:59 +0900
Message-Id: <20210203125913.390949-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
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

