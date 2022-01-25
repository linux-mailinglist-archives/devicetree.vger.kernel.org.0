Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 767C149B581
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:59:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386651AbiAYN52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:57:28 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5775 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1345713AbiAYNyv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:54:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118886; x=1674654886;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yLeBi99V6WP+Sq7GkjdV6Mk6p7Lbaw35uZSiRZgBFgE=;
  b=FmiXc68Ro5YQxkSFrtA/xXEEG+nnccyyA9WxHSecc4ImJwJtCSr2s1/i
   +QJ+Kr/We4YZSCXTI2pd1o0LvEYS68EGuV0Kj9KhHp8kHsgWGhCpisAL2
   +FSIHR7bQnIDSPDndOBzjMxnA6SxRYAqGIM356pF6rraF7JM70wWYKrsW
   R5mIS5GhSE74VCsz0/kDEvcboqGeNDLxVQ9H/0KEbSwHkMhRqxCI0geGc
   juSRlrECFCmvHEwiphMcts4rV6MKij9Rp1ZxpfBJeyOmBjLOrhN9ee6e8
   hh8y+oDtHaA9mL4OcK1H3nzzITkCmqXTiq4LF6J73/t9CqBG8lPv3IW7k
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699072"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 14:50:25 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 25 Jan 2022 14:50:25 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 14:50:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118625; x=1674654625;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yLeBi99V6WP+Sq7GkjdV6Mk6p7Lbaw35uZSiRZgBFgE=;
  b=R7NzQYQrWUVMs7QNoasJJyf1oTZ7fP7GpZgEe48X/7Dxlms/jlw9Lvj0
   XION3yfIuTn2A4Z0HAukRJgXkJgiI80p4xFH7B2bGWuNK/jxg5EM9sk/g
   umHzs+s+oYDJvMWxucCXBvnEef4fHjtPawvXxQF4yKM92Lh/6+60afKuJ
   yd1k/4ZydTIruFttlkzMv2UvpgtsmZhzi+AIOi61AuLZXinzfQNbHtN/X
   MmVPhPniA+YWSxaTgfJSu3UZyoFD5OkOZqGMJGOI8YRLGHPT2w+owYGS6
   JaMdC8ZT+GW6E/qE3R3jZ3kkIcfiZCiiIhFLyqyGMIEPFasrkUhciYgON
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699071"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:25 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D5A6D280078;
        Tue, 25 Jan 2022 14:50:24 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/8] ARM: dts: imx6ul: fix lcdif node compatible
Date:   Tue, 25 Jan 2022 14:50:13 +0100
Message-Id: <20220125135014.3041002-8-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In yaml binding "fsl,imx6ul-lcdif" is listed as compatible to imx6sx-lcdif,
but not imx28-lcdif. Change the list accordingly. Fixes the
dt_binding_check warning:
lcdif@21c8000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-lcdif', 'fsl,imx28-lcdif'] is too long
Additional items are not allowed ('fsl,imx28-lcdif' was unexpected)
'fsl,imx6ul-lcdif' is not one of ['fsl,imx23-lcdif', 'fsl,imx28-lcdif',
'fsl,imx6sx-lcdif']
'fsl,imx6sx-lcdif' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index e75c2e164551..4d19ba7cb342 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -1007,7 +1007,7 @@ csi: csi@21c4000 {
 			};
 
 			lcdif: lcdif@21c8000 {
-				compatible = "fsl,imx6ul-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6ul-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x021c8000 0x4000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_LCDIF_PIX>,
-- 
2.25.1

