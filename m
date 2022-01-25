Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60D5149B56A
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383167AbiAYNy5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:54:57 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5782 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1386481AbiAYNwi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:52:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118757; x=1674654757;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gccs447r6dEb3v6hKJITc//u8DBaFHYdGRrCXEEkKNQ=;
  b=jvMkuAhKrzzq7TZXHMj/XBnsz8a7NVwzqc4NdVdpTDJK2/QOeJbJZllz
   oM+Nus88M7BIpOgbqa52bR9wKpL90N4rFyrqwsKT8CA7G/DmewB33HD0O
   W8cN+Z3hbYJcPhAfQqPN09KZLWy9MrcF/qUGYPqPFbkPjBKwyA1ku0caj
   HthHeNxQzFDzQn/DMXiYlUdRRtQ0OCCzIRReb0ZIvZKtlLxP0ypz+yNKk
   IiQ7g0TKaGLpp9NnFyjaauj/6cw8pz7xxzEo96PsynGUFOJ769h7PFEBj
   Mnpchd0vpC2Lq9ZlJ206iSISbVaZdJ5aNo2Vr5mqUX+GEK0h/W68euC0p
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699066"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 14:50:24 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 25 Jan 2022 14:50:24 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 14:50:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118624; x=1674654624;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gccs447r6dEb3v6hKJITc//u8DBaFHYdGRrCXEEkKNQ=;
  b=QxRl9/X+tZgcNHH0eKtSVz806fXnHV63mJNYJbvtjz0CjnmssLNPU6sR
   BMd+jl/ca6oP2nxP8mJzTFi1k+CSqV21JWGbOmh6wR2qTRCWXpq5aOSSg
   XTTEIQHqiybBurDS1ktAcLKsAKyYA/kVD4DuyjSZyb880PkpyxS0Sbl88
   lFLvn4+r2GotZIcdf9cTXhrzYzs99UaLNKJV3MjeHtRhYmS/9jYpujSR0
   ej1vKvOJZb6+tyi75Rq76vRbIzidL+PztAXnCS/Ig4nucvQ80aY3EdESe
   yrjAF+GgdSbqhTPoYQDoMQA/gHpCXS3ZUt5HUvFicIK3kFSg/5IdDjkIf
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699065"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:24 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3AB04280065;
        Tue, 25 Jan 2022 14:50:24 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/8] ARM: dts: imx6ul: fix adc node compatible
Date:   Tue, 25 Jan 2022 14:50:10 +0100
Message-Id: <20220125135014.3041002-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fsl,imx6ul-adc is not listed in the binding, so remove it. Fixes the
dt_binding_check warning:
adc@2198000: compatible:0: 'fsl,vf610-adc' was expected
adc@2198000: compatible: ['fsl,imx6ul-adc', 'fsl,vf610-adc'] is too long
adc@2198000: compatible: Additional items are not allowed ('fsl,vf610-adc'
was unexpected)

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index df8b4ad62418..d6c2b0ad3eac 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -920,7 +920,7 @@ usdhc2: mmc@2194000 {
 			};
 
 			adc1: adc@2198000 {
-				compatible = "fsl,imx6ul-adc", "fsl,vf610-adc";
+				compatible = "fsl,vf610-adc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_ADC1>;
-- 
2.25.1

