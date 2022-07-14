Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 862105747E7
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:11:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237696AbiGNJK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237674AbiGNJKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:10:54 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6295822B02
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:10:53 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id a9so1734011lfk.11
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2x572kTW28ZwxF7SkDqo2Pgfax0p5nEhs9ONN4/XetI=;
        b=CLH1FzwjyJ4pmTHbuWqH5403hryL88/aa4JMFAOal47Ch7yeojUBszf8t6oR1ZIHMX
         1w9qrTNDP91qC2lkLz8qdiuhF9q2sZ547S7uo0QEX4+Cepop/Rtl6r+jNtRMQWzc061R
         /eYH6LWobnSVyYuoAORZ8seCFEyto0X8E8ytDKG9bAnkipMM4ecYHCbrQbbzUEXyveXD
         +8UZuGXQ3sXGYXwKTaGzzuHqIqk+a7F1tKJTmUZRDdKDy3TN258rYqukGk34qsDyrYei
         0cVq3lfGEiY55NfAhk3lArBeWde0WfJwAd7KomizIe/jzmqV8k0dBOVIqiA2QoW0IW+1
         gaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2x572kTW28ZwxF7SkDqo2Pgfax0p5nEhs9ONN4/XetI=;
        b=7FrpES8mAAgDzDwQJjon90gyjbgz/dUy3pap7T1mbVHI9mCHgHZBLu3+jLcJTyLk5/
         I11zXKZq8vqKccUddOZASJkF76UVf9t+Lruz/hcezvc5ySXl2sB+VxHj/Rm3smZ1ax8z
         wNdkionaHq8PrttiKhPnjKEN62nIA6IQeC+ZIOab27Xm3oe/YNyCSWLK/+wbxjlfAL1h
         D5kGQIsYkGMuohEQJz5zBzmCbf7B1xf2QDUxqSzf8aFuKI7EBUjpz9hTjXN1GVD6C6bO
         lkoKmaJxRrcr9jgBgy5ftUOSlpNw9HX8r8OnRocbFM9G/2NCfHTyEOm/XxVUVj0XPkI5
         GDoA==
X-Gm-Message-State: AJIora9/E+BFgka8bn0P1upseaiepgXQHuveXgkgjhf7S4IcMnBSySsZ
        AQNg3G929rcvDs/ZnhIndUbIeg==
X-Google-Smtp-Source: AGRyM1s+3qiNZ15HG5d2PH4s1iZLuiE2VWhiHT8fecPh3CdN6vbvO+FbbSsDbvSrpwI4NK0f1aRNUA==
X-Received: by 2002:a05:6512:ad3:b0:489:ec0d:761e with SMTP id n19-20020a0565120ad300b00489ec0d761emr4841296lfu.2.1657789852970;
        Thu, 14 Jul 2022 02:10:52 -0700 (PDT)
Received: from krzk-bin.. (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id d8-20020a056512368800b004790ef191e3sm250006lfs.216.2022.07.14.02.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 02:10:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v3 2/3] arm64: dts: qcom: msm8998: add MSM8998 SDCC specific compatible
Date:   Thu, 14 Jul 2022 11:10:41 +0200
Message-Id: <20220714091042.22287-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220714091042.22287-1-krzysztof.kozlowski@linaro.org>
References: <20220714091042.22287-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a MSM8998-specific SDCC compatible, because using only a generic
qcom,sdhci-msm-v4 fallback is deprecated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

---

Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Cc: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: Doug Anderson <dianders@chromium.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 85bbd4f7306d..e263a59d84b0 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2076,7 +2076,7 @@ qusb2phy: phy@c012000 {
 		};
 
 		sdhc2: mmc@c0a4900 {
-			compatible = "qcom,sdhci-msm-v4";
+			compatible = "qcom,msm8998-sdhci", "qcom,sdhci-msm-v4";
 			reg = <0x0c0a4900 0x314>, <0x0c0a4000 0x800>;
 			reg-names = "hc_mem", "core_mem";
 
-- 
2.34.1

