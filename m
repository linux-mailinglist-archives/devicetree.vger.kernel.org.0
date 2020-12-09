Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA8E2D41AE
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 13:06:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731022AbgLIMEY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 07:04:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731248AbgLIMEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 07:04:07 -0500
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43DF7C061793
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 04:03:27 -0800 (PST)
Received: by mail-ej1-x642.google.com with SMTP id f23so1764265ejk.2
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 04:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YgPOLZ0cXqann9wHWJGTtja1w+Jeu8r8r8uXUCZYKm4=;
        b=hZ2upUa3r7Gb5ZtyGDeoOvFsaXJFdH5Oq7uEsm+viOimuvfSwGP050A5c76vT9BDRH
         gDz3ATdS4jub5Tdh/3EaxWSCt5wsoum7GIo0Sq796fkstnSuGgAJscJkEVVwGO03OQM0
         ALgCi5uF50iYeZGeXXSkNtYsY+jkTkB6gmirp3rclmqefJahtesZ+0KqxlOQt7B66hpj
         x7nTBFP0v20WEriC4IscwzWFHi2wr3Rrj12Zz6ffLe6TJyjZuodt56D8qyn+bS5qyPT8
         XMyVW+mtTrQniy6VmUHZ7Vme7uxJIlZXTLn9trdNLkqPCMvnoYgau4TksvW5+0bXjj74
         lsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YgPOLZ0cXqann9wHWJGTtja1w+Jeu8r8r8uXUCZYKm4=;
        b=s5e420iJA26r65hLpR6ogvvp/Ao39eSats4qU4VT9XQSA1oT6ASe/JTI8cNPmUPOIY
         wXzjkBjGSo1NvLou2ytyi4OVW0fGNR+tRTHQ/yBX0bMxtFyZJ0RbZVNDzboyCpuSd/55
         qw7Vc09gQxltSQLScuFfkZ4ZzSMz5hPRZe2j3hBModVbvehmGqzfaZk8rUT897wkamOE
         UknwzMPcbyXH4OXtcnxTmFGHK6WEBr9/4aDbW4EmFF3D0GjAhaBxrJz5yvPwhGBo8Imw
         20CG5fsDpDqiotQJSJYWTF77YbRRWLcwrhpTF9PUmRhsxk5z9IBVnq2IPkcDfgc3phIo
         RtUA==
X-Gm-Message-State: AOAM531kKVD6cRCrezkAilDRKdcu5hCa8SZtjnM74jvvJ0n+XC5dOpHl
        Qt7tg7VY9soSwkkFNFpFvga2ug==
X-Google-Smtp-Source: ABdhPJzGFFxI90GB1VyHjbguUQ1b5/vjj2GWXp5X7Z2DX7SeMMR4nVLPUMgQsmiSkjCxP8XzYj0DJQ==
X-Received: by 2002:a17:906:1542:: with SMTP id c2mr1720748ejd.382.1607515405909;
        Wed, 09 Dec 2020 04:03:25 -0800 (PST)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id c23sm1426548eds.88.2020.12.09.04.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 04:03:24 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: mediatek: mt8183: add pwm node
Date:   Wed,  9 Dec 2020 13:03:20 +0100
Message-Id: <20201209120322.137610-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT8183 SoC has 4 PWMs. Add the pwm node in order to support them.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V2: rename pwm0 to pwm1 since disp-pwm has been merged in v5.11 as pwm0

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5b782a4769e7..a0004bd9f9c2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -667,6 +667,20 @@ pwm0: pwm@1100e000 {
 			clock-names = "main", "mm";
 		};
 
+		pwm1: pwm@11006000 {
+			compatible = "mediatek,mt8183-pwm";
+			reg = <0 0x11006000 0 0x1000>;
+			#pwm-cells = <2>;
+			clocks = <&infracfg CLK_INFRA_PWM>,
+				 <&infracfg CLK_INFRA_PWM_HCLK>,
+				 <&infracfg CLK_INFRA_PWM1>,
+				 <&infracfg CLK_INFRA_PWM2>,
+				 <&infracfg CLK_INFRA_PWM3>,
+				 <&infracfg CLK_INFRA_PWM4>;
+			clock-names = "top", "main", "pwm1", "pwm2", "pwm3",
+				      "pwm4";
+		};
+
 		i2c3: i2c@1100f000 {
 			compatible = "mediatek,mt8183-i2c";
 			reg = <0 0x1100f000 0 0x1000>,
-- 
2.29.2

