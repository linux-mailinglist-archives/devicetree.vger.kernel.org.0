Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F33CB2F6052
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729079AbhANLiI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:08 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:39433 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729066AbhANLiH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:38:07 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id D225A1627;
        Thu, 14 Jan 2021 06:36:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:36:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=RvyoFwt9ugoVX
        +w95jfpGG+v6yNlebAV9os8ifLrrp0=; b=DJigwZWUBXxNF/LGXIBJPXSfz557+
        hh5ilI82UDStBCwP0JSHNI1iB/fJk98PcrzEF1MTsPv52Khm/HVsK4PMEDg1Sgw0
        Sds5FTEaLVftZlmVELWPo1Md5tpC2QshRKFo94HenXzTV75g7l5KZW6SwXE/Rfkx
        YOYujbi4MdtccJkux4PqfCLcLN8zmqOqlD2XZAZhq7xyE3ZWYagY9hQuAofaE4Ss
        YjB4gZ8Ql6WmBRzEiLi4o7EjFGSiPEgy0vFMMu7ackSXuFXM/SCK74z5/9q4IeTI
        0t/wtU2V90lEMBoe7Mbyc8SJmbr10BZ2lDZiW39i+rkJ9ASTMTiEoABhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=RvyoFwt9ugoVX+w95jfpGG+v6yNlebAV9os8ifLrrp0=; b=VXP9SRip
        9dB2qzYBMuxHEJwxRJ4Yg81VeiS1hCUWF0bmyUvUpMPzfogRJO8yHy88ZdWPOX1j
        Fdt8thGk07XZsmobAFZMzIMOAd83MDxaPYTf7P6ABLSgiA0W81Gyzv3LlHgo2iSL
        wzQT2UbuLLA2eVGfhnNWD66nXGyQx8h6zvC6uEHSjbXSwcpwL+gJ5LI3mQHjxnkE
        b9DwWG0+DTuBXbM658Mvyvy+4xhFgr4kST2pOptq/+TXXhje1KvpsMExYBYDqXzo
        82ZiNpS0gYQWx27TMMManC/u4HCYCCtXURr4qwQLyvXkdjkOmiDirwpa1pZ1D4jZ
        M2H8Y7ynkX04zA==
X-ME-Sender: <xms:qSwAYOdZi_5Ccg5E39obKfQp4LUivMHoxioLti-s5YxW9VRuXtvEXA>
    <xme:qSwAYIPtBA8mPpMBW2ZR2Y13OpEMLh4nwqI7AAdYFXE0bn2GUVpTbz6EEUD74H6Ar
    7Cj0wdsfZT7GxToQBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedutdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qSwAYPgqoVi0Wtd1iKrM1qFsomLrPCtsbsRJoEvG5cZe7XizxirJag>
    <xmx:qSwAYL-HvXrczqgoR9VRcDnBQJFBQMPn6cJwOpo_k8dsjlsAiTsZWg>
    <xmx:qSwAYKsqAI2EyWqc6_iPfAZplF3Jul4bBXVfKCKJcQXlJBe0OwHJOA>
    <xmx:qSwAYMIoBWhRvQXhc02Wg20AYAYz-ATPErQp_AGnIrxvBCkWW8tBHg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 15B4F1080057;
        Thu, 14 Jan 2021 06:36:08 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 19/19] arm64: dts: allwinner: pine-h64: Fix typos in BT GPIOs
Date:   Thu, 14 Jan 2021 12:35:38 +0100
Message-Id: <20210114113538.1233933-19-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 53441b8ef7de ("arm64: dts: allwinner: h6: PineH64 model B:
Add bluetooth") introduced the Bluetooth chip for the PineH64 model B,
but the GPIOs property didn't conform to the binding of the bluetooth
chip. Let's fix this.

Fixes: 53441b8ef7de ("arm64: dts: allwinner: h6: PineH64 model B: Add bluetooth")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
index 645bd8761eb5..686f58e77004 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
@@ -43,8 +43,8 @@ &uart1 {
 
 	bluetooth {
 		compatible = "realtek,rtl8723bs-bt";
-		device-wakeup-gpios = <&r_pio 1 2 GPIO_ACTIVE_HIGH>; /* PM2 */
-		host-wakeup-gpios = <&r_pio 1 1 GPIO_ACTIVE_HIGH>; /* PM1 */
+		device-wake-gpios = <&r_pio 1 2 GPIO_ACTIVE_HIGH>; /* PM2 */
+		host-wake-gpios = <&r_pio 1 1 GPIO_ACTIVE_HIGH>; /* PM1 */
 		enable-gpios = <&r_pio 1 4 GPIO_ACTIVE_HIGH>; /* PM4 */
 		max-speed = <1500000>;
 	};
-- 
2.29.2

