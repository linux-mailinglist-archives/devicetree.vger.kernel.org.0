Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1D552F8AEB
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 04:03:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726127AbhAPDDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 22:03:45 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:31860 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726076AbhAPDDo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 22:03:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610766224; x=1642302224;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=Dcc8wNJoyk6kfPN3inJqKqCLKOKh92yVJnkW87VbaFc=;
  b=R7tx1hHpG8Qxn7KR6v0+0oAF0oWTMoaxBRh9w1y32jJt8HvXOza5VNau
   /aPqYJzJqbpPxSH6F3pzEV43s21t21XzAze+wCG5zNXSNiRfQz9Pmygit
   n3rq90szZmgkrNeqSFRM0Hsu39yaJIsMvl9bOlYFVJU/BkD86IO6E0M9C
   eG2nu0q25Uc4GNq685BsQYnzpkow2AhxrP3A/VGouBUR1BQClYUbBRGVw
   thIUQndYjGhNIsASihvy9hx7FELvfdE5kGWxxixQx8DOrjcnkc6YkucwR
   IGlqaPN7C77oeN/vWbN7JeNJ5x6TKoKFhJMCL99pvDCohvvQIYkN5oX0i
   g==;
IronPort-SDR: RPLcZfhrmSaOCH2W8PSKyh98ekVAR8DQ6Enm8czj+dC6VdZ5YmCvxH74AAdR4DigjK5TbUryiv
 z9tpejibOXv8zqktbWNQrPw3Y70N1QKXRklmNFDHNqwASB7Xmm8FPe9rOMIPAWk4lzgHh4NdKT
 4ZLdnwx9RuWzZcKeAaKWnuuHP2YOw6w1QDMtU5TiYYv5VjNM902Vs/DMJCPJ5QjCRzJSkrH9kg
 Uv9jcNCbJBg5zSGuCmqEbTbsnVvwe9viPGP8dYRPwy4Omo9pkeiTKwxBARo0x3k0pkiS0cyqag
 YcY=
X-IronPort-AV: E=Sophos;i="5.79,351,1602518400"; 
   d="scan'208";a="157556790"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jan 2021 11:01:58 +0800
IronPort-SDR: 9w/O9b6Ij4rLYXgsAK/AObZMCdxkI5LxkO4NiaMSANFHqYRQzaxVUGTLSbgB8xJhHDTVZSqC79
 6MqeEzYr4PABLUlodTjFZkkSxeuPKeR57kaeXvk7C9qHRbkGlVGdlXh9qTGi/aHcwMhdgi8csj
 M1lM76lONqZJ0J1/NmN+oErlpPKCE0VSMxuLr5ZXzQu/aaB6wO3ZER4pyfda7y8MUbj1kkavXT
 i5MMkVeNjjC5IPNRb68+V6F9xlTN2CIHxM5kbxmPJ94Y+lXVu6yt5ofJTn2YmaHdE6LLSX9ngV
 IbuDXP3aozpE45C6wsDbQeSZ
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 18:44:40 -0800
IronPort-SDR: qzMl7WaxnhyG5IPQLcANqvxaNAqcxNxrT7fuAbWMcb20f2XKHjzGWirTi9MJxwta1L2ws9WtNp
 I3iSl1QCtBwUQd0VftIzjT+G5FShcdeBFmqqq2s8XnX42I/ipQboRzI1UvgQM7i+G30YUpbc/P
 ZqEJaUyMf27NDBQJ8eb11FH+qaiujZXGotkOMvP7XLf0yPQgYfTBNLkA4sQg9LNaDvFZ12MXml
 FA/jygfqqjqQr01X73n82NerbwL6j+bLziqvM4viC/HPDbpVhy6GX3q1xpmi6BCyUqnPxjSQ90
 U74=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 19:01:59 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: Fix sparcx5-sgpio pinctrl warning
Date:   Sat, 16 Jan 2021 12:01:55 +0900
Message-Id: <20210116030156.15726-2-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210116030156.15726-1-damien.lemoal@wdc.com>
References: <20210116030156.15726-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix identation of the description text for the interrupt-cells property
in microchip,sparx5-sgpio.yaml to remove an annoying dtbs_check warning.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml b/Documentation/devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml
index df0c83cb1c6e..4fe35e650909 100644
--- a/Documentation/devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/microchip,sparx5-sgpio.yaml
@@ -99,8 +99,8 @@ patternProperties:
 
       '#interrupt-cells':
         description:
-         Specifies the pin (port and bit) and flags, as defined in
-         defined in include/dt-bindings/interrupt-controller/irq.h
+          Specifies the pin (port and bit) and flags, as defined in
+          defined in include/dt-bindings/interrupt-controller/irq.h
         const: 3
 
       ngpios:
-- 
2.29.2

