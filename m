Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA616AA981
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 13:34:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbjCDMeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Mar 2023 07:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229642AbjCDMeU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Mar 2023 07:34:20 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF1B812584
        for <devicetree@vger.kernel.org>; Sat,  4 Mar 2023 04:34:08 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id da10so20604525edb.3
        for <devicetree@vger.kernel.org>; Sat, 04 Mar 2023 04:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677933247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=50W5TfsIyBHZCnqrB8wW+y0s3Yd7fO4zlzdk+X6FvGg=;
        b=C8Uw1qQS4QvIxXraDZkHdeJJIGFo1BWbZXUjRD7NddDVtvhcP2QU5k1plozViR93+G
         layv+UPnIVst5vKtmPbfEyrTEpkZ0Niz1DYaEdZFM6dqT5MZGE2wKbeZjB6kuyNyHiip
         ttHUsriXVIq/fEcGgdP8hdzzxCpiPyxSgypJ5YComKizlKyEqidPrpaQBTuzb6S5F8GS
         uybValGdD8tKjoUegVDNWM0RiLmyzID46B+erZAwdo28T86pucBLYLpKPe2nHGk0tbqs
         01CnbuWEseftxQeGvnnUKYgL6uq8uFiCVyx8XvD7HaxX0LVQzRJ6o/BSvuFyQnaAxIK/
         ZT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677933247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=50W5TfsIyBHZCnqrB8wW+y0s3Yd7fO4zlzdk+X6FvGg=;
        b=qH8djbpvMKH2xrLlWQG41a8AfIul6fw30I7DlQy3yFFExfZEbery4aQYLbrwQUxNDk
         OS1lZEDGaK6zAG+dpWMLO047aKMbXLubex+Nlkly3mWRcECBJu9tPfYtNdT+2qPjPcsx
         JYauvySPW3OLP9s4X0a3qYnjr7JvKBqK/obtBceuziFzIp4G6k9x/M8O+h7/yzdsOlxp
         8oT0xmgsrS/AOaUG/w6+KdcPs0PPB+Uo8dhvFGIC+zTdck6ITuuYmOY5s0zBnJ7/qcbQ
         HiDT0VkZ9k5LQYkpcU1lcjIZFBiY0e+0RHCYdpqhj7BX8mY9ouqRYKbx8XXjV68Co9fr
         J1/Q==
X-Gm-Message-State: AO0yUKUaKpMzztwoUn7HuABMJ22BQMbLsDOh5ba0qIKyUmjmUqEM/Klm
        JCveYDysJkFPpG2F5u2pI098ag==
X-Google-Smtp-Source: AK7set8rzKGc+52CkzHKm3mX0JJH9CxBvG7k9LXPzjTwWHZqRQURcOreV+tVSwX7BEOIrCgsbljoQQ==
X-Received: by 2002:a17:906:9f21:b0:88a:7037:855e with SMTP id fy33-20020a1709069f2100b0088a7037855emr5254034ejc.9.1677933247298;
        Sat, 04 Mar 2023 04:34:07 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:b758:6326:1292:e2aa])
        by smtp.gmail.com with ESMTPSA id q27-20020a17090622db00b008b1787ce722sm2017087eja.152.2023.03.04.04.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Mar 2023 04:34:06 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 6/8] arm64: dts: qcom: sm6115p-lenovo-j606f: correct GPIO keys wakeup
Date:   Sat,  4 Mar 2023 13:33:56 +0100
Message-Id: <20230304123358.34274-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230304123358.34274-1-krzysztof.kozlowski@linaro.org>
References: <20230304123358.34274-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys,wakeup is a deprecated property:

  sm6115p-lenovo-j606f.dtb: gpio-keys: key-volume-up: Unevaluated properties are not allowed ('gpio-key,wakeup' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index 4ce2d905d70e..00b153aa1b7d 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -49,7 +49,7 @@ key-volume-up {
 			gpios = <&pm6125_gpios 5 GPIO_ACTIVE_LOW>;
 			debounce-interval = <15>;
 			linux,can-disable;
-			gpio-key,wakeup;
+			wakeup-source;
 		};
 	};
 };
-- 
2.34.1

