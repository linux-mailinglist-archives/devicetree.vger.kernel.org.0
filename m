Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D789E4A312D
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:54:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244553AbiA2Ryl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:54:41 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36236
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352090AbiA2Rye (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:54:34 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 30F053F1C6
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478873;
        bh=FfSK7PHOPnItg2UxrfQMXnmMovdesQ6QCsFxowTZ2mY=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=unnrMevZztbPtESj/r5NpoxBdYPTBpVGCLxfClNhjdEFMHphBlBYQYT1K2lPwO0jn
         5kfKE2NvG9iO4HY1wiZyPeqEemStq2AqhLCm4AndEVPk2qO0F/s7P23cVXynAeWOHk
         j7abiYHrfroQNVbKcJPPj9C3w0+HvGC/Vu7WVSGi3kDjJg/7q5P6PRzw7CQM2arvEX
         Z/HYQtDs5B1wLg1u+43Yif7shFQ2ttmt+HM6usRswcww7xMQNGNDwDYKY7HuctQvH5
         xJbR5f4NAPCV5JqxINwg+tI1L0fbFFeXxqGuQqYD/vkalClnyMf6zxj39YHWhltoJy
         xUKXphdcUGQlg==
Received: by mail-ed1-f71.google.com with SMTP id f21-20020a50d555000000b00407a8d03b5fso4654306edj.9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:54:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FfSK7PHOPnItg2UxrfQMXnmMovdesQ6QCsFxowTZ2mY=;
        b=K6q6eYmd9+C+rgGWGlgnmEVBinrteqYDakbEoPG8r2BLpZXTJ91hcrK6bJ6xh0JtS7
         GQdmIIfi4gLv9g7pfJKDZqoBX0LbsA7dNwQnmEh8ozuetSh/yzhfWS8dos/Nkn5n8///
         Z1/xEiRLe82vkStcqx1n7q050RyCRYd1qDqs8sd0zpUfUh31CEtLf/AIJihYWHf56uvZ
         dmss8ATOZoN7Jq8Szdw76JZQ4PqTzQpEUjI1lZuIRxPGgTbM5m+CXlP3638V0rw90JH0
         ggEbcZJwxM0ufoSNjruyDVtV46SssjJ/jxt+94yiaSudKr620Y+1S8o93z8Feq3I5APV
         U3wQ==
X-Gm-Message-State: AOAM5314ANDhXcU1cWm9/GzjzVzshLuxKIvxXuxok2z2gTnyJRMHQql3
        5GTP4GJu6Af8JJP9DewZou5FrAd/Qeth2bM2S92RzAx6tTkt+/pA0OdykwjWOUZwa4hULekw6OI
        dW64sVUP2qZseSEZG8L6Nj4L+KMzvQLcOwT3u4zU=
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr13597827edw.293.1643478872889;
        Sat, 29 Jan 2022 09:54:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx58d91XDto/xMjxDExr9JEzl/j/uOxsqzxZgQC3OzHOq4RT+oNor18vlDFtJgtZhK5hCpM2Q==
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr13597817edw.293.1643478872702;
        Sat, 29 Jan 2022 09:54:32 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a25sm875655ejs.149.2022.01.29.09.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:54:32 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] arm64: dts: rockchip: align pl330 node name with dtschema
Date:   Sat, 29 Jan 2022 18:54:29 +0100
Message-Id: <20220129175429.298836-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

  dmac@ff240000: $nodename:0: 'dmac@ff240000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f972704dfe7a..56dfbb2e2fa6 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -711,7 +711,7 @@ rktimer: timer@ff210000 {
 		clock-names = "pclk", "timer";
 	};
 
-	dmac: dmac@ff240000 {
+	dmac: dma-controller@ff240000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff240000 0x0 0x4000>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 39db0b85b4da..b822533dc7f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -489,7 +489,7 @@ pwm3: pwm@ff1b0030 {
 		status = "disabled";
 	};
 
-	dmac: dmac@ff1f0000 {
+	dmac: dma-controller@ff1f0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff1f0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.32.0

