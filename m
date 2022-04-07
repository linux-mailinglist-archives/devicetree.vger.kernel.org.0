Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40D7A4F817C
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233450AbiDGOYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:24:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343873AbiDGOYb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:24:31 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F87B1868AE
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:22:31 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id p15so11180013ejc.7
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zc36ZdLQggjp64Xm41nxUmHXQp3VMbJZtJwCT6Mf3Ok=;
        b=ABr3/OF0kBX350HtclyvC4dSwP+vX7Orxgj+KLA8X0ySA8j1CrVfZ30hK+hn7Hw8la
         8g4leng5C78hi7xBxlaDbz40C1WcpJIIKTVmV1lMCpjxud6FwT3cftvvR/f7ycs78//3
         pVFsNd0EilM3qBdiIG34y9LjBoYO13R8Ng4YA4x9kajsBCmNeT3AP557SKBeRb/cmfEY
         szEVXZ1FuMYaOjoaf2L0rfRq8cw2G8Y5D6zzsr08kgnrQ5TyRHzJQSrL9fvenEe+A5In
         6FTPE7FzzxFlDD57CXCwVRHi4/KudxOMI3tFYz6/Y+xC4YZS0DIt87gkNNYhzZvYU0eg
         BeoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zc36ZdLQggjp64Xm41nxUmHXQp3VMbJZtJwCT6Mf3Ok=;
        b=VJMlVXXwn9qChjhOjq8LGMwlhW8pWeCLpfEZAPn4L4n+jH06AEzp/arwoC53RrRNIj
         z4IacxD0DPwaK++zWJs3AFmfJmuMdewCY0kEG7P/DRxgzN6N9CK0PlNIpx0Ti2i+08sh
         CSeikadAIubcOR40oV/L6WGnd65CdE+9oYVSByVNOlKVJsXpQC3tfvC247PCts3TFpAi
         hPGeDJK7f89F/MuYNJkr8HQAd5nEEXqyEOI29leCbTrsu+FMRL8dFdzsz6LyOuQ0s9dI
         cryg7vDguTSqE5Svzit72F8VqLVlegquPsRxXxDuuTAPmexI9x9H8YH+rLfuOUkqcFte
         cttg==
X-Gm-Message-State: AOAM532AWzQxaC4nbe/H0ixd35P+o4g+T17H5iFtWJzVkHrruJF1vV8y
        Sw7lRoTsgydAvDirISdikRAhH1I86mdzWITp
X-Google-Smtp-Source: ABdhPJxq7xRZCHutmiTGN9LV0M6t9OKBrdXTNKhP6bOb9NNpujMmjyWR7hZ5yzUMqyK4+nC+/TwWOw==
X-Received: by 2002:a17:906:6a0f:b0:6d7:1021:2bd2 with SMTP id qw15-20020a1709066a0f00b006d710212bd2mr14036973ejc.395.1649341334259;
        Thu, 07 Apr 2022 07:22:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709062a9400b006ce71a88bf5sm7569808eje.183.2022.04.07.07.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:22:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: meson: align SPI NOR node name with dtschema
Date:   Thu,  7 Apr 2022 16:21:58 +0200
Message-Id: <20220407142159.293836-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and SPI NOR dtschema expects "flash".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/meson8-minix-neo-x8.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/meson8-minix-neo-x8.dts b/arch/arm/boot/dts/meson8-minix-neo-x8.dts
index 61ec929ab86e..56ea875c418c 100644
--- a/arch/arm/boot/dts/meson8-minix-neo-x8.dts
+++ b/arch/arm/boot/dts/meson8-minix-neo-x8.dts
@@ -65,7 +65,7 @@ &spifc {
 	pinctrl-0 = <&spi_nor_pins>;
 	pinctrl-names = "default";
 
-	spi-flash@0 {
+	flash@0 {
 		compatible = "mxicy,mx25l1606e";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.32.0

