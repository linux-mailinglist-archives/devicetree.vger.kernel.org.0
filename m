Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA72C310556
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbhBEHAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:00:34 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41738 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbhBEHA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:00:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509548; x=1644045548;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AIY+mENCG0OfDogqN2TK/zkNool8y2CBwzDhCDvMBTc=;
  b=qBh54gNxeudSj75nP5vbqV432hQgzQ/qtYVA6J+9L1/66J0/CwQCcmoJ
   mg+eYXLwI7S9jpeBS/Czwgx9mL8HpNDDznO2bYkVS4lwccMcNvPEnTCAY
   LKekTYbSLGq1k/tXUZ8LXbast4dIiwcwqB/9Dm+pgoS6uHKoExThHHwTD
   9lbhZuqdyQry32cZ30249A34j5AWE3/+ZCQFftM2Le6ZnypgfpJUjBjTV
   /n8crbuPr9Q9brzNEIRDb3J/8BcChlbuzSKK5ms19+o8fDSkkbyHrm1H3
   FSWDb5YQEnGbngWYU/EGEu/m6LPegfx9JW8tlxyb3BjXVOjG3LCSYTCOS
   Q==;
IronPort-SDR: Br3/TkXhsWS9jmV4luGcpe2yN26Hzfx39cO49cey8dieG8o92TOGrp81m9PAp13wrpz/rIbr0/
 QOPfJXPL9lgw+Z/ySVH3QiKyG0fSTT8WpfN+t9ct76D+zwmwbk4I9psuuSaRo/+Qz0k/rJ+RPz
 S9ozuEz/OromFcDJVOrf2w1NAvefSUGNu3zORDj3Eo2OcysegZsUuIyTTiD9d8MZjK4F6HihMg
 kz7maDXyI1ywmhqHEcpPlegseyLJN9SGExF9PulAlGk7G8yHCP0PrHIhAyxkW6aiRVYOhD/tHI
 WZs=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312057"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:31 +0800
IronPort-SDR: wxHUXl2YhSxv3y3BDwTsikBp2/bLAkzUa2m1c2e7uNN6Oe9Ho1bkf+qRPJaPzA14YMXpxB1oYU
 RNnphjkENOwmCR0V0/DccE37T1pGwOGqGKSSKaPRtmZZQgr+1PXgs72hnsd88xoz0lN2SrtXYs
 8+fz7D1dmOfqToh//J0bOxO8y2xpqvaNYlfK1AxoMZeBUwYg9IQpZ1C8xMk4zMOaydC+7jkmJm
 cEyUZ1OPt7dw1kSwK1F9Mq5tFi+RbE9QhLDSjM5k+m/rUqEAvcQFnBGRKSCPT/sPKDdxEQ5pI4
 FGzRiHfCzds2CqBy23tVLCdf
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:46 -0800
IronPort-SDR: tOK9QR/uLe5qNKojkvaVog4neH3PH42jqSB/wQbbd3JFDU/aZibN9daVNXEpJ6eH4dh/EQtNhz
 szPpe0Qs74J25K/8tGvvIQ0aBBtyCF/pyR3q9ryeUzTTipo8Zz/js4aobQXqO9kNTXcGAS6R+v
 gGQdZmbKzBv+Cmlk8cz/9G/DyJTFuACEZgv2oJzIo0VtAiNDKnKhPwAU6e6GjH7iWJXXChtoL/
 IR9MhpwmBR5720OFQm9ELeAAw285g3lnL+lXYlzk0Qoff4Ii5ywkc3S4g1G0urwzFOvoQX/he0
 SAQ=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:43 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 06/16] dt-bindings: update sifive uart compatible string
Date:   Fri,  5 Feb 2021 15:58:17 +0900
Message-Id: <20210205065827.577285-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string "canaan,k210-uarths" to the sifive uart
bindings to indicate the use of this IP block in the Canaan Kendryte
K210 SoC.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/serial/sifive-serial.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
index 3ac5c7ff2758..5fa94dacbba9 100644
--- a/Documentation/devicetree/bindings/serial/sifive-serial.yaml
+++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
@@ -20,6 +20,7 @@ properties:
       - enum:
           - sifive,fu540-c000-uart
           - sifive,fu740-c000-uart
+          - canaan,k210-uarths
       - const: sifive,uart0
 
     description:
-- 
2.29.2

