Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C704B2F6048
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726427AbhANLhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:37:38 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:53185 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727320AbhANLhh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:37 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 5F7BC1611;
        Thu, 14 Jan 2021 06:35:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=qfVutDDqJZIqT
        ublx4MVi4hNH86UrRMyXly+9D/M/1k=; b=gnncHcSYmRWvWLvpmC+h7JGe1GM8X
        G/Eunfo4cE7mzJXP6T2gH5EjSJYm22yP6q7Dv/sPBmasps3SaEUg2ORg9zsFuo0k
        sec0N6nP2tp8GfMeaOPL2FsdYHxLqx2PrjKij9oDS2EodG+9kpDCycxUF1N694o6
        IpusAXeeL8EU8KHFmm4Wr3DT9X52PLFHABzi72lsmPyAdMbHpAJ2vptfy1jBwRhV
        z7aIVl2HMoyXOA+PwAIpOj+k6eUnt1UJmmvsjncqQweBkBcZUt2BhtGOJFQhbhx4
        u4o0TJgiidRzhLPAtw0ogChmWH8qWo6HRBdrBAsWcNNMp75oalB5QzmTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=qfVutDDqJZIqTublx4MVi4hNH86UrRMyXly+9D/M/1k=; b=LAakfd4q
        d3Oi9B/rVK4SmKO2GW7rJD77zBcqyqcFsaGt0Y3ebR9W1GxN09sKxbwB4Rlxh4BI
        kVPzvZAsl0KURPWBzjgXgInNH+xzYAus5KRykWbipT2mWa458AZ7czBX4EEnBOkI
        nfvZ+tLHjE8MAkheb92oiYgQ+oy4+q80czFkX2ya8YVvHoLi+2x/RTfFaSrBROfV
        YCCBthL0FGKzYn3MhGKULKTSJNt3nb7Whq++KI6czyylFHssN6PigyPiA7SzFoml
        Q9z4X5F02Uvvs3ctz7g/ni0a5GdtKQ/e7zs/v2O5aEL6Npb6iHwoThO4HGPWD8Dt
        vWA/GcIL5pr6zw==
X-ME-Sender: <xms:niwAYEkfYBCKDJJfYBJTLtZl4oZCfEHDa2NiwRHCLbdgz_cmXLxEEA>
    <xme:niwAYBwxL6Lx0__l_2Bkp0i4KgvCFHFJXPozhYGdhJHzw_fpnz7Mi-Kw7WRf7wk_e
    nOweSZv2x22H1UZgaU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:niwAYKOOzesgCox2oRBVeK9-fYGBiQbwavvbHwYBr_PDlPddcp8BEQ>
    <xmx:niwAYNQYiIoImLtSTg4sdNePHV_WPglTpYUVYRVBwMDRw5jh1hv4Sw>
    <xmx:niwAYAa9RdmS7bm2zg0GqBA9vR9b5IJC1axMphlOlrJsX_T-V7o6ug>
    <xmx:niwAYIgRQQ_6VtVxqQMhDpS5s2VpX6Kddndy5rx1gd_su_qlq8jdgQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id A9C03108005F;
        Thu, 14 Jan 2021 06:35:58 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/19] ARM: dts: sun8i-s3: impetus: Fix the USB PHY ID detect GPIO properties
Date:   Thu, 14 Jan 2021 12:35:31 +0100
Message-Id: <20210114113538.1233933-12-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the USB PHY Device Tree mandates that the name of the ID detect pin
should be usb0_id_det-gpios, a significant number of device tree use
usb0_id_det-gpio instead.

This was functional because the GPIO framework falls back to the gpio
suffix that is legacy, but we should fix this.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-s3-elimo-impetus.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-s3-elimo-impetus.dtsi b/arch/arm/boot/dts/sun8i-s3-elimo-impetus.dtsi
index 24d507cdbcf9..052b010a5607 100644
--- a/arch/arm/boot/dts/sun8i-s3-elimo-impetus.dtsi
+++ b/arch/arm/boot/dts/sun8i-s3-elimo-impetus.dtsi
@@ -39,6 +39,6 @@ &usb_otg {
 };
 
 &usbphy {
-	usb0_id_det-gpio = <&pio 5 6 GPIO_ACTIVE_HIGH>;
+	usb0_id_det-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
-- 
2.29.2

