Return-Path: <devicetree+bounces-448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A127A1886
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:22:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A9BF282205
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D6ED50C;
	Fri, 15 Sep 2023 08:22:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B04D510
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:22:39 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29A354211
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:19:25 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40413ccdd4cso9961035e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694765963; x=1695370763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JiFcpf2wLcf/YIfsCPE49E87uqZdxujW2soFuaVwGVg=;
        b=gnfkUaKzRQXL7IycvJpD2Otuqp6an+/+gne9ObRAQOaqwhgYBZYsWrPKKS1VoCAoCV
         JBBbP4+kgBvjbASDUSQpOnYF2HbJYTWTrfBpD2SBEaID72SgORrz37yznohvdFF8syU2
         QrguegbigvnzbDQLDwwJTIG33vuDiPJOsjkkyLZZhJWN9Sk+42br/yt5DiptPyXDmkWd
         pxeyzHRe1FbeQaa5XaE0S1aZv5Brg/s9lG+Sliavy0DYgWVV2J9pEOSqTDkA1OoO3HiJ
         AV24RylOYosEZlAlDT5s4EB0sG2c2/aw1pEdLljo+MDn7qpGcZFediPoVJe/m/JiDUL8
         isQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694765963; x=1695370763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JiFcpf2wLcf/YIfsCPE49E87uqZdxujW2soFuaVwGVg=;
        b=T6ci1rGMEugLOfCl+KzM5gRWOqeQ/XolSMn4Oy6mr4YXtPTzya6GiWilSQhhF8+DZo
         rm7UfyHxx0qgAg9bgdk6gnMn6A/Oba2rsWJhketVJQMrDeefH1X0OusjjkziGCnT5DiD
         PdLVz4OM1YwbR+i3NufdfrZk2e7S8rnfxjvuqHvBrD9S4EfWoUEkMxIVVGxoYhWJ0VY3
         Zd0gHXn/5Z8+w5LsdFBqbmwfxx1sBUM9pXrzJ00ms6wBbZXBhyJJjaidWWdroALcu5N4
         RxQ0k68PjIg2UFpwTiRL4g/Kn7phlfqVitoNISCjlAN7VzR1mPg6iiBWajook8rUbFVN
         2pmQ==
X-Gm-Message-State: AOJu0YwCPegjnm1LZ85c1x+pYBvpXSw6PD0KCLcu4qwDawJ8hnK/odju
	ugqR/o4Hb99Nnceh0O0vgpCwjA==
X-Google-Smtp-Source: AGHT+IFXzNFNR749dSovFhgKLlWMgw4PZnj0RueOlEVM+d1kUCki23FYGgz8dPsbomfUaXNFUXtojA==
X-Received: by 2002:a05:600c:895:b0:401:b393:da18 with SMTP id l21-20020a05600c089500b00401b393da18mr3232700wmp.6.1694765962718;
        Fri, 15 Sep 2023 01:19:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0ac400b004030c778396sm6878763wmr.4.2023.09.15.01.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 01:19:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] ARM: dts: aspeed: greatlakes: use proper "mellanox" DT vendor prefix
Date: Fri, 15 Sep 2023 10:19:15 +0200
Message-Id: <20230915081917.22368-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

"mlx" Devicetree vendor prefix is not documented and instead "mellanox"
should be used.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
index 7a53f54833a0..9a6757dd203f 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
@@ -66,7 +66,7 @@ &mac3 {
 	pinctrl-0 = <&pinctrl_rmii4_default>;
 	no-hw-checksum;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 	ncsi-ctrl,start-redo-probe;
 	ncsi-ctrl,no-channel-monitor;
 	ncsi-package = <1>;
-- 
2.34.1


