Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A05425A05A9
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbiHYBdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbiHYBd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:29 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFE8590C49
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=LnsmqZK1fTB7ZPj/SjrRTfQDLUFrjRLVTcyXRGN1H7w=; b=COt8TjG8IDcR8RLGccJlJmFDwm
        YF+otGpNyvRBHHgWIXi+2mEx8vvVcRlZU85gHBDUUGQPU8DwhoAAy5fsnFDftwU188jfj8kgxM+j0
        FhSOi5ZT93vhr3Cmqd7uDOky9BRTieInNyXP8ojnfvzABfleR/eFcB4gVBfaeo3gaaWU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW34-Nr; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 10/12] arm: DT: kirkwood.dtsi: Rename nand to nand-controller
Date:   Thu, 25 Aug 2022 03:32:56 +0200
Message-Id: <20220825013258.3459714-11-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220825013258.3459714-1-andrew@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Current convention is to use the name namd-controller. Now that
the orion-nand controller binding has validation via YAML, fix
the name.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 arch/arm/boot/dts/kirkwood.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/kirkwood.dtsi b/arch/arm/boot/dts/kirkwood.dtsi
index 362d2a6fbb54..122a6db6c001 100644
--- a/arch/arm/boot/dts/kirkwood.dtsi
+++ b/arch/arm/boot/dts/kirkwood.dtsi
@@ -42,7 +42,7 @@ MBUS_ID(0x03, 0x01) 0 0xf5000000 0x10000	/* crypto sram */
 		pcie-mem-aperture = <0xe0000000 0x10000000>; /* 256 MiB memory space */
 		pcie-io-aperture  = <0xf2000000 0x100000>;   /*   1 MiB    I/O space */
 
-		nand: nand@12f {
+		nand: nand-controller@12f {
 			#address-cells = <1>;
 			#size-cells = <1>;
 			cle = <0>;
-- 
2.37.2

