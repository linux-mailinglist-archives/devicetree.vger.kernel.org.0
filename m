Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E47B73C214
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 23:10:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232174AbjFWVKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 17:10:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231855AbjFWVKd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 17:10:33 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E4F41993
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 14:10:31 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f122ff663eso1483600e87.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 14:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687554630; x=1690146630;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eF9BO1+sTgEflyYG3uBq3qZ3S2MP3BOMyGGS7irakRI=;
        b=kQ8U3YflCUL1YQG0wCknGb3zbFndvhRju34td346VC7+OHp+RGQpg2ClzY5ukSetrT
         XpHh+MZP66vyyFf5ng1/i+/QcdXAvcCqahGxyPwna3QW5Sw6EKejVh+5CfJw5J9XiYMP
         OY8xMmvzTBTpEgmSE3/8Ecr+rbEN0rTAIrwBwxi9YPf5dOBW+2c8+MlkogyUmGEoJdJb
         34o2qDjXIK12xAD7ABog4QEdcnRfNHQGsWhKmyLy2hXefaHMZCBBg4ISjET5ztHIu1cO
         7el2PzfyLaJ5ByeAVb/24E6YRcj+NPzkjFqgzmIYlLV+VdTtuQuhqCDGxjzQG2X72Pui
         3/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687554630; x=1690146630;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eF9BO1+sTgEflyYG3uBq3qZ3S2MP3BOMyGGS7irakRI=;
        b=CbX1k78gvWF/v6aeFH1sNmBeym1SEDXSO6ipk/uJaq317uDUYlYwTzgvIOC8Sh29gi
         sgv0euVAM66iUgt5U/EwPLr+fk8iiJ+WKo0N3x68n+NCb1VmtTigK/a9qU9zF9xgrHLs
         9Src3uuQb0y2BGw1Khk8RzPI8U+Odvj+qz4D6uHLf08whRliHCSnaAnc5c4t5d/9v6qB
         eNC3wxNTQEdFopf9kPN6FQ4OerVIhGqkJKqjvh3yXJpn0oUNYls9mWkKbIuXVhyfCfKy
         iCgCK8J6BXraNZZNYqtStaNxzYa9ollOfdSWGg5MQn6cy6MujBiUBPB5AP1GHdvJEXVb
         sQcw==
X-Gm-Message-State: AC+VfDzpZCTHVm+OVqy/KV4f3H3xryhkSnQdG3fT0/ujpYz3iOmU+0eU
        8SHIMaiTsQ7DOtR1r0YAfpzYSxhsjw7tAN7n4W0=
X-Google-Smtp-Source: ACHHUZ5fhQQi3b0Jxv75nyWacBFXiBcDJ9zw04ejXME8JmcPnLBZ0cvTRnSUjmKvpRVn82eMXo8kbA==
X-Received: by 2002:ac2:4d84:0:b0:4f8:5ede:d457 with SMTP id g4-20020ac24d84000000b004f85eded457mr11379421lfe.55.1687554629820;
        Fri, 23 Jun 2023 14:10:29 -0700 (PDT)
Received: from [192.168.1.101] (abyk30.neoplus.adsl.tpnet.pl. [83.9.30.30])
        by smtp.gmail.com with ESMTPSA id q1-20020ac25101000000b004f858249932sm28551lfb.90.2023.06.23.14.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 14:10:29 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 23 Jun 2023 23:10:22 +0200
Subject: [PATCH] arm64: dts: qcom: msm8998: Provide XO to RPMCC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230623-topic-8998xorpm-v1-1-aa13edc51d7e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAD0KlmQC/x2NQQqDMBAAvyJ77oKJKKZfKT0kcVMXbBI2bRHEv
 3fxOAPDHNBImBrcuwOEfty4ZAVz6yCuPr8IeVEG29uhn+yAn1I54uzcvBepbzTOpTGFuJjJgVb
 BN8IgPsdVu/zdNpVVKPF+bR7P8/wDrGNpw3YAAAA=
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687554628; l=843;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=lH6Jm41r0mdMcgUy6XjNmzH96J0Qtanj71lp+seNSqE=;
 b=XyPpE8qZzw5CA/d0v7SUDrgykCPjHkrDJ9eDl2rw8jbwKKapkoyFvG8sdCsUfUhYaJ4MgziQD
 e3ZQU0sHhFKACcQSOsDLSsSi/JGnKKGJWrzrjYMviXnfbifIRGUF+h2
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RPMCC node should be fed a reference to the XO fixed clock.
Do so.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index f0e943ff0046..171f2e21d80a 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -334,6 +334,8 @@ rpm_requests: rpm-requests {
 
 			rpmcc: clock-controller {
 				compatible = "qcom,rpmcc-msm8998", "qcom,rpmcc";
+				clocks = <&xo>;
+				clock-names = "xo";
 				#clock-cells = <1>;
 			};
 

---
base-commit: c87d46a9e8ebd2f2c3960927b1d21687096d1109
change-id: 20230623-topic-8998xorpm-199f5fbcd169

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

