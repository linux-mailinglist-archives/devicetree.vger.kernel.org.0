Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 273B849B574
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:57:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346483AbiAYN4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:56:44 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5789 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238613AbiAYNyv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:54:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118886; x=1674654886;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Pa9gMrfjoPpspyG0XCm7XjzqL59yJIrfXPHB1pGN5jQ=;
  b=OoM+MsVp0LKWgRT9tHwGfEVVhKM0LVr4b8bXBUekruo6RbsVfGijqrPD
   oLnXY0UBhHwZrOZ8tmEp8ZTzuWfbQsg+xXfjn5jen81qH74dQ4T/IbYLJ
   b0INjr+XRNooBjxDbOwbyRMGFL1uwa8Mx/Py3+iVebrMM1rmNEsgIEEDm
   UGuywdPgBeAgtlpaMez/6H2a3b+v2gKXOUC8cvbDFl01E7wy8DceS+YFT
   VIQQYZpfyaeeHgzCxNldmDqbHbDX/FGs1BAemAnzsn7MD+cQLu0AskU71
   QZqYI0iweCemql+pnsysG9TIq2nYVABIouz48KscBRynTERQFVWdaeDDa
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699074"
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
  bh=Pa9gMrfjoPpspyG0XCm7XjzqL59yJIrfXPHB1pGN5jQ=;
  b=WbBYp2K3f8GF6uYr4lcOh19uYoprIVDeu28UKBJhXB3j343L6SS7QI3z
   I85dA+HzlMwNySiPfTVRj200W4lgjBmy6TqA0e3ZsrHF/xpIUjcsYYgpc
   3EA828g3G++23mWPQgyuJD/zzmUUl7qrZQrqjVp4dXFH5YYQ0Nso86frp
   56pRkY3RtMR3Kar/0TF8m8nAt/5v/aR2o+zAMtCW4ak3mGUrs/JhJumig
   VruIkoNgGDxWM+Rvljy5L785ZZ1/I55NkSUB1EOW/F2rmVRh8B1BVxOnI
   IPduKsVyrGo+Kyve+e25pVvSt8ODG+8pQlTQ4GihIQzLW6EFF+RPuY+hp
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699073"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:25 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 106FA280082;
        Tue, 25 Jan 2022 14:50:25 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] ARM: dts: imx6ul: fix qspi node compatible
Date:   Tue, 25 Jan 2022 14:50:14 +0100
Message-Id: <20220125135014.3041002-9-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx6ul is not compatible to imx6sx, both have different erratas.
Fixes the dt_binding_check warning:
spi@21e0000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-qspi', 'fsl,imx6sx-qspi'] is too long
Additional items are not allowed ('fsl,imx6sx-qspi' was unexpected)
'fsl,imx6ul-qspi' is not one of ['fsl,ls1043a-qspi']
'fsl,imx6ul-qspi' is not one of ['fsl,imx8mq-qspi']
'fsl,ls1021a-qspi' was expected
'fsl,imx7d-qspi' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 4d19ba7cb342..36be13bf1439 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -1028,7 +1028,7 @@ pxp: pxp@21cc000 {
 			qspi: spi@21e0000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
-				compatible = "fsl,imx6ul-qspi", "fsl,imx6sx-qspi";
+				compatible = "fsl,imx6ul-qspi";
 				reg = <0x021e0000 0x4000>, <0x60000000 0x10000000>;
 				reg-names = "QuadSPI", "QuadSPI-memory";
 				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.25.1

