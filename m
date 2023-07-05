Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC68F747D6F
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 08:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231202AbjGEGuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 02:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231847AbjGEGtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 02:49:47 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 046111BE5
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 23:49:19 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51d93425853so7169327a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 23:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688539747; x=1691131747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Btk0Xk8ehSaK2P10pmIt1e+0B7YcT15m+TnmX26R3bI=;
        b=nmV7E24aBirkOoOViUWGRT1rHx4DzWZ45CFp6HO1qW1Ktr4BjyIw1NomU8GRC9Vden
         M2+UppiBaDMDLqT2GFsJDNZGyhRympzdtaPYfnQeShLbjI2FA5oMBoC0M7TfZ/rW1czu
         D1WwUmYOVUs9a4jAEYCbD4rL0oF8ZhxNX3i2BLJo9BmPWzkEb8NF35E+bEUm/nros6Mk
         6hNrEatGQJ0ehrvhzB0sgzYs7pOYC5iclK+AQmt0RuTS5t1eLaiQmMfdMnWpfulY4VL3
         QLGKTp7eo3RbRU+TFMfosuTHy9kjtmuCeeXBAdc7F3JEHhPDuq/jLTcVlExgQ4ig2IbO
         7M9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539747; x=1691131747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Btk0Xk8ehSaK2P10pmIt1e+0B7YcT15m+TnmX26R3bI=;
        b=OVH3UQwDtwZk/+JKZGrcpOS7bd26Oqph6HezbUKmqajE6RXRL3Og4uHNGGYhr52jGw
         cFswEZq6WX02USZpBKFeBGcVCtrWgYVKA+um/CCjl6slso+nl3EmPLdW/71GGw3zu4ZV
         kvD9IEFjhjNy2HEtWX2FCmBcEIynPK2SqzAi2TF2yFOVP+sp2CoRorAMXAtAmMAPMPXn
         VAG0l1uuwu/KQ1FK3iFpOG2s303nOBApvlOhEMQ0U2JA6VxLYmztY/760bkERfDIcmB/
         CGl9mWxUb4a5QS5Ohds6b6mDhkOuVvD3r4KR18TuwrGIN2Fj5UrRvK1r2G/2eR1J2WKe
         ejaw==
X-Gm-Message-State: ABy/qLbF/ZaeuMhAaPX7lT6MruV8e2ccq67U9atD5QSy5J0kxcAjdhPi
        ofxKU5PgXDEYGzCXRe1f+5LEmhLEcxKbHntrVhI=
X-Google-Smtp-Source: APBJJlH/lV0N5VSpd7XysIeV4btKyrXfkL9BcaOIuNEDolOKA5zH4R1OiHe86awZvK44Z9hWjVxUaA==
X-Received: by 2002:a17:906:828a:b0:991:fd87:c6fd with SMTP id h10-20020a170906828a00b00991fd87c6fdmr11302813ejx.23.1688539747054;
        Tue, 04 Jul 2023 23:49:07 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id w10-20020a170906130a00b00992b50fbbe9sm7849728ejb.90.2023.07.04.23.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 23:49:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 2/2] arm64: tegra: correct audio-codec interrupt flag in P3737-0000
Date:   Wed,  5 Jul 2023 08:49:03 +0200
Message-Id: <20230705064903.12690-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705064903.12690-1-krzysztof.kozlowski@linaro.org>
References: <20230705064903.12690-1-krzysztof.kozlowski@linaro.org>
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags to a value used also in Tegra30 Beaver board
with this device.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
index cd13cf2381dd..ad5d7b9028cd 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
@@ -2025,7 +2025,7 @@ audio-codec@1c {
 				compatible = "realtek,rt5640";
 				reg = <0x1c>;
 				interrupt-parent = <&gpio>;
-				interrupts = <TEGRA234_MAIN_GPIO(AC, 5) GPIO_ACTIVE_HIGH>;
+				interrupts = <TEGRA234_MAIN_GPIO(AC, 5) IRQ_TYPE_EDGE_FALLING>;
 				clocks = <&bpmp TEGRA234_CLK_AUD_MCLK>;
 				clock-names = "mclk";
 				realtek,dmic1-data-pin = <RT5640_DMIC1_DATA_PIN_NONE>;
-- 
2.34.1

