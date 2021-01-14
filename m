Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21F212F6059
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:40:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729115AbhANLiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:15 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:53747 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726008AbhANLhl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:41 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 9674C1620;
        Thu, 14 Jan 2021 06:35:56 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=dMPMoJZhmxu6x
        ya+Fwt7JgnK8rPeglk7K8KMxUKrtsA=; b=WYYZTxTXIvYkLFQOw8wDUQsEtBG2w
        i+GqBJqhmw3Bw4zNL/ktNNZmzxUoc/mtWC8dBhmhXp9BEvAu7X9A521pIqV3m7Ze
        5boG1tqldaG4EDgkz2F6Bd505zxS8Ukp1aTiv3bI29Az8FDurNgr9PQSsfYLsuP/
        tn5I8r8wTYDu1AWnyCR14zG7IKYWEH7Pr4sRxTXYhrFpVWN3zqEvhhv1MPxUdavX
        0bu7Oc2IkuL/exUVzVN8Fav937GlJEaIO5LHZBgK+RURVSlWGxN/ajXhx1bLQqpo
        qNCmRraaiyjMBee6WTYQsz5cBvmRMjbLLby2z5r2vpYpCr0CEsgEyP/Vg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=dMPMoJZhmxu6xya+Fwt7JgnK8rPeglk7K8KMxUKrtsA=; b=lejmfl3a
        1qI2pYfj7xMPxQGrDOzD0/LH6/BFzyP9ytkHhxQwmtrsisyz3LjVlh1eVE3O6Mj3
        jlJ/zTS7OAphbYa7u+FPdn/Q40djrMcMsU/xUXa+NFgL1jkMxMHakbDRoR+vWc9/
        MHc5JbWNEesln1SUYez3sfUq0ph5auWk+0vGTQRG2DXwVQn2YABOLqXifPHR42W2
        8f/AakiPACv2dPFc8BzqxX1WNSFuw3e/ed4AKGogKLXMwPw4Hm7YoSdFRBF2cmKa
        hWuwo8f4t5vc6HmzpxNuE7fDAwCbngN+Gswe5B8Oq+7qqM9sGulLuAeYgpaBRj9Z
        vcnaSy7aU16dtg==
X-ME-Sender: <xms:nCwAYBvP85mwDpX-Yq_fAxp3C3sw4RivjcrK-Yi4_3_ZlY1b3GwJng>
    <xme:nCwAYKeMuzfgdww2K-x0lyjj0Dyu06AsqKsAvPKDQnWM92-iTb8SJqchypYGkuqcR
    6b_skzO88IbEPBnCo0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nCwAYExFja57_2ekORsbZXsm_ECgRQ7c21APJgx74LmnwEabUKQb7Q>
    <xmx:nCwAYIM1XE0BzrOovlgwtOIlkmDDu043ck5JFcNCPXeBfksdHV6RRQ>
    <xmx:nCwAYB8_XvNuzw6nvnTzHkX4w0kytCKcgb2yZX0Xumz9ZOVSmF6NHw>
    <xmx:nCwAYNZy-tGe4sTws_F0J_z5UWRFML37_m1BDYioOPExAGCiaLglBw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id CAF45108005F;
        Thu, 14 Jan 2021 06:35:55 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/19] ARM: dts: sun6i: primo81: Remove useless io-channel-cells
Date:   Thu, 14 Jan 2021 12:35:29 +0100
Message-Id: <20210114113538.1233933-10-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The mma8452 binding doesn't expect an io-channel-cells property, let's
remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun6i-a31s-primo81.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun6i-a31s-primo81.dts b/arch/arm/boot/dts/sun6i-a31s-primo81.dts
index bc3170a0b8b5..0e1ee5ff2c2b 100644
--- a/arch/arm/boot/dts/sun6i-a31s-primo81.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-primo81.dts
@@ -115,7 +115,6 @@ accelerometer@1c {
 		reg = <0x1c>;
 		interrupt-parent = <&pio>;
 		interrupts = <0 9 IRQ_TYPE_LEVEL_HIGH>; /* PA9 */
-		#io-channel-cells = <1>;
 	};
 };
 
-- 
2.29.2

