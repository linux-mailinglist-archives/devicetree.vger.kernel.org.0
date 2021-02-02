Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C80830C702
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 18:09:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237133AbhBBRHY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 12:07:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237183AbhBBRFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 12:05:05 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A83C06174A
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 09:04:25 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DVWP86jGZzQlYn;
        Tue,  2 Feb 2021 18:03:56 +0100 (CET)
Authentication-Results: gerste.heinlein-support.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1612285434;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=6D5/NNgCOTVetoQPE6SDovy8rpNB2QtHZU3Hsq8VDHE=;
        b=hh4BVGXRp1CQ4OFi425hR6Hxys4090Xi41kbyTUKAI86yI0c0bvdLCd+m681l5dRkRNjiQ
        rI1Ddo+QuFnpgVQ8FFzblnEqE85Sztx1T1hjrVKWQgVzAwxGnIhwy2dkl5qcmc83a1Rn38
        bIpnDHQ/6Eiqi35BzB5Kv0W2+0fIJ4mtGaClSJuPg14ly2jfjhriaMTF2UHardHlTRc6a4
        wYuLsyB92fVHaHOImyObYhxxHGNtWjv9cQ3fo2yNsaJi/3894wRoMKch68+20V7HHcgM/h
        GS1TwFdToAncYwSwI9wSbkFEE0zCqMZL5wZg9WnKC1FSm0bMXL009voeJne/OQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :message-id:date:date:subject:subject:from:from:received; s=
        mail20150812; t=1612285431; bh=e7qcr6OCcuyOQBdhBmyous0iSl1Vj0YCN
        GzJUD20OpQ=; b=JjK9wtgg3aAdrgZAcqZCAE2pvOSENcYRPTDeJ3MpI+EXOvQHr
        q5jCkRZRZphjbsv2lekf1zq+Opq/ojX2kaJvkL0IyDYNhM3Ql/9JH32YW74Ne8tv
        7/OKWoOTrG/Knn32+MWYDRXwu/rfj3BOe8qcmCEiuJE/1h4TOChSns4VA/BmT6T2
        2fa5eTxdUuhQ4uFM+Bu6oqMGWTBZmM32XYZU2xEXx/aSmRWzYrsLc0bpvdcxQ39R
        hZvXcVsWZCz4DvvHfDtSZuQ2xU14rPBSmO3iOUucxLx6+srIbet8g0xNYN+kS47n
        h1mUYDtNkK7dzvj3GMTzGJpIr0w0J4JqMnD7w==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173]) (amavisd-new, port 10030)
        with ESMTP id 0Xk8E5yPk1RJ; Tue,  2 Feb 2021 18:03:51 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
Date:   Tue,  2 Feb 2021 18:03:28 +0100
Message-Id: <20210202170328.79929-1-alexander.stein@mailbox.org>
In-Reply-To: <20210127230852.66686-1-alexander.stein@mailbox.org>
References: <20210127230852.66686-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ***
X-Rspamd-Score: 3.19 / 15.00 / 15.00
X-Rspamd-Queue-Id: 82D7C17B5
X-Rspamd-UID: 94bdd6
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
Just for the records, I only tested this on my ODROID-N2 (G12 based) board.

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 ++++++
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 9c90d562ada1..15525f3aa4a6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -17,6 +17,12 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		mmc0 = &sd_emmc_b;
+		mmc1 = &sd_emmc_c;
+		mmc2 = &sd_emmc_a;
+	};
+
 	chosen {
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 726b91d3a905..769d7e8fda13 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -21,6 +21,12 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		mmc0 = &sd_emmc_b;
+		mmc1 = &sd_emmc_c;
+		mmc2 = &sd_emmc_a;
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
-- 
2.30.0

