Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53E754D1926
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 14:28:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232756AbiCHN3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 08:29:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231289AbiCHN3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 08:29:22 -0500
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FD6377C3
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 05:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1646746104; x=1678282104;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=06BSW79PpLzz8xRt+pw4ezAbJ3FGZPI2u6RO89c2N/U=;
  b=O3V+wQqtztyQuBQHlq7n8Yo1djE4SEVt69a3lBJGkjku0ATmVwjfgesE
   DFKO1/hCSRJ7nxeEtsXamwmbIXSkI00kIFfQExkPUqzbEDso+zliu5Eas
   GNTPF9FpGMVT90z1gfIXbbvNOZThnNYYvp0XikU393z9XDcnzyRpzNyRN
   K5Rbs39xe4TcUtNJsvj7FxIUN1o8On3vlwdzCJ8Hz4ZJbo02A5CNRomv+
   ZhWVi/8Do8jB+vquSiCdsn9LoJwK6839JoQxvj1oa4SiZ6Cqb1xnVfVeW
   O+iMxzH/Aa5qdAoTwfebnSPDsycIot1RCkPyOmLaWwLAHd21CTOYbDf1j
   Q==;
X-IronPort-AV: E=Sophos;i="5.90,164,1643644800"; 
   d="scan'208";a="193688902"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 08 Mar 2022 21:28:10 +0800
IronPort-SDR: jyAw/iOX6Tyt+ovkU+K4z3bnjQKF1Z2KxRG+Nr9M8ncLQLvFGzmzrjpmSGy7VgyobM+VA900Sh
 daHWzr2TD3K7H0q/Po6f+97ENdFNWIHknYU4Sfmpw+ijZbrcsbVZpojD9k4PYEQ8KKM0t+8y4J
 No4RA/Y7AKc+UYl9RDnRWwfFO7F5EsbCE0obHLh2AAOByX8BvWCD18OzP3ytSjyYCBgmKId9xf
 FhCJvvI/laV9B6tvjxuu4EFFLekL6ER+Lf0Uha+Y8SqzJaoUURosAsmniZCdPqWcCHo201RGGH
 9eq92K0DpZhB/qRd7FcFm0MW
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2022 04:59:27 -0800
IronPort-SDR: Z7gJCKCql8GT2T4Kuh6FE7XBIZ6KcgsQn/2Dyh0MpaPBlrt/z+yEbGxh8LtkkIRzlNWfUEs/DE
 T9kxzT6VYsSJ8i21gmHvxikby16kYDd7I4uIU6jyLG7Ba97rzL91eGG9JlNjZruucVqdf6H5OH
 X+/MacvuqydWu0RmSSdi8f3Xyn/gD8Jc6Ju26ZJqEiAHkSMQwVujEkg0ndpvMCv6EQu2ziZ5C7
 6m2EWhBUXoCU0/fGH7l48Fnboy/JE5CDDhzVsAioVlsCfp2wdBD8Onm78XlY/8njKhHXbzM9dG
 kHI=
WDCIronportException: Internal
Received: from unknown (HELO x1-carbon.lan) ([10.225.164.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 08 Mar 2022 05:28:08 -0800
From:   Niklas Cassel <Niklas.Cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     damien.lemoal@opensource.wdc.com,
        Niklas Cassel <niklas.cassel@wdc.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
Date:   Tue,  8 Mar 2022 14:28:05 +0100
Message-Id: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
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
Changes since v1:
-Add the new properties directly after spi-max-frequency for all DT board
 files.

 arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 ++
 arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 ++
 arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 ++
 arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
index 984872f3d3a9..b9e30df127fe 100644
--- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
@@ -203,6 +203,8 @@ flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 		m25p,fast-read;
 		broken-flash-reset;
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

