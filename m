Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B1E569F9FF
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 18:23:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232305AbjBVRXP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 12:23:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232645AbjBVRXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 12:23:01 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 824736A6D
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:22:58 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id h9so8496388ljq.2
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hw0gmk5DREE6xenNGf5tShOJfXuGFkAiD+ibfoL6i8w=;
        b=uPupm1NEC7YYz/Hmc9DzC/DDeO+lY6ymNSRTvoVhnV99asJsk11JGhtT2c0rvC5Jkf
         KPxzJkAcwrLASXspaWn1OQ9tFPUsnMKw0vVBcx1ll+ITBi9F9tFIz6I1xvjhKPuxjeU5
         PCTM185GnSfyvKAS5PyATnLNqDwbTjGQ8f1WK9D5RhRnOq+zd8iyhhAJSbxSsMrorCrF
         D4SVeMdiEyDqzchaR7oLdAoSvZSiLz79Rr0AW+wMRWPGZIjcqu4p1N8lv7/5JpxiUUBL
         WWBylgIKpdBIeOmoWVoP4APQJN9fn2lp8rpVrzzNIZN0x4Hsw66W2bVIfUu1PDJqkz9k
         pvbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hw0gmk5DREE6xenNGf5tShOJfXuGFkAiD+ibfoL6i8w=;
        b=4o4zbTbpk866YsrxPShzs3ldnr7soelYYh8X7dlJhNAAkVBS0gBuoXJSoivRKl+CrH
         jQtxHBFKqWpjGtkFuWBknatXbQ/zja7tqLjxzjuAspOQVOHN3l/+MQPq71sLQZOrIXKR
         PvO/oz8hpB4eWO1ZCVrw73qQvsXETmlp1hEWe4/tIKXB20UQfsju/aExvfpxEmQz67RN
         aRUOVzZGgldcbUx9/PTXoqsbEwzuObw3QfWHT48R1izBf85FN8AAHwT8027xXrHCMBJj
         9bT0o0T+rdBuwevpQXJTIVk5hZwXN/VSZgD7vHg9u41TCHtpvgwiTK+ji3v9Qifeh18d
         U2jg==
X-Gm-Message-State: AO0yUKWYHoOtm1znCcBPvSVa31YPLSAi2qzcimGtK+9b1zeDiiwZTWDm
        wTK8HP3fEJ+1sfb+wY57MUPWqA==
X-Google-Smtp-Source: AK7set/F0QEjh24+VDZDkcHKVysrkG7RcvVuztJjvI9Hlv2eF7PtjbsR1r9drUqu6TK4jXm6vc9INQ==
X-Received: by 2002:a2e:a98e:0:b0:293:1d08:d159 with SMTP id x14-20020a2ea98e000000b002931d08d159mr4728729ljq.4.1677086577866;
        Wed, 22 Feb 2023 09:22:57 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id r3-20020a2e80c3000000b0029358afcc9esm805233ljg.34.2023.02.22.09.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 09:22:56 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 07/10] arm64: dts: qcom: sm8550: add QCE IP family compatible values
Date:   Wed, 22 Feb 2023 19:22:37 +0200
Message-Id: <20230222172240.3235972-8-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230222172240.3235972-1-vladimir.zapolskiy@linaro.org>
References: <20230222172240.3235972-1-vladimir.zapolskiy@linaro.org>
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

Add a family compatible for QCE IP on SM8550 SoC, which is equal to QCE IP
found on SM8150 SoC and described in the recently updated device tree
bindings documentation, as well add a generic QCE IP family compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index ff4d342c0725..05ab0d5014c6 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1861,7 +1861,7 @@ cryptobam: dma-controller@1dc4000 {
 		};
 
 		crypto: crypto@1de0000 {
-			compatible = "qcom,sm8550-qce";
+			compatible = "qcom,sm8550-qce", "qcom,sm8150-qce", "qcom,qce";
 			reg = <0x0 0x01dfa000 0x0 0x6000>;
 			dmas = <&cryptobam 4>, <&cryptobam 5>;
 			dma-names = "rx", "tx";
-- 
2.33.0

