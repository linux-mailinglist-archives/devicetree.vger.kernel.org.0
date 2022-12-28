Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1D68657702
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:33:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232908AbiL1Nc7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:32:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232941AbiL1Ncv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:32:51 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 329F5FAED
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:32:50 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id y25so23637016lfa.9
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vc2vcBWD/PXgOVDu8nqsrR0srt+UNv7H2MyITJYE51Y=;
        b=zBDhvJrmjUhid0dBmQpMtfz4n1T3esELCKd1geP8RV5NK+T5hCV1rF69nK0RF9Pu/S
         Jq/K51BtE7bUrcsldNlgnTBDuzoCzAjZNlVSAVRPcKrZUjeqwYjU1ILDkHZ3dp1v9TNL
         CBrIFJRiEVyRzkiCg0g94TMPP50ZWe439OdNxRoWpRlHUmlmRGuNrrZol7aAr6qQkrIs
         NXShN/MEcgbUdkceTtY1Hp2BG1wRQ/gm2At2x8aMn/t4H+IgUdnQ3vSY5hkP+yXq8lX6
         chVIxZl76nNQmU6+iu/fd1cNO4ATJZbHz5lNJjhm6s9Rq2IYQ3zMkn5SExvdEJ1X7vN6
         M+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vc2vcBWD/PXgOVDu8nqsrR0srt+UNv7H2MyITJYE51Y=;
        b=mDfWa6+k92btuFc66+Ozm8XJvcBbZRt/divk8mcszaVP7HugOp8eW6w/2s+m7i/SZ+
         94uts61JEy7xrhLoTGmu4warznhJ4xH0vilAs15Jw45narturqDRp5E7bgs+gM04U/79
         yE8Ia50m4iwTSv75gjRA422/VgIn4jeHUmfq41p2Kae/W21c150/IJSGILITE4T8FS5R
         dfpqgvGdCN+H0/irtdoUoAA9TToYEoWH9uD6Sv3XxQ2pYmJp2KMJnQfnQIlhMWxjWmwG
         CbfGXaL3e4Gacyefp2vL3LDkiNHPL6GVC3K2Ny6N5j/L974Pcbcf7jZkohK7daPPlJGW
         2BwA==
X-Gm-Message-State: AFqh2krg3II1wqJ3Lmbnllj912tmxXcIGg80gbdu0UvqL2UD4oFAlWSM
        e9qLUaCs2eyqYb1rbI0FLdmYfQ==
X-Google-Smtp-Source: AMrXdXsA0BDvuQtN72oyy6bIy+u1Ak1CKj2k5y0DTtcv2hNQs7zAiXNywLHGDyQ/ebPrsPE1AZKlPA==
X-Received: by 2002:a05:6512:3a8f:b0:4b5:8a01:570e with SMTP id q15-20020a0565123a8f00b004b58a01570emr7987856lfu.45.1672234368567;
        Wed, 28 Dec 2022 05:32:48 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id d7-20020ac241c7000000b004a47e7b91c4sm2613876lfi.195.2022.12.28.05.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 05:32:48 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 04/16] dt-bindings: clock: qcom,gcc-sm8350: drop core_bi_pll_test_se
Date:   Wed, 28 Dec 2022 15:32:31 +0200
Message-Id: <20221228133243.3052132-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
References: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
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

The test clock apparently it's not used by anyone upstream. Remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,gcc-sm8350.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sm8350.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-sm8350.yaml
index 703d9e075247..b4fdde71ef18 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-sm8350.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sm8350.yaml
@@ -23,7 +23,6 @@ properties:
     items:
       - description: Board XO source
       - description: Sleep clock source
-      - description: PLL test clock source (Optional clock)
       - description: PCIE 0 Pipe clock source (Optional clock)
       - description: PCIE 1 Pipe clock source (Optional clock)
       - description: UFS card Rx symbol 0 clock source (Optional clock)
@@ -40,7 +39,6 @@ properties:
     items:
       - const: bi_tcxo
       - const: sleep_clk
-      - const: core_bi_pll_test_se # Optional clock
       - const: pcie_0_pipe_clk # Optional clock
       - const: pcie_1_pipe_clk # Optional clock
       - const: ufs_card_rx_symbol_0_clk # Optional clock
-- 
2.35.1

