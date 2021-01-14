Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55B432F6055
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728358AbhANLiN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:38:13 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:46219 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726919AbhANLhl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:37:41 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id A278A1623;
        Thu, 14 Jan 2021 06:36:02 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:36:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=t7Us/A5dLDI86
        ie2bOdLxUiXRDg2x/q90PdT3LoXUc4=; b=jl7YXrw5XlfAZAbkBcoz5Jgx97wi9
        QIbGbFuZ7LB4YMXqzTqxcVjhepgPklNjFJJhvCwKAV0fMBOWogdjDEeXO0rtiOiG
        l1h++ywOYqh6wxPvWVvl5EYf9yB0WxAZaNJ07zYZbC/eZHZvd+sP6VBBW0Mv9uvO
        NVFX8mfFay+fZn8N5A3dsZmtyI6zYKwtfBmO3JQSNsPt0+yHu0hDvKgehaHIpImu
        qbhPhhZbEWHUfCqIyJWqfdpr2doTUhVPVuMrEQ5cAo3uHCqLsLhRe9GlArJlJ/ai
        aIgm1dOdE/sonUQFQ7E/edSO2MloJIcnumFnJPrSYPubRGM8H16iWSHeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=t7Us/A5dLDI86ie2bOdLxUiXRDg2x/q90PdT3LoXUc4=; b=iNRMf5fp
        JABmPmcxX4IbU4S92ketthJyKBUk47vbcIW51XlgkZk+MbaeccvXFo4x+trfCevi
        G2oe0QMIZm1CVAQYu09yPTRvWe1uNk1sbG4kKgfdY4guSiRbW9FXVETn1A9HwE2c
        qrqFH6n7L6cwXKQ8/SFV5ynWaDvLynJ0TE54dSOFRBQe0wOxDkzk22v6pW5DVTxV
        GwRecnzBOaCs+cnerkxPOG7WvX61JdNVs9PTBQ6KFot4nzkKdEYuPFH7E0/BSQgU
        LoEFVYBGY9f/cAUQz7pRNfrVmn48jzNov++su2pWCR7aktR0LxOYc4szl/QRH4aM
        96b+ugTqKqc5aw==
X-ME-Sender: <xms:oiwAYFhpW594cGi6kfuV6wI117aJmWwJepQ7ADqjWlFsrk5A8nVdRA>
    <xme:oiwAYKAGp69yrzdqp7OdXWFQLXL7uoQptqw-RktZyBeYCoBOBMd3rZ_2PtsoTcMRq
    q5ms6b3updey_i_JGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oiwAYFHq8awRkl-Ll73UXYXOmRcziXfFd8MUDbEQQGysJfWwrR6qLA>
    <xmx:oiwAYKT2FIEYM67AjlCXI3CmcYNlGXm4KJ1QTckVXz_Wf_sST2Lqwg>
    <xmx:oiwAYCwg-J6GwdMtzFoqQCsGG9szemYKPDCiUNILj9UGsfhhgUGPUQ>
    <xmx:oiwAYMsYanoID5MHuWOkhhkTY6ca452obbiyAMztUsyWfmzBTftHyw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id B7E591080059;
        Thu, 14 Jan 2021 06:36:01 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 14/19] ARM: dts: sun8i-a83t: Remove empty CSI port
Date:   Thu, 14 Jan 2021 12:35:33 +0100
Message-Id: <20210114113538.1233933-14-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The empty CSI port triggers a dt-validate warning. Let's align with the
other DTSI and remove it entirely, expecting the DTS to fill it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index d42b6a0d1b53..8cb3f2007853 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -1061,9 +1061,6 @@ csi: camera@1cb0000 {
 			clock-names = "bus", "mod", "ram";
 			resets = <&ccu RST_BUS_CSI>;
 			status = "disabled";
-
-			csi_in: port {
-			};
 		};
 
 		hdmi: hdmi@1ee0000 {
-- 
2.29.2

