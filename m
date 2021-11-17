Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9155D454425
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 10:47:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235498AbhKQJuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 04:50:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235363AbhKQJuI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 04:50:08 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C58CC061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 01:47:09 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id w1so8312820edc.6
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 01:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ipfWcDKpQnO9TzUX3IJ9sYDRn+G7NMWRbyuYTyM1Soc=;
        b=hwSjoLKjrDMCeXJP3PGpaqN0SSB3cVtOgm3pYZZ0McgfqtfU4A0Y3IZuYPzmjon3B5
         QS4MXd0hEUdvn2VTohy4NisEY/+EGjDTl7ENlHjoCF1uwn+e1im4ThXzef+9C9Ne0yAD
         8Daz10tfFy6H+YQqIcfe8X0aHv07WQb1akAtwtQdNyJawQqgo7WMU9Zlb+q4Y9PbWRaA
         pk34Zc5LDMtIiVHpiUUudbOqzSJq43A8YFclnGHhPGReWAjX3l8j1/Niq1N+8dAX8eCP
         RO1OGq8472cHtWq5dEIY9YxdJeM2/HWzFRyulize3hVuLiZPFpoWkTz9WlH2rWaGxzXv
         F4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ipfWcDKpQnO9TzUX3IJ9sYDRn+G7NMWRbyuYTyM1Soc=;
        b=wCnCPESwTAyBj6knH8ucs2oSSMjp8KHKqleE0jv1d7piXO45lUEff4K/Hi2dwugYY7
         dYQ6Dqqklz6Uc9KmfC/zarUKGvvALCayhuertLK1qagtOrKTXY0v+BfQHOflzG5ieCzp
         ca33LbKOcPm979FdDrymIP2a/9pw6PyiKNggxYjfrLdpEZUm3Cfs9igTAhJdNBIrds+W
         LLZGk9UUHak180wrSluZoBLiqlkxcJZGyL8M3Ympxsw2OaQIECRbHdFodTMJAErkPrF1
         w5SCHIASa/SrurmRCoVr6ACgtETQcw0g+lIdLuY/fQ30dmpU0aF55CC5z2sFE5gz6LAe
         2+/A==
X-Gm-Message-State: AOAM530FX6nlnMsHupYejpuN34l0KN+kDIDaYP8Ey++s/xaBMaeyilVH
        7XN2ZhjCEqaKAdS34IwbCjPeNw==
X-Google-Smtp-Source: ABdhPJw3EizNegAkM0uu4+BjBSPlXAu6CGRHAL5Q829i5ghg4gHB6e0Y1DZ6yJIfL5+Qk4zl1JBUNQ==
X-Received: by 2002:a50:da42:: with SMTP id a2mr19290119edk.361.1637142428126;
        Wed, 17 Nov 2021 01:47:08 -0800 (PST)
Received: from fedora.. (dh207-98-180.xnet.hr. [88.207.98.180])
        by smtp.googlemail.com with ESMTPSA id jy28sm4891820ejc.118.2021.11.17.01.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 01:47:07 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, mripard@kernel.org, wens@csie.org,
        jernej.skrabec@gmail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Ron Goossens <rgoossens@gmail.com>
Subject: [PATCH] arm64: dts: allwinner: orangepi-zero-plus: fix PHY mode
Date:   Wed, 17 Nov 2021 10:47:01 +0100
Message-Id: <20211117094701.11974-1-robert.marko@sartura.hr>
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

Tested-by: Ron Goossens <rgoossens@gmail.com>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
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

