Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA0030E345
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 20:31:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbhBCTaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 14:30:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbhBCT3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 14:29:49 -0500
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14991C06178A
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 11:29:09 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4DWBYg3rdZzQlLp;
        Wed,  3 Feb 2021 20:28:39 +0100 (CET)
Authentication-Results: spamfilter05.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1612380517;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=rTEP42pAAtTlJkhram5r80Haq8CEs/92apXLpm2eAuE=;
        b=WQAyxt8t2Q+yX/eeTeEeHLe5979jKb9MxKYDbJILI/9oS2tGmldg0sjxYVcLS2A3xDEm/N
        1WfNKxGD4ILEOt+JayNF7vGr6yUtSyklWHdYKvb/LRU5zJIOKh95d2BVjfuCVsKK8iROOi
        SnV+/B9Vd8+qST7LrsX8iy+MDDoZaNqo8uK6gARMQ0n0cHnjzZyd4Vj4sXo2KQJK3+6x6D
        OliDpNjb2ntlI/KgafgGqgL2p/DIVpiHTWoa3yFUPbF4n0Y0RBaswzpagxEMvStJ0+IpU/
        mfGmDwbktFDbV6x8oc3fVykZU5J+eIfaIxCbooM6i5uLSrRpqMTQhoffK1MBAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :message-id:date:date:subject:subject:from:from:received; s=
        mail20150812; t=1612380513; bh=k/KQpwU5l6X07qudDANfk+peT0DOl4MN6
        cwNNLjnrFo=; b=s8vMDdYxAzImsA2ULMAF7WUHvWAqnxTn+t2fVaKQLFZRpl74i
        hUYAVzyPUh3XyKcswqa4kEkmKK3Qrcp8UWOLhaF9Y27lMilGsFxe9qx88eepvsrJ
        Zn2aunak4vgECDvAdkwZ0s7Kr9tg69CZ0uvIrPst+cpl3jSjp2FvrFVFmHa1vjkL
        aME2lOJ4BrtaGefohSEt/cw7wpWy9TOOY1/Cu0Idw4H9n3EdQKCRaDn2EnFypWdr
        8oqmx63PdCU/e15VNAzogg6k/nJ1YQN2uBxoZrveKjBckyINvO21N052/YNYu9ou
        e7Am64BeLPwjbKLXh0WdGXFKrQ7pqj2cR4kwA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
        with ESMTP id SrjyZodiK7AA; Wed,  3 Feb 2021 20:28:33 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
Date:   Wed,  3 Feb 2021 20:28:24 +0100
Message-Id: <20210203192824.854491-1-alexander.stein@mailbox.org>
In-Reply-To: <20210127230852.66686-1-alexander.stein@mailbox.org>
References: <20210127230852.66686-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: **
X-Rspamd-Score: 2.66 / 15.00 / 15.00
X-Rspamd-Queue-Id: 3FA7617EE
X-Rspamd-UID: 8e3ea0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently introduced async probe on mmc devices can shuffle block IDs.
Pin them to fixed values to ease booting in environments where UUIDs
are not practical. Use newly introduced aliases for mmcblk devices from [1].
[1]
https://patchwork.kernel.org/patch/11747669/

Commit message taken from commit 0011c6d18277 ("arm64: dts: rockchip: Assign a fixed index to mmc devices on rk3399 boards.")

The unconventional order (B, C, A) is due to the fact that sd_emmc_a is
(according to the comments) only used for SDIO.

AFAICS all boards either have both sd_emmc_b and sd_emmc_c or only one of
them enabled. So the alias order should match the previous non-async order
for all of them.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Changes in v3:
* Added comment on intented ordering

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 ++++++
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 9c90d562ada1..f9a42f45ac52 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -17,6 +17,12 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		mmc0 = &sd_emmc_b; /* SD card */
+		mmc1 = &sd_emmc_c; /* eMMC */
+		mmc2 = &sd_emmc_a; /* SDIO */
+	};
+
 	chosen {
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 726b91d3a905..59d11f65c7b3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -21,6 +21,12 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		mmc0 = &sd_emmc_b; /* SD card */
+		mmc1 = &sd_emmc_c; /* eMMC */
+		mmc2 = &sd_emmc_a; /* SDIO */
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
-- 
2.30.0

