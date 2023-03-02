Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF006A81B7
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 12:58:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbjCBL6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 06:58:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjCBL6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 06:58:31 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA63A261
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 03:58:01 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h11so4522395wrm.5
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 03:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677758272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMSOEYbZIrYW4LAXPSptDIJKdwkIcCT5i6XvEkOqxb4=;
        b=kNFPYwq+OUk2zmd8+vPXJWTNCjypK01F2P9d3hlHy3WuO//IsA3S08rDSXdGY7To9O
         KfYJqcoEQ6GDYv6U7SdsBo3W9MUo6YMk4NvXphh1sAUpfqISaHkLUc01Q7PmkYuCRky5
         xk1cNsLG5oIX5C+Bd7zRtCkikPGEjp5wSrnfYkRnenIGMvaOy0vZsU5JaWjrDvvBnCfc
         BkRdI+Qekw7Bd/AJCjHhCn/RBtqp/Fnk9K3uhd2RM3yp/8VSywulWeVkN5SqFcII5d56
         0MzHozrkGjl0+60luTnRpN1ed3LlxGNufu4vdz0aapV91o82pdF5mQlLJ3M1/vc5yI9z
         EReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677758272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vMSOEYbZIrYW4LAXPSptDIJKdwkIcCT5i6XvEkOqxb4=;
        b=LO2s4mr3dr3vy4YoeKgjTQ8stEXALKvIe+lNOIN3pecPTRIczBM3IDQajFijWc3/W6
         IH3s7YK+1/uQ0HFvqS3vYFqoBkWfjmfrkmcUXv/Wkk6xRZ+oapfzYZIDUKBWW1DjqBTa
         k+XdjnzURHf/Qjq7NBjbftl9nb8IQbFL0HkUrzBa8RhDsH5qQ0xHKJjPVoOLUyChy5bH
         XwmAQQX1z1+39HzFjooZi6/IK9e8CCsB1AUu9Kw+MIpgHyqbPmVYLjUcPGTZROTQ2bs+
         FMBR4iDTiw0TOhsUheZ/OqTd4+19aemPCAb8j05BtpOLyT5RdLmPwY9kHkwa2e8tmIPG
         A8pQ==
X-Gm-Message-State: AO0yUKUYfJa9AKW2BwVDaby9tulTH11aOcVSlMNlc2j7YEdaWqY2RRys
        g2yPFW0NYQp1nRHh1Xmx3tqyWQ==
X-Google-Smtp-Source: AK7set9VFtG8k2kTb72OmJCbkeTB+4vzeUCKgK+4G8gPwjoZDyQhSnddGv1DN8XaxM1PT27nTtFUug==
X-Received: by 2002:a5d:42d2:0:b0:2cd:bc79:5432 with SMTP id t18-20020a5d42d2000000b002cdbc795432mr3912555wrr.25.1677758271927;
        Thu, 02 Mar 2023 03:57:51 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id v16-20020a5d4a50000000b002c5526234d2sm15298209wrs.8.2023.03.02.03.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 03:57:51 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     agross@kernel.org, andersson@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        konrad.dybcio@linaro.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/4] arm64: dts: qcom: sc8280xp: fix lpass tx macro clocks
Date:   Thu,  2 Mar 2023 11:57:39 +0000
Message-Id: <20230302115741.7726-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20230302115741.7726-1-srinivas.kandagatla@linaro.org>
References: <20230302115741.7726-1-srinivas.kandagatla@linaro.org>
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

Tx macro soundwire clock is for some reason is incorrectly assigned to
va macro, fix this and use tx macro clock instead.

Fixes: 1749a8ae49a3 ("arm64: dts: qcom: sc8280xp: add SoundWire and LPASS")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 022b0c041341..fc1504de6890 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -2020,7 +2020,7 @@
 					      <&intc GIC_SPI 520 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "core", "wake";
 
-			clocks = <&vamacro>;
+			clocks = <&txmacro>;
 			clock-names = "iface";
 			label = "TX";
 			#sound-dai-cells = <1>;
-- 
2.21.0

