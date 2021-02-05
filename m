Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69C72310555
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231284AbhBEHAd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:00:33 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41747 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230482AbhBEHA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:00:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509546; x=1644045546;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=imuithzWrTjkRyQr5q8L7wvXZ0KquIdBdqaL9xNxgNE=;
  b=qNdZQPgLH+MU0Thuif7dyhsd5v0YhNv+jGiNlvr3Aspli0X0AVSbg/9n
   v7hlQOUCCHJwG9m3xeH+C6U8nMpui3I9rweL17ZtGcks36MU991+OwYXJ
   t3rOkv10IpA/ugNzQr1i9maH7R5u3dHIsxx+aVN25IplxJ1+R1768+6Vp
   JPKps+sWBdCgLHMdoPT9PgJ1HKK40lBEXE4v6mfcWHmjtHzYTEjmG7E4k
   DXSbJq1EmWdLX6MtElkWHnON9x1LbKN9ttI+0xoCqWLj3apXVElgy54EF
   yc9pC/7QNbCGLCLq4V36802lselR90s9BALfCFkTip+erNcV6LE3W0JJ6
   g==;
IronPort-SDR: E+TSq3oJnGe+zVYSSDCfUue011LPFdInlmul/Q/i8/zEqnR1A2NhHJ/9FMn5H85ZT9nUuMzHVf
 tu/jJRY1bE3GPs0Wy6dXabXMCvmTazcSrmzMykLAYvyEpadFBQXAzlPfThIGt23cQxc11jOlfh
 Rvxov0RkYJwQcP8HYUS7ClVjaVax1u0adqe9r/aB8GxKDT8I9BNX4oWNW2zDbDLGXSyeTEpjs4
 gHy7eD2RTFpnOasd1rNCZOm0+zIUmeVsmjW9iDQR897bXFBc0agP+dT598qFF82n2CdNZTCVzZ
 uaQ=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312052"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:28 +0800
IronPort-SDR: vG8MWcU+zE/YIt+wloL6MApgybd+3iDGBLWp49Cyx+uN3CNVbJUqMiPrvgAFxp5t34EZ0SOcxp
 FxtBszbYEa0nH1ZmjG3syzTV9TfqJEXVk4Ch8wz6s/9+6N7leax+d7DVbY3++D5L97Lw2SHQhH
 lEbo1GPjUNmvBTuPnoH9H2XS1FLKMxXKhkqFN0sBuKeFR3VfOlDGmNYeTGLLouOy480tdmt+Kw
 0L3jg+iZ6c62LFHERpKuK50ZdzKk76zZhD87m3lJrxUsh0MTrvlaBaip9caRnlHzliKM6dyYCx
 mfKZFUguC7wUzwkuR//8dD7T
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:45 -0800
IronPort-SDR: Tat3o1D+8NTnysAH4mEzdLZmm1E8pUTJaWA/jM+PjrGV7w8+z7NX3KMocs4nNRacKJrhK4zxUs
 Fv1H6T7YLLe1/3r++Ez4VZIgY0LRvm94Mh+xpbhB0CeFLBhUhgFZ/1Rowp5SdDNlz21RpHWgNI
 P7yjJUiXqKp0fpTDPCqQymuPX2c0/qQGEN8p1AhD3EN1XRaBLUmM/EnWEpeGXNNOAWegCvt3bF
 LKkYXqjwib+w6KnS/FXDrwCFwxMw4r9bVmhH4JNFJjg1vsiEU/uJcbz/0TOlwBj5XGQoS3zE+Q
 ElE=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:41 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 05/16] dt-bindings: update sifive clint compatible string
Date:   Fri,  5 Feb 2021 15:58:16 +0900
Message-Id: <20210205065827.577285-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
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

