Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C23112F6056
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726919AbhANLiO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:14 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:59323 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726771AbhANLhl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:41 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 1B0C9161F;
        Thu, 14 Jan 2021 06:36:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:36:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=j2W8X0k+3lPjk
        rohEpcnvJ5QtLumqRLE9sSucTG7jq0=; b=euQLJg2L7tLz57xWEYsKXjbQETioQ
        1gZkjNDT893gBC+cCn8Qhnyxh9y4JdA20vbF34E6Ml6UGLdG3Vg/VTZZSXmjUEjF
        0xxD0CIjuszpGbepeZEbASmPkPs68O2zjYTDBYkgdTLMluYYjTt+bJKYHe8Vp8i+
        LXLJhn79ELKU5GPLujxntUOkjx6fDMT4VhJfndxUWbE7SHfgWVB2xp7TRzae6glX
        p4evhdwMSTijuxcqeyfJL8hFWnSJLOXdvX1CmTrRJZsXBU/xEqb1fj9a2NGI2iyc
        YSjYWPnAZhqsrgyKPCX5rlQcGoYmxzB+iyT1NL7ovSsfWcAETHn7nrsbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=j2W8X0k+3lPjkrohEpcnvJ5QtLumqRLE9sSucTG7jq0=; b=a30sC0wU
        O7jbsD5fHSTM1SBWwXgWXs+YU5OydJRtD+rhIyWJ6S+qD6UiCLYrlvG0EoudvmZv
        xgpAlQOzZQPwWCV3PoNe00fCZ6zsHRKl3hjdUe4wpxFKJNdLQuPIAUb7LMQ01GsW
        A4VgfsNdnqTlwoy6ztcyE8aYs4L2mQ2jqx14d8IrFt9YwzuJ4WKVOl8828dPZflY
        K9/wbNBBO9OdeZMxlqocy2aXCgwgwKCnIbKSdddpsWXW8s6hF3LKFXcENvOJRcMo
        gDprzBxPQLaKjRbj9tu3pngFs7j9MB1ZPiOG44jJaexBeOtj4YCSr8uIerNtm6Kq
        2JsEtJRETqKhkQ==
X-ME-Sender: <xms:oywAYOrrgUPAC9OiPDuI5jzDuLEOvsokPdHITTFkyAVCUPqVDQsVsQ>
    <xme:oywAYMrK8ycOzG9Z6n3iCcIl98DE-mHqECVBCtXzc1kMnidhj_KCeeUHj2wpnt-my
    C1rz4NudcSx9KaKgqc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oywAYDMslyAg82froJXEExlymbRqULmepxQjzI9S1rkuhB_SE2ByCg>
    <xmx:oywAYN4P--9AJbUdwnh5gjDAw0Rclt1srk7JHWYvK2huKM1VxCvYnQ>
    <xmx:oywAYN75Eh8LC_raAsYT8JaaOH2nTRGST_iIvb9-uEeXC_oECn2I1w>
    <xmx:oywAYA1VA7xVDXlwZEwJbnHlROfql7L3nyUC8ZA4wF1YnQS6WBPKww>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 501281080057;
        Thu, 14 Jan 2021 06:36:03 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 15/19] ARM: dts: sun8i-a33: sina33: Add missing panel power supply
Date:   Thu, 14 Jan 2021 12:35:34 +0100
Message-Id: <20210114113538.1233933-15-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SinA33 panel is missing its power-supply property, even though the
binding mandates it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-a33-sinlinx-sina33.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/sun8i-a33-sinlinx-sina33.dts b/arch/arm/boot/dts/sun8i-a33-sinlinx-sina33.dts
index 785798e3a104..a1f28e71aae4 100644
--- a/arch/arm/boot/dts/sun8i-a33-sinlinx-sina33.dts
+++ b/arch/arm/boot/dts/sun8i-a33-sinlinx-sina33.dts
@@ -63,6 +63,7 @@ chosen {
 
 	panel {
 		compatible = "netron-dy,e231732";
+		power-supply = <&reg_vcc3v3>;
 
 		port {
 			panel_input: endpoint {
-- 
2.29.2

