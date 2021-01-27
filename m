Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C27030679B
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 00:17:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234031AbhA0XMr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 18:12:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234936AbhA0XKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 18:10:34 -0500
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18DBEC061573
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 15:09:13 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4DQznN0N9JzQlSZ;
        Thu, 28 Jan 2021 00:09:12 +0100 (CET)
Authentication-Results: spamfilter01.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1611788949;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=iakjquNK7HYnd1DCscrW5kS7Mx8GAPfD6iE+TUqUVtM=;
        b=UBLsQ+7b1p/H9RCmdPdYfpf5OjRuh+dxFplCIllzkUeTojVvIxc05FbJlNp+pUhlvbrh+E
        pU2xPJRKKdsktEv5HZ+3Yn/lmP9DDKT+l7BlFwzqeRGDz1UGApivq8F+sXU1YU7d+ao2R/
        N1unGUWthhBd6oqqsMd59Yulx5NU+HtajEfQOe3ww70hWL1cMOqdDh+q+o4NyGy1cGUyaD
        8/1uplyKUk2Amr6a4drrf/eYOqfFDjBpssYCinACzu8s9A01ILSw5SOvjgrDSlQx+ZgZ1K
        psZlcqTn46h03B6hiZEvwzEnEEG6iHtZKs1oX/grO7GLkeHq5BapYbH9mOoz0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:message-id:date:date
        :subject:subject:from:from:received; s=mail20150812; t=
        1611788948; bh=ABkA+fHZ9253J6mSTrSP8NlLDK9jdpdiq3bS1bDGFpU=; b=Q
        OlPCaew9GZVmXN7g38CfE4/4JyuMr6MyMW6wajUU5yD1ChdiL0MwFCUFBr8dHuKA
        h7+ohK2eEDEtaa5kfkY83JKf7rn2j9pzbe7V5bFhyekRnYDEkhljjw3OYgA9y/4a
        onssZic8BfH4veACQe0nqCx93c7lJlzzEPToYMpxFS4mtWISNIlgMJgsc+XYqQSV
        mviuIAwXummPFx6FjODXo6mK8ubsLXSCxXtl5jE7TAbsnVwbJOSBSp7KgYJjJEPa
        anm6RafnJlWORdjkZj6DSIhe0ZMaOic0QjKVN5QdVm0WR4hadhYzvH8vGbNxUeNQ
        92hT+EBXw7Yl4kdhiXU1A==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
        by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de [80.241.56.115]) (amavisd-new, port 10030)
        with ESMTP id O2P3hU2O_whI; Thu, 28 Jan 2021 00:09:08 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Assign a fixed index to mmc devices
Date:   Thu, 28 Jan 2021 00:08:52 +0100
Message-Id: <20210127230852.66686-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: **
X-Rspamd-Score: 2.93 / 15.00 / 15.00
X-Rspamd-Queue-Id: BFE2D1856
X-Rspamd-UID: 380767
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently introduced async probe on mmc devices can shuffle block IDs.
Pin them to fixed values to ease booting in environments where UUIDs
are not practical. Use newly introduced aliases for mmcblk devices from [1].
[1]
https://patchwork.kernel.org/patch/11747669/

Commit message taken from commit 0011c6d18277 ("arm64: dts: rockchip: Assign a fixed index to mmc devices on rk3399 boards.")

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
I was wondering which order I should use. Depending in your booting
medium (SD card or eMMC) you 'want' one or the other as mmc0.
In the end I ordered them according to the names.

 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 050862cd0996..2faa4da917c1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -13,6 +13,8 @@ / {
 	aliases {
 		serial0 = &uart_AO;
 		ethernet0 = &ethmac;
+		mmc0 = &sd_emmc_b;
+		mmc1 = &sd_emmc_c;
 	};
 
 	dioo2133: audio-amplifier-0 {
-- 
2.30.0

