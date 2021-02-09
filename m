Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F079314EEB
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:32:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbhBIMcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:32:11 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:8999 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhBIMcJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:32:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612874352; x=1644410352;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=U5RPnx9naL44L8pODbHMwPFT+udQFeaq9RcnNssxEXo=;
  b=HxWwlDog2CxqPlYdKcz/MWAQn47Xb5/SO7fOa8Ug567gvg+0a5fuwSVV
   m9JmEJeHUyobfR+cxy0/tV9UV80mosgBdL5EIcHNFWbhshXxqFSOZgC+b
   U/w67uxjn5oA7TPAA/LV2W40XCmKLTPPM6NXCZ9BVOrPfKtvjGqsQAVvK
   KlFKwQ5f5s4mEPap8vw9K7PfLipioICtTSHT8ZLBe05KpSVvHDbJHQObH
   1h/f3As+XCdxzbkXvg1rcF4GaFqS7sGdvgFUnDkT9BKtPaujcnCdrnQ8K
   eR/NdZBtRCYOXjXnzOmQ6IUHZzrpL+Uxuorj/4ObnG9cbtKiIMIaElWor
   w==;
IronPort-SDR: QgWytLQZ3hYtU8YyTpg75bTf6KUUSckSUej/cK5/rnBsELiBVKXHCXtxio+P3eTuRLYz87LJ05
 hji5rMKET6rIlOk6RfwqQfD4Ma24HnWYMtwwYVVwxpq3PmGO0HkGlCLzRv56/8KmZIDfX2VpjL
 4GnuPRHuRkGNz8UDaobiHPsFALwqwbti+FmQXdXZ8/y1a7WspIj2bdu/Ae3nfGN2spznnHrDt9
 hv29mNUDanCGnEInZxX6eD19+qV6Ue3QE/SerJ9ZoYzsPlGr2WluieSakUDYWaJOFkJJsYl4lL
 QGQ=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="263648818"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:36:32 +0800
IronPort-SDR: Bt+cz8rJgpPcfiO1bpgalyLjn4qNxvUI+50GPahGMlAOoP1589LFwBIVb7jbBTMF5C5xTAp+1g
 I7oDSPxCl3V779N6c2Tt7VF2EjsTyXzrxgRTMnCtFZ6/uFjL7wi7JjfowzBbC0AVhtUfl5xK/B
 IbjVp+kiBx7LMTrCc02FhuX+k5SOUDLFB06OXKamIQv1w6parvVUDm4l4B5Lee7hJ/t4vieD3C
 UGMPisyD1hm8bUYo5apPWUq3m+Dulkk8wz9j2Tggme04AxpgZjxfbXZOfg/kZ1awFKZNP0M0QU
 qexIcVZF/iQjpWxGeIaN3b2C
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:12:14 -0800
IronPort-SDR: r9hEnmBu4wIfPTdBYSA76Z/ywFdhj6ON6RjGc0GOcZSRSI1kK+JTgPaI0w/KSHucAh3pQSD3/C
 hP+4DvttaT2Pa32wnT8XO8eV8T5vO9rmmoF7OgsGNGNQsrGF2dKgtsF0q2feRCY6mlHLyzbz4R
 xHQIPb0v0SLWAq/DQ4ojO3WEBSMWnyaqo8CzPMLM4DQkDH+7oWtVtMvsOEibMO8/PCrquAsrDr
 OeAcErzjWlWu5Gjb+9EVketDTTJheHSEX1AV8FPoc4mxCnZQohdJFq2HDkS1KaJ7MFrhUy396h
 j4E=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:20 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 02/16] dt-bindings: add Canaan boards compatible strings
Date:   Tue,  9 Feb 2021 21:30:00 +0900
Message-Id: <20210209123014.165928-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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

