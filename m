Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13966C332A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 13:44:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387464AbfJALmz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 07:42:55 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:40436 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387441AbfJALk4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 07:40:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=b0stKEdyVX3aTCnyP8Y+NZxscAvzUSD7HEvqZHp/HS4=; b=fkXHGQmKYYS0
        2D5KiYPcPuDMEW20wVRIGLIWzUHZFbSGcxcI9q2vYBwGZh3iRjfknV+1RyWJiOo5iocN5wwGr2pIY
        X41LhE1N+peTDYR1l5l2f+nNFcZCdyPCyBTbQWFNt1c85NuMmyXJh3HrsbL49y/CRKJruFXZLu1Ke
        uYWP4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iFGWR-0004Uy-Mt; Tue, 01 Oct 2019 11:40:51 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 293F627429C0; Tue,  1 Oct 2019 12:40:51 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        cychiang@google.com, devicetree@vger.kernel.org, dgreid@google.com,
        Mark Brown <broonie@kernel.org>, robh+dt@kernel.org,
        tzungbi@google.com
Subject: Applied "ASoC: dt-bindings: mt8183: add missing update" to the asoc tree
In-Reply-To: <20190920112320.166052-1-tzungbi@google.com>
X-Patchwork-Hint: ignore
Message-Id: <20191001114051.293F627429C0@ypsilon.sirena.org.uk>
Date:   Tue,  1 Oct 2019 12:40:51 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   ASoC: dt-bindings: mt8183: add missing update

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

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

From 7cf2804775f8a388411624b3e768e55d08711e9d Mon Sep 17 00:00:00 2001
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 20 Sep 2019 19:23:20 +0800
Subject: [PATCH] ASoC: dt-bindings: mt8183: add missing update

Headset codec is optional.  Add missing update to DT binding document.

Fixes: a962a809e5e4 ("ASoC: mediatek: mt8183: make headset codec optional")
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
Link: https://lore.kernel.org/r/20190920112320.166052-1-tzungbi@google.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
index d6d5207fa996..17ff3892f439 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
@@ -2,9 +2,11 @@ MT8183 with MT6358, TS3A227 and MAX98357 CODECS
 
 Required properties:
 - compatible : "mediatek,mt8183_mt6358_ts3a227_max98357"
-- mediatek,headset-codec: the phandles of ts3a227 codecs
 - mediatek,platform: the phandle of MT8183 ASoC platform
 
+Optional properties:
+- mediatek,headset-codec: the phandles of ts3a227 codecs
+
 Example:
 
 	sound {
-- 
2.20.1

