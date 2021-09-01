Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FDF63FD69C
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243578AbhIAJVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:21:12 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:33947 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243573AbhIAJVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:21:11 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 0676B5C0216;
        Wed,  1 Sep 2021 05:20:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:20:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=8Ox9eWSBHqSXe
        wrht1QFv+ggg+cV0oyGkrGJowqjc2I=; b=zXIxnVaQcLeuHgH7vAej187l7Ydo1
        RAxMIiON43yAzes49X/ItB7XzSOeGQ0frlj6KJBHm0OK/CAbnlcvK4G7ed8Nbgis
        9rbNdd6vFAPud1JYp/xtL5bJqrxF6HnEHM9RdQArFI7l2rR9xQuABKw1lnlzHW7I
        1RLFSjAgd7d71vnsb7CMh9vXv+P5rgwt7Kj70FTOl3g3peSrr3HrWUJp/3kVLntm
        VZpcrp/1Nsk4wjOW6Y0PiBLRWajIVC3/ITIn3nNWMt0ntEIUHPViBZy2M7TGjEZk
        M+fVaJRlhl/hiibZ6OwthaPgglnmGP9oK2IjOcKgAXZzJNZ7jNFpUE7CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=8Ox9eWSBHqSXewrht1QFv+ggg+cV0oyGkrGJowqjc2I=; b=Km0gdcpB
        HdrwjtUfiy5DuJDKNeeMK9dpsAz2r8HvZdsX3j4Fdqj5dMEfyn53WDvXxcyQQF5N
        t4aqXMAt9hErwiljCSavPanBtUSwG36BzWeysDOK3Wp9SWSCK2Y2VpoUmUaYyqDM
        O6Csfb6CEAlQCMdJ0IIV/60leevFtv9EWo6fFxWp2hs0vcllj9k69TG6m7PHSW8Y
        zRyPMtMGzE2dJ9iDZJ5zxUC/sNlKY9KZim3r27Dgs89604v9gkEoTG4Cyp2cpSNN
        cFQfF1AFeVb3ye8ecKQoalY4POM1Ct8nF6/Czk5FqV2+yosa686LBLHkn36gsWlT
        VIZfMHWcxlaYuA==
X-ME-Sender: <xms:zkUvYScQqBJ8vGyIo6huuUzSa7xTWBdPGFqQa62K5jrUntlSe6xX7g>
    <xme:zkUvYcMG_O0ghfoNqyAVk3h4HXEiO-So3Arjv8JApG4M1JGyjlbm1OkucnLg0PHfT
    ENwKijK2XIwGG391xE>
X-ME-Received: <xmr:zkUvYThrhg9jRAcJwF55FnOGOtVVGPyisTS-aN4uGLWSPzlOaoCEmZOigVkmX2AQJ7PlpRLLkhFU0hJ9WM70DS1lJP1jvA4PXG9K>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:zkUvYf9iEw1mgxRD34r03rUKrFkYbdnmcyIx8QQiCavDjB00rrpRtw>
    <xmx:zkUvYesEip3Q68XxbuHP7m7e9268LDSLLVmRbufQJtbSIiwI1NrKQg>
    <xmx:zkUvYWHWuecTuli2gpvilV7SQ5SmfQc2E3mTV5yi84pd0egQTdD_4Q>
    <xmx:z0UvYSjN5amMCBsqxekSgFcUfTlrPQ-wrnAGXHK_A21RIXhPpeh6ag>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:20:14 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 45/52] ARM: dts: tbs711: Fix touchscreen compatible
Date:   Wed,  1 Sep 2021 11:18:45 +0200
Message-Id: <20210901091852.479202-46-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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

