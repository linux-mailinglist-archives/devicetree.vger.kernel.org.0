Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0FD761B9B
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 16:27:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232884AbjGYO1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 10:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232905AbjGYO1B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 10:27:01 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A08212D49
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 07:26:46 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51e429e1eabso8264782a12.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 07:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690295202; x=1690900002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vu+SOH4cepAU3He/10eBbbigpHdBSsePlh/8VUX5+Ec=;
        b=nrDcALCBsURrCYIIx3musDDrXuazEXW7Oj1ljTKV94TayCIqzepAJjratlWbrHog2V
         /P3qC6DjqNzsD4oa92jZH0Mcjnhxnkye8jCzw4avSPIO22Xte9ExGPPFM6zhFx1AE1sE
         IawdoM5xVDgGp8TzlAm+51U3/2W2qV/gcFPPND/KcjL+E54EOQ4S33MIUz/EGq1Vsw/t
         GdXJPGjIFE7GaAp5DULAIwbr8+X7ZQ/u5TDqTkC6RWI16TeRTauEV7sC4MpLo5dgbNoH
         Jo3Lp5RN4J4PZjXZM4GKuzQW4W3/szJE5B6d9M6bijy/0tsDobZcNFsVd1UQ4WI0QfpH
         QrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690295202; x=1690900002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vu+SOH4cepAU3He/10eBbbigpHdBSsePlh/8VUX5+Ec=;
        b=QyOT7qMc7+FAkDaFtTmvwT88aSHcia40ydmjNq89lRW0VXal/Aifyk5HwtpaTUgC4l
         JQc1JGiQ2uuxFimsh+Eg/xg74Tyxl8DBPy2WdIXt9OYV2AZWOR9hO5/cjSv2AX2+hXQ/
         LDZO6pZjgTQmYaistkOInDWs4TkapG/xAIVl/x0DokWHmxWaKiBlykK8XrQvfwtrIUZD
         kUtEY/xCgtbk/aLaNx3De05P+m7DVNLqNoBQ8hsZEdSMAJpCPjHN1wVnL4fSP5VBsZMj
         pDqjI6/1d1na89zm3QM+0KnxsJOP1vmM7ATEXYj6ym20vnOAbAdUrr4bK+HZwo4YrFLQ
         12+A==
X-Gm-Message-State: ABy/qLaqD1ve3xHdNK/0FTsv4UWqhbO7F9aq/b+6nuaIiDA935Vwt/mc
        0QznYq8pqtaTkVuqZU/F4pNxvCyuwschcYD2Dzg=
X-Google-Smtp-Source: APBJJlHe2WaCVFFIhqEkOPLYn/lx1GMUgdYHp82/ZIdmUHgA6YkokG2wKA3Ec/xAodRbKTF1DXwBTg==
X-Received: by 2002:a17:906:31d6:b0:997:d4ee:1b53 with SMTP id f22-20020a17090631d600b00997d4ee1b53mr12297667ejf.48.1690295202211;
        Tue, 25 Jul 2023 07:26:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id w8-20020a170906130800b00992b510089asm8313621ejb.84.2023.07.25.07.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 07:26:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: tegra: drop incorrect maxim,disable-etr in Smaug
Date:   Tue, 25 Jul 2023 16:26:38 +0200
Message-Id: <20230725142638.157449-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

There is no "maxim,disable-etr" property (but there is
maxim,enable-etr), neither in the bindings nor in the Linux driver:

  tegra210-smaug.dtb: regulator@1c: Unevaluated properties are not allowed ('maxim,disable-etr' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index 80476893fa57..53805555dd2d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1395,7 +1395,6 @@ max77621_gpu: regulator@1c {
 			maxim,dvs-default-state = <1>;
 			maxim,enable-active-discharge;
 			maxim,enable-bias-control;
-			maxim,disable-etr;
 			maxim,enable-gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
 			maxim,externally-enable;
 		};
-- 
2.34.1

