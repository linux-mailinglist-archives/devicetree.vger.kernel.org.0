Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC89366020A
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 15:24:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230442AbjAFOYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 09:24:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbjAFOYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 09:24:30 -0500
X-Greylist: delayed 2365 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 06 Jan 2023 06:24:29 PST
Received: from imap4.hz.codethink.co.uk (imap4.hz.codethink.co.uk [188.40.203.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C06427BDCA
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 06:24:29 -0800 (PST)
Received: from [167.98.27.226] (helo=rainbowdash)
        by imap4.hz.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
        id 1pDn1n-000vm9-TQ; Fri, 06 Jan 2023 13:45:00 +0000
Received: from ben by rainbowdash with local (Exim 4.96)
        (envelope-from <ben@rainbowdash>)
        id 1pDn1o-0017Am-1Q;
        Fri, 06 Jan 2023 13:45:00 +0000
From:   Ben Dooks <ben.dooks@codethink.co.uk>
To:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     robh+dt@kernel.org, palmer@dabbelt.com,
        krzysztof.kozlowski+dt@linaro.org, zong.li@sifive.com,
        linux-kernel@lists.codethink.co.uk,
        sudip.mukherjee@codethink.co.uk,
        Ben Dooks <ben.dooks@codethink.co.uk>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: [PATCH] riscv: dts: fu740: fix size of pcie 32bit memory
Date:   Fri,  6 Jan 2023 13:44:56 +0000
Message-Id: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 32-bit memory resource is needed for non-prefetchable memory
allocations on the PCIe bus, however with some cards (such as the
SM768) the system fails to allocate memory from this.

Checking the allocation against the datasheet, it looks like there
has been a mis-calcualation of the resource for the first memory
region (0x0060090000..0x0070ffffff) which in the data-sheet for
the fu740 (v1p2) is from 0x0060000000..0x007fffffff. Changing
this to allocate from 0x0060090000..0x007fffffff fixes the probing
issues.

Fixes: ae80d514808557018e44190 ("riscv: dts: Add PCIe support for the SiFive FU740-C000 SoC
")

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Note, this is probably a stable candiate as it looks like it has
been this way since it was commited.
---
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
index 43bed6c0a84f..5235fd1c9cb6 100644
--- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
@@ -328,7 +328,7 @@ pcie@e00000000 {
 			bus-range = <0x0 0xff>;
 			ranges = <0x81000000  0x0 0x60080000  0x0 0x60080000 0x0 0x10000>,      /* I/O */
 				 <0x82000000  0x0 0x60090000  0x0 0x60090000 0x0 0xff70000>,    /* mem */
-				 <0x82000000  0x0 0x70000000  0x0 0x70000000 0x0 0x1000000>,    /* mem */
+				 <0x82000000  0x0 0x70000000  0x0 0x70000000 0x0 0x10000000>,    /* mem */
 				 <0xc3000000 0x20 0x00000000 0x20 0x00000000 0x20 0x00000000>;  /* mem prefetchable */
 			num-lanes = <0x8>;
 			interrupts = <56>, <57>, <58>, <59>, <60>, <61>, <62>, <63>, <64>;
-- 
2.39.0

