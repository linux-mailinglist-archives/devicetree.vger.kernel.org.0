Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27C5C305301
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 07:16:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233079AbhA0GPC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 01:15:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232982AbhA0Fsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 00:48:32 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 889EFC061794
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 21:46:27 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id u25so1014205lfc.2
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 21:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sTec3OFYgU1gipJcjL7t7UrQpM+zBw08DzvcZXrxR6o=;
        b=RIdszyPu4MRv5fowMAU0TpYCfFjVXwCW4uhVKrroOD6fWgCf6+BhPLd0Kv/sIrI3Vz
         o13BJ2x9c+A9TVW6aBzie2QR6QFO/ZJw+JGG/2XvCy+ZGpZECRx/FYsUXxvgHBH+Mbh6
         Ms/NP2RA9Oay8nD6bnW76oeo1biL14hdF8SeFvhciELycucp3T0h5MoTTnS/igyLraci
         oG3OmsXyzj8VOgVK41PjvRihWInaDts2BX6HyilgzKLf3nkgqN1o081K9uGNvMFr+T65
         /5sxOSBg5wRGlzOuKBm9f/5beKAxCtJgXVBNCYdA3LK7PLWh1MTLsrA8Qg8enQt1JgBl
         QtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sTec3OFYgU1gipJcjL7t7UrQpM+zBw08DzvcZXrxR6o=;
        b=es7IEva51gd7mgoGubcGET2Bp6CgQVsr/tqB3cJiyPASQf7sZMjmN6xL7q5uD/53K4
         R4LDOj8B9+ig6rrTYWD5iZ+y+2K03qKNgkkIV3cEzFvcxSQBP3umQadHptV0WFJ141vA
         /ehEXR+JNgDrCnZCITD6sHuHMPHKoRDU8xN2yF+s4vwWafEygX0MkU6upzfulsQW9d8q
         ixUyesJWHl0Qtz54FI4ZLFY8+KiYipKlMhEVxtCL/YYH+cuGbpNynZZh0FLbJdP0J/YP
         BvvMEGMGxBtAseAuGOuLeGbTeCby9UnKB0BffapoXByZ8ROI8QMcpxV+qVi8SqR09TTZ
         0P8Q==
X-Gm-Message-State: AOAM533MDvGCAMP+HgvBzCFaA+Hbwj2vtJjikFpyuihmL33YadVecV+s
        VsT5UKMOAShYZB8lqhYyLWfE9PfsnTaG6w==
X-Google-Smtp-Source: ABdhPJyPRJaRpb46hM0YUmCjNRXkYyvhBj7tlDNvZOy0Lo20HW/0R9mOR6jEYzE1VBH2+kd1g/1sPg==
X-Received: by 2002:a19:e612:: with SMTP id d18mr4097345lfh.501.1611726385877;
        Tue, 26 Jan 2021 21:46:25 -0800 (PST)
Received: from localhost.localdomain ([5.188.167.245])
        by smtp.googlemail.com with ESMTPSA id s3sm292224ljj.4.2021.01.26.21.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 21:46:25 -0800 (PST)
From:   Sergey Matyukevich <geomatsi@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sergey Matyukevich <geomatsi@gmail.com>
Subject: [PATCH 1/1] ARM: dts: orange-pi-zero-plus2: use fixed mmc indexes
Date:   Wed, 27 Jan 2021 08:46:20 +0300
Message-Id: <20210127054620.510912-1-geomatsi@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Driver sunxi-mmc has recently been switched to asynchronous probe.
As a result, mmc indexes can be shuffled breaking existing setups
where UUIDs are not used for boot devices. Pin mmc indexes to keep
running the systems where fixed MMC or eMMC are specified,
e.g. root=/dev/mmcblk0p2.

Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
---
 .../arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index de19e68eb84e..c4854d3ba524 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -13,6 +13,9 @@ / {
 
 	aliases {
 		serial0 = &uart0;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
 	};
 
 	chosen {
-- 
2.30.0

