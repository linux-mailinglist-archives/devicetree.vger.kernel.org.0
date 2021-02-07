Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE868312818
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:16:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhBGXQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:16:01 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:1538 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbhBGXQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:16:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739793; x=1644275793;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vo/OPIAjkDR1OdjdExr2oFWyf1l5b2KQ57/Uzl/0wR8=;
  b=qLBxQ7yIsPGkV/2BlYV6IxZ/YgGn4GH6SGz1YP0iVR/h1aj+5RtdtSy0
   bd5fP3EmO/Ek9Fdvs8Uy8KANZETwRkif4AOFepz9fjY351or1PYzCefRs
   GGrFZUxQHTxjXkyVugTBrU9QwcEQz6IoOKdai+JHDqeHHLCgrCulhFUJd
   gE7Yb+vwE8wsVp5iawxu3q9epQ5aagW0ksWbWgSLavjXqdA4eP1E6c4z2
   2P48oTsh5IjJmOsjO0R5wi38aUhlgApsIEu2xhB/ClkjmQowdZ+yC/YgL
   qnQR5qPbiHhVqBhQ3hxFVSfvJHAdDSpO0jtnCPOaciAzMKYCJzidyodaI
   w==;
IronPort-SDR: T0MOVC/8Xsbd6QZwe8l1mwEdCoQBOcaDP5/mYEQrBain3O2Eu+LIESgiAT/fyEo5C+hZ0Z8IoF
 gGBWUuLnM1flbFeKxxERiqktRtasozvCi6/xJQ/0ZjKlhZNj4/mvwrGsyXVEX0d2+ygW1QUOh5
 rVgXxnAd0lPh0/V9eeCV7zjQ2imLmj1VCJ8rwS6McKma9Usbu6M1buGkjqLE9KuM7oUocRRfEa
 8XALc0g9BibBuzAwE1JsCL3Bab57JlyjW9I2FhehuV4EVz6A4b4/p0IE4llQA6h1om2gDUW1DQ
 teA=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503250"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:33 +0800
IronPort-SDR: l50yz4Xtu9Qp5XmgNpjKamyC6Kn2+MKaLZJoNqFOko0QtuWti47Cz4vOe8LMx/OEbi+tQxjhNx
 uCl4n4VFisqdkwjOcHk8csfcsTxhsatysf6unMGitRDD0LZWQqyHOCJS1VUX+BRrrl4kemTKj4
 Ja4Ez19eqNczxVuPvpCNIgrfhcbXDib5bG8cuKkuqxdHkp9IACNF6IK43QCHq+NRRDx8EFteIm
 ZnDiebv8ZjMonQvNCRStEUlBixR2/EAyRNjjvTO+08t7eQ9q4Mp0aNlYPyjs4ERQJFZ4biTjV6
 tKc7K92yeZ26peEFPZQh9HfQ
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:57:02 -0800
IronPort-SDR: sMcVTY6XlLxALlcUIMFdOLEl6INn8etK5uhJBpz/GZND6F0Yb8pwIjIZxntURz38JhwL88XA6U
 OuxuJlDUxsd7zvwzLSLHiBimB2ujxZN1xEJSKP9kY9tBn9mFf5tSm3ks5RQFFVGETf+IwxrOgI
 hP3Jvw6dRhaTppmLZRZN4dHbG8v9DAMi+edciuzxBAhs5Ltq3C2cR4QHoC6UPjhwmXs+itjhpj
 6+DkWxwHntPPr4u0794SxVx5JLwpwMGRD8ZgQ572w3sD66L5gvTD0mCqlFnGPVw/NPLLNH5z52
 5bc=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:09 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 05/16] dt-bindings: update sifive clint compatible string
Date:   Mon,  8 Feb 2021 08:12:45 +0900
Message-Id: <20210207231256.115130-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
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

