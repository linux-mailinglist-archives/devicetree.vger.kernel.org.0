Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B40F761B96
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 16:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232797AbjGYO05 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 10:26:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231467AbjGYO0t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 10:26:49 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6CE02707
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 07:26:25 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-977e0fbd742so890882866b.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 07:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690295182; x=1690899982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Osub4f3a9wDa+j6uwPfO6WIBtwM/4F0mt8TLvtTm5qY=;
        b=X3B0JrV0jNmpORBLacXArjgPvByb/7tiykrv12+09ez0HhOJwKMUPFDRuwBOwPi/h/
         ttnZz8rcxLN3s7Ca0i8Yh9HPKBRtHDXhEIzb4wv3HQPDmtk/7YOAzq77N47Ls2HN+GUF
         b4Dss4LE1Lw+doub84+A/I8K8gGKYkHF1wYO+4o9vxzNQpaGEqZ++ZRpryp7i5o/NOh5
         oJDfyk9Smbsldon3mgABa0wET2qiVlSQybo4aT4jZQHZEcls4gB9lWOhsdqddyRIvEYr
         hG+yuOPnnK5olOLEiUOVBCldrtS8WMh2bu3QK8XsucEzTRhH2EC4Hzwb3X4rs1R1uPo7
         ifOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690295182; x=1690899982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Osub4f3a9wDa+j6uwPfO6WIBtwM/4F0mt8TLvtTm5qY=;
        b=fykgAz2MGWR8wXWh0C378TycEO0ofXh2EmUHeYVQO5tzwe07Q4ip3328qoVBRvu0US
         czicO5tyHaDf5dJtn8H94XZlk3ovqDxPj5HTI9/qgP9AhnRhAEUpLTB8JpV5tI8XD7Ac
         ehGBm6OOhXUwjYbWuwQH0+/wGill1tY+wlxM9JCgZU0DQuha2zxuo7tHz6bA1yErJHtm
         HUffYDg3gQ85toYN/ezEGtlNJDg85QAEwpGE9kaRKYbZU8zoksDBgl/0AuGL0SEwD29j
         k4jUlRkxKIyR59MDW9gR2MdoZ4a/IHDKRzqIgrjG1USbGciXJNyg1rTDchejtY3XEUgi
         Zq+A==
X-Gm-Message-State: ABy/qLY86EOuag/Ista7tPAFPNGSkxa3+8LEO3760Id/pP+K4XbJVoWh
        ywqYWns6hstUQADQbi8dqnmVNg==
X-Google-Smtp-Source: APBJJlHPnZVymI1w4rbdTdJSLu6BQorRPNwzUIM15aMz1q72e0NmF3FCchoH6nUCGbwW+K+2h9D6mA==
X-Received: by 2002:a17:907:a062:b0:978:8f29:8c85 with SMTP id ia2-20020a170907a06200b009788f298c85mr10816414ejc.32.1690295182551;
        Tue, 25 Jul 2023 07:26:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id lg26-20020a170906f89a00b00992b50fbbe9sm8242980ejb.90.2023.07.25.07.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 07:26:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: px30-engicam: switch to enable-gpios
Date:   Tue, 25 Jul 2023 16:26:16 +0200
Message-Id: <20230725142616.157405-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
References: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The recommended name for enable GPIOs property in regulator-gpio is
enable-gpios.  This is also required by bindings:

  px30-engicam-px30-core-ctouch2.dtb: vcc3v3-btreg: Unevaluated properties are not allowed ('enable-gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi          | 2 +-
 .../arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
index bf10a3d29fca..80db778c9684 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -26,5 +26,5 @@ &sdio_pwrseq {
 };
 
 &vcc3v3_btreg {
-	enable-gpio = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
+	enable-gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
 };
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
index d759478e1c84..165d09ccb942 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
@@ -39,5 +39,5 @@ &sdio_pwrseq {
 };
 
 &vcc3v3_btreg {
-	enable-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+	enable-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
 };
-- 
2.34.1

