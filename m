Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C567454810
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:02:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236805AbhKQOFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:05:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236577AbhKQOF3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:05:29 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64D25C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:02:30 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id t5so11903741edd.0
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=48jpMjB7ikIGAY5IH4NRA+sLzh4QPo/RYNwFWYqiuv4=;
        b=dUS2SR7j0B4r/3q4ToNQmhhGg4WvoE5bfUdVO+ewVd2u5prBQdg4PikCaa9edENq8W
         WA3abYUryvhuFfX9eG/Bk60UNOiZyY/kymMokjqyBSLSIxftr3B4KwOpjaL4oMYZtowk
         V8eZLDBK8lvp+BVx2loNqo5JryZzLrYEpVkuqN+cu16sHJ4B94TVyWeNSnr1F6u2swOh
         ngug0eihvoNMHEjgawDVduGZxAqviQw5BaeCtNtjO9jJIWbZ+BXrnQYq9b484MBqZlvu
         b/j9CBI0EbYdcAJ4ToeKQp71xUoW8UMAInLAzS0U6ArqCQRTt6HWuOXTGHT3ffzJ3pKz
         +kZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=48jpMjB7ikIGAY5IH4NRA+sLzh4QPo/RYNwFWYqiuv4=;
        b=ghT+QqfzH/d6nvoSVSK5Wr+vKaca7b40leWrafhxg5neGF+K+rPOXjf1jEtFoLtbAh
         XOOlOMvHvTNzD6EHRQRC6JHaNxscfMmGQoVEruYiilgAwsz49PL7DL9dl3pb2ex6Hntt
         Y9OWOSGpd+RfNTaaeIkqIEfxj7N/xRjL+jXC4EWXhicI4ifL1U7GgjN5NWJDvEHH5EuE
         PgaxLAkz1XGAYw5/OlmUjep3IpPqLX6uxT5D7Mo093i0CgieVy2yZuKL5uwFpGTadV26
         WyDkXw3vDpvTJNVeM7jUOvMhZG1prJ2I0R06BpEYtQd/3Wsy8Dbg9tDLCLro7IkEH2Zo
         0ivQ==
X-Gm-Message-State: AOAM530hO/z44l6qs8lLIDLfD8s8aebQDKOqqDmtpYx3IxKF2n0rxmeH
        XnCXpCLvf6PLdFIio8w4lO6jlg==
X-Google-Smtp-Source: ABdhPJx98JoRl+qaja/gfMY6n9+koVO1zpPmRMUeZF13GS79wlEvIe00MnF0trXn+b5HYmtnQQvQbw==
X-Received: by 2002:a17:907:c0c:: with SMTP id ga12mr23434041ejc.417.1637157748723;
        Wed, 17 Nov 2021 06:02:28 -0800 (PST)
Received: from fedora.. (dh207-98-180.xnet.hr. [88.207.98.180])
        by smtp.googlemail.com with ESMTPSA id qw27sm10725963ejc.101.2021.11.17.06.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 06:02:28 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, mripard@kernel.org, wens@csie.org,
        jernej.skrabec@gmail.com, hauke@hauke-m.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Ron Goossens <rgoossens@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Subject: [PATCH v2] arm64: dts: allwinner: orangepi-zero-plus: fix PHY mode
Date:   Wed, 17 Nov 2021 15:02:22 +0100
Message-Id: <20211117140222.43692-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Orange Pi Zero Plus uses a Realtek RTL8211E RGMII Gigabit PHY, but its
currently set to plain RGMII mode meaning that it doesn't introduce
delays.

With this setup, TX packets are completely lost and changing the mode to
RGMII-ID so the PHY will add delays internally fixes the issue.

Fixes: a7affb13b271 ("arm64: allwinner: H5: Add Xunlong Orange Pi Zero Plus")

Tested-by: Ron Goossens <rgoossens@gmail.com>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Tested-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
index d13980ed7a79..7ec5ac850a0d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
@@ -69,7 +69,7 @@ &emac {
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	status = "okay";
 };
 
-- 
2.33.1

