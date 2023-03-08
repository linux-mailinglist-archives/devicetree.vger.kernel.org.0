Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FF426B02D1
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 10:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjCHJZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 04:25:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230518AbjCHJYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 04:24:45 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC7F4A1FD7
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 01:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678267467; x=1709803467;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=3ZxyGCq/TNB3ZgFnljYXTNz9Hea23GLhgn5o+xe9WtY=;
  b=CulOKKf6PuSZZxxFuhAmvcjMDiPfjH11Bg9DkrHIFNrYCObDOn+w2awd
   Kq8vl/m8TU3aTcPMBphEVVxUcC/OjBcncRM/luV8HSvkwP/zSgBJtsc/M
   wmWF0xBRNyJBgiS35HO3iqD21dhqHJRZX/+pFS9nTriu28CkxtP/hK5pF
   Qp27t6oERRDIS3yVtAwAX4jFRlHn3RHcjyRweemqDFErIMwcgeUKua7Rb
   QEFC7irrw7xH6ZgLMu3w8BU25DIB8aFXQyMtwoHcW4EtOvuk2du5qW0B9
   LIiaKVnQz0j1/Qx112SNpl55C8KaHudi82FLc1blyjDOfVBSgcxKn4Lmq
   A==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29539998"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Mar 2023 10:24:24 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 08 Mar 2023 10:24:24 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 08 Mar 2023 10:24:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678267464; x=1709803464;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=3ZxyGCq/TNB3ZgFnljYXTNz9Hea23GLhgn5o+xe9WtY=;
  b=iLBrZhB05K3REVTgUO0rfb45YMLHy/d9IE2Ncg+xHX69u25WJ8L21PWg
   t5SPjM9ooHM1RGw2QYm2vMDpdn4h/HBwMX2TV0PO+hB5JXpTxoKtcQ3Za
   8Y4LWgMXfUoK2kwH8sGpEizqijKSCRg7bmVCVgO1dQWyB1qPJbTOVEhpW
   m7Tmf/sOMIxE5cwN08x4gAZCWWeedAfjueIMh1OVssdQGMwbfv9TpgQ3O
   X7gB+Ld0OC9g7luFdaBvLunPBKA8/rkLJV6X2nIZlzWYNYd2ZS5yiRcaS
   N2G46Gz5ste42xfAsYjVueoun3oseEhO+6pz/oywSxzlF6I1lpice8zeL
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29539997"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2023 10:24:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B73E9280056;
        Wed,  8 Mar 2023 10:24:23 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mp: fix address length for LCDIF2
Date:   Wed,  8 Mar 2023 10:24:19 +0100
Message-Id: <20230308092420.2742432-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

0x238 is the offset for PANIC0_THRES, so the length needs to be 4 bytes
greater than that.

Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Does it make sense to increase the length to 0x10000 instead which
is the size mentioned in the memory map in the RM?

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a19224fe1a6a..722e36d7b420 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1128,7 +1128,7 @@ aips4: bus@32c00000 {
 
 			lcdif2: display-controller@32e90000 {
 				compatible = "fsl,imx8mp-lcdif";
-				reg = <0x32e90000 0x238>;
+				reg = <0x32e90000 0x23c>;
 				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
 					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
-- 
2.34.1

