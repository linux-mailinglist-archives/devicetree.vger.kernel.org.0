Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94668775E98
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 14:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230508AbjHIMMN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 08:12:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230417AbjHIMMM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 08:12:12 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD0FC1999
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 05:12:11 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5236b2b4cdbso494369a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 05:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691583130; x=1692187930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFvAA/v39L86qjDqi6cHkK3yiYvvs9Qa9ISV4luSpBA=;
        b=xL3avDDXyj4/FMXwMkRjvD8PM8gbQbPKCgERD66/NZC7Le60E06EAOIDqRkCRIUL0m
         auia88fULFN6PfqAd9UGkz5vMrVys5On8Jv8MskoyiVArlaUkvTL5zZqNjO92Sf3Jd0o
         fL/rXO61hBMg/V+tCrtfQ60zWLvaVFCvjN3JJgdxEMFKJeGYnvCTAU+GdWyIMvGRjsn9
         6uQIUc6fV176mqWIp4JfBrK+JGSvWywziRkx8WDFKwCwxOvqYWbPRVQF3RjKzf7AU9TM
         3d2ockDEmoJ7Ot1cLTSKEOxSUBqsIw8Qq0h55ygd+eVGZJ5mPMzAS2TCE9IkbX5yjakV
         iOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691583130; x=1692187930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFvAA/v39L86qjDqi6cHkK3yiYvvs9Qa9ISV4luSpBA=;
        b=MLO0y3SL3oPx9Pww74CciwphoqESAfpvynlD5/NR0MoP84C0/3m/UfN552BnmOdNnn
         IDctn0CPlf8wS/havdfdgf8OkmFH1p3oIe28748qx4bTZmytPG9neY8v7axFfDomCcY4
         F92izC4XB6v5Id/FERyqxXot8k69rYch94FSEhszZLad5UczNaThSnSlQsUAgBSpnOLD
         +Fj/47PYwe5q+DqhaLr/+CVRYpyn5NdgtgBvOMN+1AkfkT/xKX9qmS5KgzhntmtqTZlx
         Vm8LrHeNUxsKSEymFpnu5i7tDtrhDknR9nzd08S1vswglh4NhjVqLU8pvmIQ9K2SIFHg
         S8Ww==
X-Gm-Message-State: AOJu0YwPv7k+KRWh3AXo5FF53dz1WjbPPbyLfPSxUF09MY+34W7uwRYZ
        KxI7S5sKH1u1Fmw8I2HIWPwEFxClwYBlASHwOo8=
X-Google-Smtp-Source: AGHT+IFdMKH9L8wd2454RCyOpWWrJie6RwmaDWZQZMXoneh38svP9bLig4ymV9a7EA2LKFm1dKwF8g==
X-Received: by 2002:a05:600c:248b:b0:3fb:b530:a4e4 with SMTP id 11-20020a05600c248b00b003fbb530a4e4mr2033263wms.8.1691582678366;
        Wed, 09 Aug 2023 05:04:38 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id b13-20020a05600c11cd00b003fe1a96845bsm1808573wmi.2.2023.08.09.05.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 05:04:37 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, loic.poulain@linaro.org, rfoss@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH 2/7] arm64: dts: qcom: apq8016-sbc: Fix ov5640 data-lanes declaration
Date:   Wed,  9 Aug 2023 13:04:27 +0100
Message-Id: <20230809120432.1036405-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230809120432.1036405-1-bryan.odonoghue@linaro.org>
References: <20230809120432.1036405-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The yaml constraint for data-lanes is [1, 2] not [0, 2]. The driver itself
doesn't do anything with the data-lanes declaration save count the number
of specified data-lanes and calculate the link rate so, this change doesn't
have any functional side-effects.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index 75b4e5ff7c95c..0481a4a82090a 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -291,7 +291,7 @@ camera_rear@3b {
 
 		port {
 			ov5640_ep: endpoint {
-				data-lanes = <0 2>;
+				data-lanes = <1 2>;
 				remote-endpoint = <&csiphy0_ep>;
 			};
 		};
-- 
2.39.2

