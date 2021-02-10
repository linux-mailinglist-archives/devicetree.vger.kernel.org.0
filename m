Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C702E315E86
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:04:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbhBJFEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:04:31 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20614 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbhBJFE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:04:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933470; x=1644469470;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vo/OPIAjkDR1OdjdExr2oFWyf1l5b2KQ57/Uzl/0wR8=;
  b=bqjI8W06fjBZ5N/pWJl+2lNkZ40XaxG8k5ouExuKqJxy31MrmGhatlCj
   AmskVNPYCkYldgq2V87RojiQJpoCwbdU6c4aCs+wZScKrsNLRYmOc7SGs
   V/fq5Cd1EDYSg/iM+SnyW/t0LhU0YyzTxVNyFqnfvuekLXvZB1rlGjfl/
   +EYSZTrs9QURK2qKE9gu0TuhEbBRH0jLBxYEAIn1WOfdfIPZWIOVWLN35
   4kibqCcgZvBtDhQyK7bO+P1CRw20dskhSJorD6yb3u/2v8MfQJX/VVGuT
   yuYTFqOKF/6TtXnW95mKM98XkB0F0HOWajrLMlXyY8Y/zeeGT+jwPdBgO
   g==;
IronPort-SDR: OvowWagDCmUCHKz2P9m/AOgehLOLNIiZ5QflJf3oyRrzF23hW3n7fiT8KQWvQBFP95i7LkLcvG
 EiPxEB7km0SMw5K/h6e74jf8kfPU6QOSYjKA2uac1OfI9Rm3syK4VdvY9Rbz1WQbA7zcEU4+EY
 uwMbfaoPF7HFlp2qZ+4PqHE2d58uXXAA6fWueOcb6epvOYG/sXAEu5hQOd09+4bQr/vIUlv2eS
 YYsic8uI/aPVho/7HOcIla7l/c0UCM14q7VWnYi/V/SXmw+gRCd4iMBRy6fuYMLkG3f9Kbwk6Q
 62c=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775816"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:49 +0800
IronPort-SDR: FpO1WZfAuLV65wf1TXpX4S0kRF7w9lM+UNI0rpTbeO+MyYnKK9vxvxEIjCq9b1dD5fhwMylrf5
 VjldujLFuwfYSk0IP9tKtUti1J1N9WN/bV5jKjU74kUgInikuFrRybHij6LCvCaggaLwsaZSjq
 3pc8KLn8zk4FdguE947L6/DZkttrnMGhRtMAab38PAw/m31SqTrW2q2oUvUQLGhF9pu6Ho65jZ
 gTU7leFP77qVLY2BfqENFMNm3spYMJ6GohpofLd1yZ2I9Q9JM/uW7K70CJITv8sxzJ1iBXzitw
 7XwYaxlMEP9lOkq4RNSD5u8M
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:40 -0800
IronPort-SDR: XTr2rBgc3vDiNsMTdefPpsf6sdqWbU6cqlmF9R5Ij7W1fF39bGJKt+L9hlLCsFIuezoj7w477D
 C04IkPMfp/sUR99xBBGObNwhk/3tnFIMdwad+GEUledZ2r/deMJ/hAnbWzZI2reuYN3epQV2x5
 UQhozPuUve7GGLtsXVccRoSk/snMjYxvNxEsUU1TFaafZzwfnv3Pqt6jShPTh/xx8TDoQYQc+s
 /lE2qIIOVXmIDLxM0X5Z7fyr+y+WLfgbBgoAEyHomfCWRPUkRFnER+htJ2xMdvDJSh7hVLMs15
 K0E=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:47 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 06/17] dt-bindings: update sifive clint compatible string
Date:   Wed, 10 Feb 2021 14:02:19 +0900
Message-Id: <20210210050230.131281-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the "canaan,k210-clint" compatible string to the Sifive clint
bindings to indicate the use of the "sifive,clint0" IP block in the
Canaan Kendryte K210 SoC. The description of the compatible string
property is also updated to reflect this addition.

Cc: Anup Patel <anup.patel@wdc.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/timer/sifive,clint.yaml      | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 2a0e9cd9fbcf..a35952f48742 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -23,15 +23,19 @@ description:
 properties:
   compatible:
     items:
-      - const: sifive,fu540-c000-clint
+      - enum:
+          - sifive,fu540-c000-clint
+          - canaan,k210-clint
       - const: sifive,clint0
 
     description:
-      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
+      Should be "<vendor>,<chip>-clint" and "sifive,clint<version>".
       Supported compatible strings are -
       "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
-      onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
-      CLINT v0 IP block with no chip integration tweaks.
+      onto the SiFive FU540 chip, "canaan,k210-clint" for the SiFive
+      CLINT v0 as integrated onto the Canaan Kendryte K210 chip, and
+      "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
+      integration tweaks.
       Please refer to sifive-blocks-ip-versioning.txt for details
 
   reg:
-- 
2.29.2

