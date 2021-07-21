Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACDA53D10C3
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239144AbhGUNZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:25:24 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:37651 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239096AbhGUNZX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:25:23 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 461DF5C0200;
        Wed, 21 Jul 2021 10:06:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 21 Jul 2021 10:06:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=8Ox9eWSBHqSXe
        wrht1QFv+ggg+cV0oyGkrGJowqjc2I=; b=TzHZvx7k6AzjaZmf/2iigc+zTg6bU
        EXEjusbK2U37c5icB1/UcAfaQ+7JQWOgjmnwRWSNv72NuUWOkFfilxbK4jZwvy8L
        x1fFquoCCIueMlLY0mtqrFbex4wAHaNgSE4NU9gPMl9yB+gjo0407tH1JwqlZZS8
        FDuGGs8ZaiysK0soVW3jgElq01BKKploVPvhVkZ/HJ1eQR2L6U2LXze5N8a0CIPQ
        z/AD3i19evZGTmgAh5D7AxXPMzd9xD+QVF415K49MDXcNynxN8ziUxEfBAwRERg9
        OJNeN9TP1jwFJ+2zBoIrQbUwNeMwRl3Z4hvn5IVI73PsiaR2QzBFgoz2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=8Ox9eWSBHqSXewrht1QFv+ggg+cV0oyGkrGJowqjc2I=; b=gfuKZg1M
        Tk9hBjEuj3teifl0OCj6YTcJJVLt130mqPgh/bMlXEHnLOMLKs5Wa3cC4LZV9rfc
        7v7Ocah55nH/Rq9eNtplHQShMgq4R6yMeUybyyC3oq27+BBYSLSCcquw7v+E/ZXM
        SZ8bnDaZICA5geC8ypbfubKvTXPNKzBDymM6bTmJ+EzrZUTNikzBIdGIdKx+Bdwp
        LkAMX81sKKRzKAvm/RYsscqWNgqC+ttl1Njwzg15uAzdd4v+sojG4ZfZGuRVsu+J
        UTeWgnjm6gI8+dVV9m81vMLx070KAyi/mXbOPItg+r/rm7Am/5nOwlhuQU6xwEFV
        fIluEW/OvBhUlA==
X-ME-Sender: <xms:yCn4YJfn8iVxmKgLA0wv9jb_N9bmXfAJwXMTtC0n9Xb4ha6DdlJw8Q>
    <xme:yCn4YHNhqB09UFDjDhl3DXLBAef3ioeX8NqN3poaoTcYbDs3qcBTof478QL5-sgOB
    opEOuvs_B_QvpfSP38>
X-ME-Received: <xmr:yCn4YCgoo2_wLHrCO-8BZCYSNn38-M3zJxLwCkMFIOran3_s9L4eFYCnn2eDz1JR7yvQjOZdog-D3vsX_MInUw02uaPam0zHiCkT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:yCn4YC91Txj1WAf3yiKnx0InY-NfXigauSlgI9W3DivebfySwzIPhA>
    <xmx:yCn4YFvjtMKHgxRwiK3irGe7KzEJjai9sliVpGAXKGYIYPgKjWSq7g>
    <xmx:yCn4YBEsE27hNLmDQPWUvx07DnvtLbLeGoQKf-fLdSl8pDAU-H_bzA>
    <xmx:yCn4YJhgVcRhW4VbQi3GT6GFsha-rmclBOVaQt2nK_WbKHNthEojwA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:59 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 45/54] ARM: dts: tbs711: Fix touchscreen compatible
Date:   Wed, 21 Jul 2021 16:04:15 +0200
Message-Id: <20210721140424.725744-46-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The edt,edt-ft5x06 compatible has never been a valid compatible
according to the binding. Let's change for one that is.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index 7fe2a584ddf9..a7d4ca308990 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -169,7 +169,7 @@ &i2c0 {
 	status = "okay";
 
 	touchscreen@38 {
-		compatible = "edt,edt-ft5x06";
+		compatible = "edt,edt-ft5206";
 		reg = <0x38>;
 		interrupt-parent = <&r_pio>;
 		interrupts = <0 7 IRQ_TYPE_EDGE_FALLING>; /* PL7 */
-- 
2.31.1

