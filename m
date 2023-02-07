Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FDE068E283
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 22:00:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjBGVAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 16:00:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjBGVAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 16:00:37 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38EAA3F289
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 13:00:29 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so17715wmb.2
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 13:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLeRhLWmIh/+SYwSrcDaQMvT0EzHmvkGu9lyhcuGFi0=;
        b=wgmMLTguY/digKqj6aSI2eb9rc4DKDhXP9dY5ag6mwCsQXQHGsJnYkINdvjtrRTSml
         H7DOIdQnyCV03+6VtlTcL+z0dtW7CI07cV+h40ExGOMM95nbCL3qqbHLq4QkDCINmwFw
         AS0dLhmKlTblQNbMm4UgKpT/GRfsk8VOtsC2st/6LZILLTs9bImF5raRp0co1mVY/EtV
         trjjdvMtuBlG9uicMF2SS+61Eb47cAjqSuausWqx4pk3biBivDID4Q//XBqSVHQV42su
         yApz4/o65HUU9ez5+mbujTOz5BEKJ2XEulPNOc4/nfWuPBYcufOj7A3jtcNO0+wbMxYn
         ldTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yLeRhLWmIh/+SYwSrcDaQMvT0EzHmvkGu9lyhcuGFi0=;
        b=oq/sS1KU4jFGpP1FJ2hmwFGlGdj9/NShsVK9WeOs3U7gSp99FW5qb5nCQkk2JvJUAT
         3fS0SUdMVsAqDWS+oXzQBCuJjTkfXflU/YQ42bsocRnlYQYURM2cqCERZgq1fM0Ewh6T
         Y4OnP5ZcPxuFm3cFOjiRdhx+C61T5Ip+KelvOsg6Nb22jpH/F1zdj8wJ1mzdH1cS0dT5
         SbVYfTdppkvKFoYqy8oBbsQvFOTlWb5AX5jtDtZH65YdlkGdxPDyyBnjXldtmHlzA2qJ
         1zMvJIIao4XI9oqsyQpIzJiIueasar+4UDQWpzttrRkyr84vhVD0YKJEtkv6u9NVOyNS
         2x+w==
X-Gm-Message-State: AO0yUKWLbDcqApbbXUedwirVt7Bg9jvsUSwFhKoIw7RwCMsvaz+nxdoi
        anuuHd5+1Ghyoc061jDypx6QVg==
X-Google-Smtp-Source: AK7set8v24SUYAzHoZRH61gweMcUSiS4FovZ8oCfp+7QRDieHN52GJYulxHr7hhFBJOPX9KxmoF88w==
X-Received: by 2002:a05:600c:4d22:b0:3db:1200:996e with SMTP id u34-20020a05600c4d2200b003db1200996emr4208330wmp.16.1675803627822;
        Tue, 07 Feb 2023 13:00:27 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f9-20020a05600c44c900b003dc4fd6e624sm8041631wmo.19.2023.02.07.13.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 13:00:27 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/7] ARM: dts: exynos: Remove empty camera pinctrl configuration in Odroid X/U3
Date:   Tue,  7 Feb 2023 22:00:16 +0100
Message-Id: <20230207210020.677007-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207210020.677007-1-krzysztof.kozlowski@linaro.org>
References: <20230207210020.677007-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The camera's pinctrl configuration is simply empty and not effective.
Remove it to fix dtbs_check warning:

  arch/arm/boot/dts/exynos4412-odroidx.dt.yaml: camera: pinctrl-0: True is not of type 'array'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-odroid-common.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
index 7c2780d3e37c..cc888f0c98da 100644
--- a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
@@ -117,8 +117,6 @@ &bus_mfc {
 
 &camera {
 	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <>;
 };
 
 &clock {
-- 
2.34.1

