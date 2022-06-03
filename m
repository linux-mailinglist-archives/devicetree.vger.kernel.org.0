Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 486E753C720
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 10:47:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238855AbiFCIrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 04:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236477AbiFCIrb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 04:47:31 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34BA22508
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 01:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1654246050; x=1685782050;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=s/Wd73cyNlv+HFS7l4GyetpqqF75Oqrnu0NEMj+qrPA=;
  b=cgTGTDQkhpercqxmXkuUYFtHQNLz+Tqj6xAIhlWxQ3Kf5zOGEXMdoX/6
   XIHBMrF34t6jtmdTW2ttuOM8lKR8GSLgIvzlYSd+tt5n9L9moIqF0L1j9
   eNXjwVh6euaM8xsvrQI51vTEjaaWcHJE0X1c6s/y4hIM1J97O5Q1liHhm
   gZ+3BlkYVNQd1QuMYrsUYD2kyZhz0yTIiMqEDMqgl9FCgZaA3d6fxghHD
   LDqeBxg4yp5OXTty5rRjYJCJSLvRnfZBWMOFkc2/HuXr+jlbmsVIMxZ7u
   KMG28yXxIehlXd0cJkww3r2baMFc5/ZTtny6zejZcStAuShcSmz9XjPle
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; 
   d="scan'208";a="166617030"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 03 Jun 2022 01:47:28 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 3 Jun 2022 01:47:21 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Fri, 3 Jun 2022 01:47:19 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2] riscv: dts: microchip: remove spi-max-frequency property
Date:   Fri, 3 Jun 2022 09:45:35 +0100
Message-ID: <20220603084534.1919804-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

spi-max-frequency property is supposed to be a per SPI peripheral device
property, not a SPI controller property, so remove it.

Reported-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/lkml/20220526014141.2872567-1-robh@kernel.org/
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Since v1:
- Rebase on changed filename JIC
---
 arch/riscv/boot/dts/microchip/mpfs.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 3095d08453a1..65a20c0b8af1 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -299,7 +299,6 @@ spi1: spi@20109000 {
 			interrupt-parent = <&plic>;
 			interrupts = <55>;
 			clocks = <&clkcfg CLK_SPI1>;
-			spi-max-frequency = <25000000>;
 			status = "disabled";
 		};
 
@@ -311,7 +310,6 @@ qspi: spi@21000000 {
 			interrupt-parent = <&plic>;
 			interrupts = <85>;
 			clocks = <&clkcfg CLK_QSPI>;
-			spi-max-frequency = <25000000>;
 			status = "disabled";
 		};
 
-- 
2.36.1

