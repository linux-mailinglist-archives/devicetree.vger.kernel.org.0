Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56386531020
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 15:19:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235405AbiEWMcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 08:32:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235417AbiEWMcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 08:32:33 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E0B3427E6
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 05:32:31 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 661E78405A;
        Mon, 23 May 2022 14:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1653309148;
        bh=IzA7L8qOjI88qhKIqI5rjTpURawuwiBN15MPJ8tzApI=;
        h=From:To:Cc:Subject:Date:From;
        b=DvTi0rQ3jP9YZUhJRGJTEfPok/BygKoBjdxXFzbCHq4tODd7o4mG68ElbnuRtVLoB
         IbDdNVy3cYbSEmmcnoQjfj345+D6OvwLk2BF/Ds39njIDBS9yfj3q+cfW9uG/UqRHZ
         m6rIKj7lzP7cpGLLU2pncexiAAUGt8nVOaEQfwgX/HnHB6aWFE5e8dvDbUbzUbryH2
         +yk35x4iNCJd9WaeRVm+TSGfIPZIfHPNLoxwaaOKs/hWDhv+CpHeaQdESu1wcc8+3P
         Sk2TzQ+uoWhE9rIzTmyZPoi2F/Xjfx/WboMYGwtP8YfCLGcRv2UUrVmVGK9Rkk2UlZ
         HsaCTLjbEIvRQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mm: Add SNVS LPGPR
Date:   Mon, 23 May 2022 14:32:23 +0200
Message-Id: <20220523123223.9031-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SNVS LPGPR bindings to MX8M Mini, the LPGPR is used to store
boot counter.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
NOTE: Depends on
  https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=for-next&id=fee6de80bdd3df976a43f3092a165cb43c072f20
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index facf3ca4d52e0..c5515a6f129c7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -611,6 +611,11 @@ snvs_pwrkey: snvs-powerkey {
 					wakeup-source;
 					status = "disabled";
 				};
+
+				snvs_lpgpr: snvs-lpgpr {
+					compatible = "fsl,imx8mm-snvs-lpgpr",
+						     "fsl,imx7d-snvs-lpgpr";
+				};
 			};
 
 			clk: clock-controller@30380000 {
-- 
2.35.1

