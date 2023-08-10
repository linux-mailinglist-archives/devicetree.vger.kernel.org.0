Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE5677723F
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 10:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233995AbjHJIJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 04:09:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232869AbjHJIJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 04:09:26 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0C69211B
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:09:23 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b9f48b6796so9411021fa.3
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691654962; x=1692259762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuGMQ/KL+H2K3zbEqC4egvVdZx3/q137aQDynxfPMTw=;
        b=lPrRsbpPeUSoPHZuXzSQaeQbVcGZrTTJu8B5CiRMAtn9dl57dlRIAnfDavAloQO0MP
         /zYvE05+Q8dETH+sGjluziZXxhavvs9j2uUhZKdZrxyvJQia5XyV5WXPMsb0t3oreAu0
         yPDib3Kyam53zvMJMy9XMzDITSomyGcp1LmLc97jDlfixKmc92A+LnIsWHxDESe96/pg
         txVCXcqHVNGFonj0hxaM7lEhcThC1w1F+gh53dsLfhdCg8cbkcLZGCksuZcNM78b+zf8
         kx7+fmvYY0oC3wDQc2Rb9SoWmcc+9IW3NinsAKSd6SOgyEn0oLViGW0rQvTLwtNqJsMU
         XE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691654962; x=1692259762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IuGMQ/KL+H2K3zbEqC4egvVdZx3/q137aQDynxfPMTw=;
        b=fOAIXFDrUKDtNfFGMGuOq/l8mxa3wtkys8+Fs4KOt9AmX3k7VSxGC4wQbJ097C5Fh5
         wjnhi+pFaVfRjH4S7cytRx2ItAozSmvkjMg3Uer5Zq39494oPGzsEP53rkRe+e4xfi2r
         kCQmJXLw+J08XGz3xuGH7gxl+fWfeLAycCjtYlnGhN9eOONqrcgtZKVUGYTx4r8+iSg2
         M2M7jhrX7A6/ESQeUnfHb5r9WkT3jYHhnsZ6KgV3js6pcDfl9GXVCIexGW2Fbr85ibGq
         hlvm2PVjCS5EpsP9K0yHIm6FUQtio9gwrfeVi0rZ755YmiHSTAxMAO38bGFp6ca3HzTR
         TiRg==
X-Gm-Message-State: AOJu0Yyxc2OJqonT2EMj/s8pTY/0J5dDyqa+JvPnoqkFw4aGQdpYFiO3
        3S/SffMsaPDjjXfEP7rYZJqg5w==
X-Google-Smtp-Source: AGHT+IE3WlptZ87OGGPAp8NRM0Hr0bRizxOA6ht8++KZTsqY7h0JnA7qRBhHmdvTKoALjVUqC/rTIw==
X-Received: by 2002:a2e:9ec9:0:b0:2b4:47ad:8c70 with SMTP id h9-20020a2e9ec9000000b002b447ad8c70mr1203494ljk.11.1691654961945;
        Thu, 10 Aug 2023 01:09:21 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:74d3:226a:31b3:454c])
        by smtp.gmail.com with ESMTPSA id y10-20020a1c4b0a000000b003fe2f3a89d4sm1321790wma.7.2023.08.10.01.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 01:09:21 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 8/9] arm64: dts: qcom: sa8775p-ride: add an alias for ethernet0
Date:   Thu, 10 Aug 2023 10:09:08 +0200
Message-Id: <20230810080909.6259-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230810080909.6259-1-brgl@bgdev.pl>
References: <20230810080909.6259-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Once we add a second ethernet node, the MDIO bus names will conflict
unless we provide aliases. Add one for the existing ethernet node.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 93d64618ba58..48119266c6fd 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "qcom,sa8775p-ride", "qcom,sa8775p";
 
 	aliases {
+		ethernet0 = &ethernet0;
 		i2c11 = &i2c11;
 		i2c18 = &i2c18;
 		serial0 = &uart10;
-- 
2.39.2

