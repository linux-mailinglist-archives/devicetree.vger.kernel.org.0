Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 863537655C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:12:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726203AbfGZMM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:12:27 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:36184 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbfGZMM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:12:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=Skzanq6VQpDThygBClqVy35KX/v/j8u+eJd8QBN7EtI=; b=g2nKAPJz/rUe
        NbmXRiSttKEORjAqttEhrCUVXc34mefcepBxwvnjh6wWcsN7X8vS+1ecmVqG+Rv28qHTCYIHXhke/
        MsATFMP1URCY7Fgr0DPcrnEnpxXMw3gvDDFlus+lffwH66/Q9THj39j/tb/BJK1JggIgsy45Gq/KJ
        FJPCg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hqz58-0001Zm-4O; Fri, 26 Jul 2019 12:12:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 9EDDC2742B63; Fri, 26 Jul 2019 13:12:17 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc:     alsa-devel@alsa-project.org, "Cc:"@sirena.org.uk,
        "Cc:"@sirena.org.uk, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Applied "ASoC: sunxi: fix a sound binding broken reference" to the asoc tree
In-Reply-To: <9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20190726121217.9EDDC2742B63@ypsilon.sirena.org.uk>
Date:   Fri, 26 Jul 2019 13:12:17 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   ASoC: sunxi: fix a sound binding broken reference

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From d8481155a3219ef427c6384022931758fbbe8ebe Mon Sep 17 00:00:00 2001
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Fri, 26 Jul 2019 08:47:27 -0300
Subject: [PATCH] ASoC: sunxi: fix a sound binding broken reference

Address this rename:
	Documentation/devicetree/bindings/sound/{sun4i-i2s.txt -> allwinner,sun4i-a10-i2s.yaml}

Fixes: 0a0ca8e94ca3 ("dt-bindings: sound: Convert Allwinner I2S binding to YAML")
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Link: https://lore.kernel.org/r/9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
index 2ca3d138528e..7ecf6bd60d27 100644
--- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
+++ b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
@@ -4,7 +4,7 @@ Allwinner SUN8I audio codec
 On Sun8i-A33 SoCs, the audio is separated in different parts:
 	  - A DAI driver. It uses the "sun4i-i2s" driver which is
 	  documented here:
-	  Documentation/devicetree/bindings/sound/sun4i-i2s.txt
+	  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
 	  - An analog part of the codec which is handled as PRCM registers.
 	  See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
 	  - An digital part of the codec which is documented in this current
-- 
2.20.1

