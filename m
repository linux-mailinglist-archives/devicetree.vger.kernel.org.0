Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 386456C52DD
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 18:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbjCVRm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 13:42:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjCVRmT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 13:42:19 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC0A3664F5
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 10:42:03 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id cn12so30509596edb.4
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 10:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679506923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6YoLcTPZKVXftB08W3NbZhltu16S6sOPa/fbKkQopys=;
        b=vMVXU6qF5uPfQiK/Bc1B8XgsIycIm1jQadimPluLm8K/wyM+u6Jq+WuCIp6l/UeeIl
         5fUo9N4N3gXmvtfnuDzZtXdY8WGZZ7I+hTrbqYXAD7PmkhZ21ADyNI5i+mNEwszMiedu
         16WHiQyqBCHRMW+Doq2vIcDSsNI6SXiG+wcDdMzaA05GdaKecF5ASEmIDfJ58UdcphE+
         ouI3tNSdD0z6gQx86Y8G4MY1nlShqIwm4e9cNJ9uqqaHM6KRfzkSw3ZjmMP8eTDhA7pP
         iejEfiClGQMAKO9O6sHtQB2Rz1bUoL0110piP2tX2Ye0djAfh9H5rk3n2UsgJ6eVfLTq
         2d5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679506923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6YoLcTPZKVXftB08W3NbZhltu16S6sOPa/fbKkQopys=;
        b=2m+LDgiw9bjBV4tGI+K2taxBLQVoxY6kQtgoTA2wnUROrTeUIdVUWegQlQrNaU+0ke
         Spa7m2Say3I7wxfTISFV0wUtPxSTOyCh93ezGq3KhQ8xT2z83KQPIk6qCCZ0cOWB9Ng/
         1UTtbLj7iRlZB1oNRGgPAYNQaAJMv4IHplxxwaJ4z9sLlHffbeaBGx1XhPZqHBak4fJn
         e6uAThIk6D8Pks7d7Bwo/BG1SwBZfpyLw+SSHONgalhT/EFEON9UmiApzNCe8y6spYGx
         PEqiG7QUxwq6X2/Td9sx5n7lP9TtU+pYDpCNu3La55zSa83RKX6PHJ8fZxeC5cAh5oL+
         CEwA==
X-Gm-Message-State: AO0yUKUetIC8IN5hnYzfsN6BfQa54bSeTXEQL5vlOC5ZBXZThIoOt06v
        8OFEEZR3RqRx7TN3hkydAAFP5g==
X-Google-Smtp-Source: AK7set/v9ipzz/xYSRnzptLmxbRDC64HFad+TI9TbjE/FaBQk7BUWyLRrnSLoktbtcJ68Uu+gbki3g==
X-Received: by 2002:a17:906:d045:b0:922:78e2:7680 with SMTP id bo5-20020a170906d04500b0092278e27680mr7524862ejb.52.1679506923028;
        Wed, 22 Mar 2023 10:42:03 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id jx3-20020a170907760300b00930876176e2sm7548088ejc.29.2023.03.22.10.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 10:42:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 11/11] arm64: dts: qcom: sm8150: add compatible fallback to mailbox
Date:   Wed, 22 Mar 2023 18:41:48 +0100
Message-Id: <20230322174148.810938-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322174148.810938-1-krzysztof.kozlowski@linaro.org>
References: <20230322174148.810938-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SC8150 mailbox is compatible with SDM845.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 13e0ce828606..fa58ba82faf2 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -4097,7 +4097,8 @@ intc: interrupt-controller@17a00000 {
 		};
 
 		apss_shared: mailbox@17c00000 {
-			compatible = "qcom,sm8150-apss-shared";
+			compatible = "qcom,sm8150-apss-shared",
+				     "qcom,sdm845-apss-shared";
 			reg = <0x0 0x17c00000 0x0 0x1000>;
 			#mbox-cells = <1>;
 		};
-- 
2.34.1

