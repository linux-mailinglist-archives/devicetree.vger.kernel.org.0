Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36D21350B4F
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 02:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233105AbhDAAeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 20:34:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233392AbhDAAdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 20:33:42 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20E96C06175F
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 17:33:42 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so53330pjv.1
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 17:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5UZtMewfW5OgbqLFGn5/mTv4Mc+TTkX7oOVeShL1+uA=;
        b=qeCm50ujxzjq3oeFwx1pHZ/pcNfApAHbxDypYt9HkWgWeCSwXMUPMWXa7ziHkp2qqh
         FW0/9/QbCcFfGEIh0099U3DaW5+LwQ9gv1iVaOFTPpkRbzuSFN3D+V6pYHqqhABURMEO
         s2bhtQFlL3v3xJVnSmabpqfHIMXdRby2TFO+HTtDAVQqZOGfkZrhiIdkKBeOAYCDXmVa
         twVHjq2nkSbKmf37A2Y+TOaFqEFCJRKy238nQjX2MkGbSdc/4bZvo/TgkfQFRcLZULpg
         1cIek3AqVJzMlcHfgpe34i8rvuuBg5ZAkd/h+YJchfJeayOYcZkvnKxm/67QmbFHTkI7
         ISYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5UZtMewfW5OgbqLFGn5/mTv4Mc+TTkX7oOVeShL1+uA=;
        b=eoG8jFplqkGEimlCW21Y81vn/cBHpl+Ct2XY+3IXE3apck4hjAbSYmo9PytF8wlH+L
         7uQ6Ufzl3qwdXEaS0HyPieOtCxrtVUSB2rqubRd8LKtH0oK4dOPxNSknh65sXQ9aJf31
         LLS1YT7iA8oFIdX08/WkbWaqTvVSs4dOUxYzM5FrAbQNR2Kv42PW6jLRe2UKZTLmyacP
         7ihYLsdxRjsCmExnhRGN/0FEeKEM8vfq+ruTtuyiT48saQ+J+gSGXQsO+FGhe76k3nUy
         oT4WIREGC14P7kaHssvAt0coLVwhmnC2pUbgxezN/pctzAd4s8wF7LUrGeAFP8ssjqUV
         HieQ==
X-Gm-Message-State: AOAM532UaZX9AVKzbQ/fe4qqgkutzrpw/dZ8+vcW/9gv6ZyUNkJCgyWS
        uz1DIK2PdGw76obiycMy/jd5UA8CzWtMGg==
X-Google-Smtp-Source: ABdhPJxOYx5QVUWjNYDsIFvm/eMgV7FGUMZrzDZpi57jE/lKQ+OUS4RSxkQHieDioujZQCTeJxi9oQ==
X-Received: by 2002:a17:90a:b293:: with SMTP id c19mr6034997pjr.193.1617237221693;
        Wed, 31 Mar 2021 17:33:41 -0700 (PDT)
Received: from rashmica.home.majoof.com (150.24.220.111.sta.wbroadband.net.au. [111.220.24.150])
        by smtp.gmail.com with ESMTPSA id ot17sm3226099pjb.50.2021.03.31.17.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 17:33:41 -0700 (PDT)
From:   Rashmica Gupta <rashmica.g@gmail.com>
To:     linux-aspeed@lists.ozlabs.org, joel@jms.id.au, robh+dt@kernel.org,
        andrew@aj.id.au, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: aspeed: rainier: Add iio-hwmon bridge for temp sensors
Date:   Thu,  1 Apr 2021 11:33:14 +1100
Message-Id: <20210401003314.167178-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add iio-hwmon bridges for the dps310 and si7020 sensors so we can
access them via the hwmon subsystem.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index fefb0b8fd6d5..7a2bcc373852 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -173,6 +173,16 @@ i2c2mux3: i2c@3 {
 		};
 	};
 
+	iio-hwmon-dps310 {
+		compatible = "iio-hwmon";
+		io-channels = <&dps 0>;
+	};
+
+	iio-hwmon-si7020 {
+		compatible = "iio-hwmon";
+		io-channels = <&humidity 1>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -1972,9 +1982,10 @@ &i2c7 {
 	multi-master;
 	status = "okay";
 
-	si7021-a20@20 {
+	humidity: si7021-a20@20 {
 		compatible = "silabs,si7020";
 		reg = <0x20>;
+		#io-channel-cells = <1>;
 	};
 
 	tmp275@48 {
-- 
2.26.3

