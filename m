Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D3EB3DF49C
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 20:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728828AbfJUSAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 14:00:51 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:38830 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728196AbfJUSAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 14:00:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=wlDa9VryuUJQhYEG0o9q9nJ687FaGpsHWqMMgoNvQE4=; b=YdI6okyC/vHf
        PpjIeDIOJte8zpvAEl3MdQ+5qD+xJIUG8lfYtGZ63vesMtqzCvi/o9Ekgk6B/gU9DeZlTv/HB+H5g
        zt9IrADpM1pg+wPNvh402ILmzyfoyGVrIkm1q3GxTAIxc8hyTnjXiQAgebXE5G0q0JnMgEqY8yjTc
        47b6g=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iMbz4-0004bM-24; Mon, 21 Oct 2019 18:00:46 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 7E7892743267; Mon, 21 Oct 2019 19:00:45 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     alsa-devel@alsa-project.org, bleung@google.com, broonie@kernel.org,
        cychiang@google.com, devicetree@vger.kernel.org, dgreid@google.com,
        drinkcat@google.com, enric.balletbo@collabora.com,
        gwendal@google.com, Mark Brown <broonie@kernel.org>,
        robh+dt@kernel.org, Rob Herring <robh@kernel.org>,
        tzungbi@google.com
Subject: Applied "ASoC: dt-bindings: mt8183: add ec-codec" to the asoc tree
In-Reply-To: <20191019143504.3.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
X-Patchwork-Hint: ignore
Message-Id: <20191021180045.7E7892743267@ypsilon.sirena.org.uk>
Date:   Mon, 21 Oct 2019 19:00:45 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   ASoC: dt-bindings: mt8183: add ec-codec

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

From 0cce736d389cbeae6a7d0a72bafb4408d21eb44a Mon Sep 17 00:00:00 2001
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Sat, 19 Oct 2019 15:02:53 +0800
Subject: [PATCH] ASoC: dt-bindings: mt8183: add ec-codec

Add an optional property "ec-codec".  If specified, mt8183 could use the
"wake on voice" feature offered by EC codec.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
Link: https://lore.kernel.org/r/20191019143504.3.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
index 17ff3892f439..decaa013a07e 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
@@ -6,12 +6,15 @@ Required properties:
 
 Optional properties:
 - mediatek,headset-codec: the phandles of ts3a227 codecs
+- mediatek,ec-codec: the phandle of EC codecs.
+                     See google,cros-ec-codec.txt for more details.
 
 Example:
 
 	sound {
 		compatible = "mediatek,mt8183_mt6358_ts3a227_max98357";
 		mediatek,headset-codec = <&ts3a227>;
+		mediatek,ec-codec = <&ec_codec>;
 		mediatek,platform = <&afe>;
 	};
 
-- 
2.20.1

