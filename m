Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2F6E2F6046
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727875AbhANLhh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:37:37 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:36751 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727820AbhANLhg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:36 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 0ADA4161A;
        Thu, 14 Jan 2021 06:35:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=UDg9aVuUhCOmU
        WXIhTH1UY1y+Gg+w4waOMzbL3+uTIA=; b=rlcCuMK3Ci0k+xgV974CicRh2MWvh
        24SDzhMIntwaoZIgfUi+3ZhKwYcwz2Hg3VoM1gZz1S3YjKShV0wmAFNtHRWRHigV
        NCfBX+pTtb2LHZFCwiDbh4u8cHZ3R1J01ga8Y2TzMW+mZtmyPxGpnoePc3zD2pjQ
        H0NG6RNNdkatdEpfHp5p21lffl1tdZ+JZ4gMILuCoeNc1YOiUZYZEnTLoFXLZgqe
        /HDNbceAfE3PlJHQUVy2L5bkylWNmY4WM/Nu08IcwV0O4zNHl/2OI3TdM10tjDnR
        Uc6S5BnXoigrvDIPdERzPsMgSAwjphSBrv9GTwzBO23zFmSkjZ/pxKGRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=UDg9aVuUhCOmUWXIhTH1UY1y+Gg+w4waOMzbL3+uTIA=; b=DDluxB01
        D9QiIlTyhv/vaJ6C+F1n6brH0PHvhBw4f2q9f9Rt4cAaZ9XeV381ZTWNHrMeM/Oc
        33Nl+RN6w6GRggTPrRUy5TLGlUfpDAQIRfhznnPB3C31ifOw3CPGDp2flS/4/3eO
        hGK+fteE8ZA2/RnABczDO2F0tLXNFrPlwlBugVeQcxE8bE7AgphjJ+sXBNLFpWPp
        QxUOp0Db1p4Xdt8WT8tM8EofAQp4W04ntlRMnDHKAwzlbImAch1QVzUT+T7SDO5w
        PLtT9Og6dfjjhYe//VUgVSeuR27tYtQ12vW+69EimEIQw6Kl9MQunuoRfS8YRp7B
        BoV95xU8O2Zwpg==
X-ME-Sender: <xms:nSwAYAwCXv-Sp8o4owkfIKCADPpU0FSpQ_c5aukstcqaDfXNuGK6_Q>
    <xme:nSwAYETD48Nod583753SEPg9bPscLToCLFUqzkZUzZJkZXmmVuP2mDAwT-zSezfFD
    GIRyUmPJGTV331tynE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nSwAYCWUefsiTxIN62sViFe3JMJTL7K1T-KLt4zNJCnOuSEMnrn-FA>
    <xmx:nSwAYOi93DrKp091KW5etR739FyWxZeNhn1Z8WLLZ4UmCa4V7o-VOg>
    <xmx:nSwAYCAQv-Dhphsq7bE_6PpDKuFkNbz17wnzzT4v1dX6XvYq01_Ryg>
    <xmx:nSwAYF_avUI4k-JIKVMwLENnAQHmykHW9_N-Xe5xn7pAeaJmzcnf-w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 41B4B1080057;
        Thu, 14 Jan 2021 06:35:57 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/19] ARM: dts: sun8i: nanopi-r1: Fix GPIO regulator state array
Date:   Thu, 14 Jan 2021 12:35:30 +0100
Message-Id: <20210114113538.1233933-11-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Even though it translates to the same thing down to the binary level, we
should have an array of 2 number cells to describe each voltage state,
which in turns create a validation warning.

Let's fix this.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-h3-nanopi-r1.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-r1.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-r1.dts
index 204a39f93f4e..26e2e6172e0d 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-r1.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-r1.dts
@@ -39,8 +39,8 @@ reg_vdd_cpux: gpio-regulator {
 		regulator-ramp-delay = <50>;
 		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0x0>,
+			 <1300000 0x1>;
 	};
 
 	wifi_pwrseq: wifi_pwrseq {
-- 
2.29.2

