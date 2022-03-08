Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CDF74D18EB
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 14:16:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244942AbiCHNRq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 08:17:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241499AbiCHNRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 08:17:45 -0500
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F3E648E49
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 05:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1646745408; x=1678281408;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ZP3bLw7WQ/HhvaI9yMpHfJIa+2/cxLdLg1awgjT8VpI=;
  b=GaF3Bwo0ca0fVA3yiktcGa0O6gOrjf/vl2xIVYli1ZknOl8KKhjKAoUt
   9QLlblqigoVqJKKK7jZ8ET/tI3/gSHk5wIA0rnY6KARVckXU1PcSs32G6
   VqwKlEJClGIOn/HMA8IFDqEZx+XhxskfPvPAcMBVxu4l9okumu9FjG0Tp
   PW+cTHrXnrtfPCQHEda3pRFD44Y+oGdiZhMglHXmbYHa+KPRQbw8KUizZ
   r/dX7tQua7Z7/RBuw5BblxH3JEj7450TUoLjTU4KG4haLkeD9m3M/vYLQ
   xycJulICXz84jdoHbdaaZW1n7Vx6VcwEnUl5yp/fUZ4uEAYW69SXaizEP
   w==;
X-IronPort-AV: E=Sophos;i="5.90,164,1643644800"; 
   d="scan'208";a="194759595"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 08 Mar 2022 21:16:47 +0800
IronPort-SDR: b3zzWX5bplEg36yJBY/l5rs504u183yZaqmy9yaDMpQ1WeE4KfWxDbeKiKgDGMwI8/jQt8ll7l
 +aemIo4jxpglgGGb3xZ8bwHRZko/Z44XwLkEAmkx2VK6l2wSUrY7zU7VFRE+tCEEEyQpOEJwYI
 HT32m3092dEIvOa53NEhGtZzVFyz1GF5kOgU2tzePHRGV4AxHoUuvUcqydKFsgMIAQG0iSUavx
 6KEPkN6bfLiuy2GERZfoE9GKJ4wnVtNK/0707JLxCw/4aH0JUsThuxtBfpkP9OV5cMjZQwhJ+D
 RQHyAmvKidexrVb6DBLQ6ccP
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2022 04:48:04 -0800
IronPort-SDR: cl4pNCkaoF5QL7TzeeRusgtT0wbXl2dhf9SoGKE9/kzNKlxGWUi8KYbZ5pKI78loYn9MXHAKl9
 1r9GV4HFd6G95WCe08LR9eSvgfA181OvdrXItrIZubXB7wX4qDJKl1dvOpanX1XZqpCgdXsYNk
 s3A0ndivOeFpUSovOk8MYrhKcOqhzFwCJEH9vzJWZ635LBO0qJJlU+DjM/o82wmWaRU2rKDhbI
 +Ol7KLlhVhY5kTCxWvjO9MtLTyyKjHPfDLo7M/FQbucmhKUbYz4/y9BQOQ+fV4u/mklm78gFMA
 dro=
WDCIronportException: Internal
Received: from unknown (HELO x1-carbon.lan) ([10.225.164.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 08 Mar 2022 05:16:45 -0800
From:   Niklas Cassel <Niklas.Cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     damien.lemoal@opensource.wdc.com,
        Niklas Cassel <niklas.cassel@wdc.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: dts: canaan: Fix SPI3 bus width
Date:   Tue,  8 Mar 2022 14:16:42 +0100
Message-Id: <20220308131642.95374-1-Niklas.Cassel@wdc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Niklas Cassel <niklas.cassel@wdc.com>

According to the K210 Standalone SDK Programming guide:
https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalone_programming_guide_20190311144158_en.pdf

Section 15.4.3.3:
SPI0 and SPI1 supports: standard, dual, quad and octal transfers.
SPI3 supports: standard, dual and quad transfers (octal is not supported).

In order to support quad transfers (Quad SPI), SPI3 must have four IO wires
connected to the SPI flash.

Update the device tree to specify the correct bus width.

Tested on maix bit, maix dock and maixduino, which all have the same
SPI flash (gd25lq128d) connected to SPI3. maix go is untested, but it
would not make sense for this k210 board to be designed differently.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 ++
 arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 ++
 arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 ++
 arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
index 984872f3d3a9..ff71ec35f4e4 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
@@ -204,6 +204,8 @@ flash@0 {
 		reg = <0>;
 		spi-max-frequency = <50000000>;
 		m25p,fast-read;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 		broken-flash-reset;
 	};
 };
diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
index 7ba99b4da304..8d23401b0bbb 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
@@ -205,6 +205,8 @@ flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 		m25p,fast-read;
 		broken-flash-reset;
 	};
diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
index be9b12c9b374..24fd83b43d9d 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
@@ -213,6 +213,8 @@ flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 		m25p,fast-read;
 		broken-flash-reset;
 	};
diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
index 031c0c28f819..25341f38292a 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
@@ -178,6 +178,8 @@ flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 		m25p,fast-read;
 		broken-flash-reset;
 	};
-- 
2.35.1

