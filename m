Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F14AC752704
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231981AbjGMP3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:29:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234993AbjGMP3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:29:36 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D9D26BC
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:29:33 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-315adee6ac8so979885f8f.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262172; x=1691854172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=T8SU39DO66SASFui1yC/ujei8u3JvD1we93aqyvWpak=;
        b=rDidEdglgROfogmvKHpDKuVP8nk8yf1uwNuRsYH+4VhUkTjVkFD8MFlXgwK48yhQ4E
         ZXbHVkoUDBr8tvPtBRSbtUCV/VXW8RHSYaiJUPCWr1s1EMha36wU/fGeyGXlcmjd3Jcv
         HT4AM+4cSEEUL0lRhagb5tEqKAinBMensMiFy2s7fZXmvEwUdlQn5G6dxirCUI5+mJur
         r1m6L6fPQm2KG2aOxsmxgjs2pOFZJE6PjflAp6G7ZSVr2/jqQJ4/s3sOEzzDUVrQ0orw
         G+wkjRs69TnZoAUHnZGhSok5wBgwvyX91AReJd8UO8u6W39EkjjdV/tKzq291PT/1HfR
         sBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262172; x=1691854172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T8SU39DO66SASFui1yC/ujei8u3JvD1we93aqyvWpak=;
        b=CY748hkDuBiJWgZo5WPVBPp3ilPo8M61OobiG2XaCpFNaDYBSyc7Orniybz4frL877
         lKY7zJjer4daiby4RuSN0psvn0usK6RbEsfMqWWCkZs6OJdBz9OCHeQMyKeZZIHFDSVU
         BLb5gmQzkX1iUVDT9P6nv0v6Ptt+ETGw4MXe4ALEt5KFp4gJ60rkFN5Xxl6GzIAcGHJ5
         ihXX/dUPth8WisMH/BpDQqRl9bbMYC8FWszkgwU0Cf376lUTHJWhRhRm/9tRO271n/D1
         Mq9LDMKFIzvUVO9yUnuUZL7bSCL9CT7Mxt8xC7my/drU8RbbjG+6jzfIooeiTb3UsM94
         GH7w==
X-Gm-Message-State: ABy/qLbIEGbXXJ9cVTJnW2Jh57ARzmBh8t4Gg/KJHkjESbRGTSMGyjYt
        kgdgaqQElo6ZuqsatjgLfzR03w==
X-Google-Smtp-Source: APBJJlGV6M46/wD02lu2eFgeSurNYpA1cSnMuEPCjmzmcUifEKW23Mn+MD1jNuzq/AJmyyQcxqewkg==
X-Received: by 2002:adf:cd86:0:b0:314:1fd7:188b with SMTP id q6-20020adfcd86000000b003141fd7188bmr2162397wrj.17.1689262172285;
        Thu, 13 Jul 2023 08:29:32 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id k2-20020a5d5182000000b003143aa0ca8asm8285924wrv.13.2023.07.13.08.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:29:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: samsung: s3c6410-mini6410: correct ethernet reg addresses (split)
Date:   Thu, 13 Jul 2023 17:29:25 +0200
Message-Id: <20230713152926.82884-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The davicom,dm9000 Ethernet Controller accepts two reg addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s3c6410-mini6410.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/s3c6410-mini6410.dts b/arch/arm/boot/dts/samsung/s3c6410-mini6410.dts
index 17097da36f5e..0b07b3c31960 100644
--- a/arch/arm/boot/dts/samsung/s3c6410-mini6410.dts
+++ b/arch/arm/boot/dts/samsung/s3c6410-mini6410.dts
@@ -51,7 +51,7 @@ srom-cs1-bus@18000000 {
 
 		ethernet@18000000 {
 			compatible = "davicom,dm9000";
-			reg = <0x18000000 0x2 0x18000004 0x2>;
+			reg = <0x18000000 0x2>, <0x18000004 0x2>;
 			interrupt-parent = <&gpn>;
 			interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
 			davicom,no-eeprom;
-- 
2.34.1

