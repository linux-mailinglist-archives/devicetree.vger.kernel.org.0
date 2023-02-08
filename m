Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE9F68F72B
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 19:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231344AbjBHSi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 13:38:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbjBHSi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 13:38:27 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BF7229166
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 10:38:25 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id l14so11820537eds.4
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 10:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qGwN38UyWUPf0Ti04py3ZiYx4eNGqgCxHn2UnAKcmFI=;
        b=caUTdNfnCpo99+HJGaHCW3+wrxfWOBK4hpmxA3rgejdGanpjoN+dRRRHY57YjwaOOl
         Xv3P74fxnxdp7nZhKc6ykQHgre5O39Cjr99Wgu7uUZYP5v7OC40OKejBJc0FozL20HTD
         0ncwa96iejP3tBoxWgJtzVBtgixag2eUKWlw1ltdVzKCxJeZLu5Xuxfq0pVAeTls7B3P
         1PgrN26Tu+izVCz3WZ9r7m0j8Y0glIe1YqErduXNSbivplb69ZojQKx3wLUg+ueuvXJC
         EgCLUhxCDLqozFwWxo5WebtDCe7mXFpHSZ527b9BkUxV1NQStZdU15zwCNhdhQZGUgCz
         biUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qGwN38UyWUPf0Ti04py3ZiYx4eNGqgCxHn2UnAKcmFI=;
        b=7hJvqOVhkrgvhBBQYm4RSDHd/y0IkzkDNXvDpSRzgVm93CNd5PoVGA/YVjRvwAoo4q
         V9rVlM0bZ3BWBfv7b8//jaWUCtyr0sXdJhdAecfmkH9AJIYK0oXj+D8FOXMO7TaYo35G
         YBv5AiVARTaN9FPdl9OmkDaPga2VUJ2KZ3v5VFDW8BGyJ3c8KZcoyIybWtocV+Qsn/H4
         q7gsf0qqriciVU/6LBpmLOqFHuKxLCTUh2XaW7NcfR0J5s1ORzF68+uuybBLVySyDagZ
         WrPzNh8eHFTBG26VrzdHcR8na6AtC0Y4jJ7IBDJdvcpI57PTj16a82yXywSQgw7hmIcX
         6K5A==
X-Gm-Message-State: AO0yUKV2+l/8WiXvns9G3k5KreojVarRvBTJqp3Dew6IFGJVWI9Y/PFi
        L1rdlVRSxI7A7ajpDFF9pIt9cQ==
X-Google-Smtp-Source: AK7set/54VH2VwWs1RTVWYKuvMVa9NVklUfTAccygFgbdjhM/Pdb+a0+0VpSWKwP2kwS9d2TLAHvMg==
X-Received: by 2002:a05:6402:1d49:b0:4aa:b0e9:84dd with SMTP id dz9-20020a0564021d4900b004aab0e984ddmr10707578edb.3.1675881504680;
        Wed, 08 Feb 2023 10:38:24 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id d22-20020a50cd56000000b004aaa8e65d0esm5179663edj.84.2023.02.08.10.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:38:24 -0800 (PST)
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
        linux-crypto@vger.kernel.org
Subject: [PATCH v9 10/14] arm64: dts: qcom: sm8550: add a family compatible for QCE IP
Date:   Wed,  8 Feb 2023 20:37:51 +0200
Message-Id: <20230208183755.2907771-11-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
References: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
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

Add a family compatible for QCE IP on SM8550 SoC, which is equal to
QCE IP found on SM8150 SoC and described in the device tree bindings
documentation.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 1dea055a6815..7da89c478936 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1865,7 +1865,7 @@ cryptobam: dma-controller@1dc4000 {
 		};
 
 		crypto: crypto@1de0000 {
-			compatible = "qcom,sm8550-qce";
+			compatible = "qcom,sm8550-qce", "qcom,sm8150-qce";
 			reg = <0x0 0x01dfa000 0x0 0x6000>;
 			dmas = <&cryptobam 4>, <&cryptobam 5>;
 			dma-names = "rx", "tx";
-- 
2.33.0

