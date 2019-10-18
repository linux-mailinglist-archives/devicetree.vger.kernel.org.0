Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F33A9DCD84
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 20:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405308AbfJRSIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Oct 2019 14:08:43 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:44784 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2505693AbfJRSHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Oct 2019 14:07:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=TjduQZHmMFPqnaiyU+fIix0mGSXwe95rJLTjDFZctHU=; b=N8rKqzZeS83w
        sdLJwTTUD9KWKrAY2mi0w9ua9dugUBdtJmzvvbvW87Ko+7b/kqcTID47oet/014rfu+PWZs4lSCoE
        WIdzlvrtrm2TduqQW5v6bbFg5zJLu5DFcDcN7fS39FXUrtrC/pa1X3hgfBEsPMBGR9lLK0CXWKvdM
        M2gfA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iLWeS-0004FH-26; Fri, 18 Oct 2019 18:07:00 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 8289B2743273; Fri, 18 Oct 2019 19:06:59 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     alsa-devel@alsa-project.org, bleung@google.com, broonie@kernel.org,
        cychiang@google.com, devicetree@vger.kernel.org, dgreid@google.com,
        drinkcat@google.com, enric.balletbo@collabora.com,
        gwendal@google.com, Mark Brown <broonie@kernel.org>,
        robh+dt@kernel.org, tzungbi@google.com
Subject: Applied "platform/chrome: cros_ec: remove unused EC feature" to the asoc tree
In-Reply-To: <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
X-Patchwork-Hint: ignore
Message-Id: <20191018180659.8289B2743273@ypsilon.sirena.org.uk>
Date:   Fri, 18 Oct 2019 19:06:59 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   platform/chrome: cros_ec: remove unused EC feature

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

From 036beb0e85f8772acb635c30df573876103b0c21 Mon Sep 17 00:00:00 2001
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Mon, 14 Oct 2019 18:20:13 +0800
Subject: [PATCH] platform/chrome: cros_ec: remove unused EC feature

Remove unused EC_FEATURE_AUDIO_CODEC.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
Acked-By: Benson Leung <bleung@chromium.org>
Link: https://lore.kernel.org/r/20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 include/linux/platform_data/cros_ec_commands.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 98415686cbfa..43b8f7dae4cc 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -1277,8 +1277,6 @@ enum ec_feature_code {
 	 * MOTIONSENSE_CMD_TABLET_MODE_LID_ANGLE.
 	 */
 	EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS = 37,
-	/* EC supports audio codec. */
-	EC_FEATURE_AUDIO_CODEC = 38,
 	/* The MCU is a System Companion Processor (SCP). */
 	EC_FEATURE_SCP = 39,
 	/* The MCU is an Integrated Sensor Hub */
-- 
2.20.1

