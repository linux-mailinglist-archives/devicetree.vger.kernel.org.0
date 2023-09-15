Return-Path: <devicetree+bounces-447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D499E7A187C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 909692821F2
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC0E5D2FD;
	Fri, 15 Sep 2023 08:21:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFC2D314
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:21:28 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 301E04213
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:19:27 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40472f9db24so15641275e9.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 01:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694765964; x=1695370764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77anH4uV98R6p4UPwYpneEAfgcMSfw3qxntLj+ymQb8=;
        b=RvbsTkhvnewEndHhjgMSKk9E2NpOcpXRcvIfOUTFooN+KwllU1iKTaWY0Vs/CUQamm
         r7cDcVN2CxkQFw7RzPUmQfAKpdVDLz1Xs4053Rqnhy8SXpm3JfRmc2by8tjNARX7Luox
         9xsL5TEz6mUBSvZuKmn226B8zM/EOlfQrVNR7n+2PZVMKGQC5PlGgQHg17okhlpmRpNw
         cWh/OT30jELjX36ILxcP4+kFkbEntB90iP8z6uYMa+NMyStyhEzDE0R3LDlhy8BrxZMv
         H4u96HLMbFtotlrdYtZK1y4w7XvkEhMyavl4gzaCxvxim8JW7SGShYy/HcCtBoShyjgR
         Xhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694765964; x=1695370764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=77anH4uV98R6p4UPwYpneEAfgcMSfw3qxntLj+ymQb8=;
        b=uAA+pz2wUtwlHJJCsnEtGjEsPf1kwxmY23/3Us/T279XJr1tXWBWON9aI4SU0Y/uSQ
         6Ei3OAHGW/+Il9bpOKjwx1QmNZDb6kkuFqlqH+HY3f6/c5hTu9B9wwAULy8Rzy1nU1gw
         V9DRse4ebh7fP5IU3kitVNVhFCN8rSwoofqePcRG/YASwDGGRWy9T4r3FBLYIHd3iapt
         nb2Q4d1pCghJ4HMrMD1Qy0ZuGtpU3nYQo7QNw5lg5v0mRsuzXzVuM99mQRKVfuX0qcWh
         qnj+cy/ZJn7aDTG+Qt7IyuhCtsOnQI0NiCkVIPKu0KPaa4cP+pjlQuH+Wm6odWo5VMud
         eT5g==
X-Gm-Message-State: AOJu0Yz+cHklDlwb7/yyLsdLOAz95glcAx9ZQGnh/qyN+syObOszBkJM
	bTsmPmkj6AsSdXOVuJtv1DovWg==
X-Google-Smtp-Source: AGHT+IG3Jrna4I9rGuIOCWNIxV2GoWQGl+gJXtGUwcHhgF0/sd3Xtw4tG7ZA7v5hv5q67vQCIpjOVQ==
X-Received: by 2002:a05:600c:230c:b0:3fe:d71a:d84e with SMTP id 12-20020a05600c230c00b003fed71ad84emr987853wmo.1.1694765964535;
        Fri, 15 Sep 2023 01:19:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0ac400b004030c778396sm6878763wmr.4.2023.09.15.01.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 01:19:24 -0700 (PDT)
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
Subject: [PATCH 2/3] ARM: dts: aspeed: yosemitev2: use proper "mellanox" DT vendor prefix
Date: Fri, 15 Sep 2023 10:19:16 +0200
Message-Id: <20230915081917.22368-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230915081917.22368-1-krzysztof.kozlowski@linaro.org>
References: <20230915081917.22368-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

"mlx" Devicetree vendor prefix is not documented and instead "mellanox"
should be used:

  aspeed-bmc-facebook-yosemitev2.dtb: ethernet@1e660000: 'mlx,multi-host' does not match any of the regexes

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
index 6bf2ff85a40e..5143f85fbd70 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dts
@@ -95,7 +95,7 @@ &mac0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii1_default>;
 	use-ncsi;
-	mlx,multi-host;
+	mellanox,multi-host;
 };
 
 &adc {
-- 
2.34.1


