Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D23E627AFE
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 11:50:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236201AbiKNKuw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 05:50:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235772AbiKNKuw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 05:50:52 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2754FACD
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:50:50 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id n12so27206738eja.11
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O82IdtMN4gU2HPdWYJ4k/Ae4A8assTn2dDMpMVtowGw=;
        b=txB1X4GT186dmbeGXeIIwIamZIk2UtUpnIl9NptygNxW0hHhi8FeNkijyxN7OvDPu6
         ++YXt0DR11UBd/RSStujeTgzhiB21mBdDRsdsxJl5MXBJlArSj0m8V0NqJoWyPDNkcmb
         AObqiV9lKX0bB3k7M9c3+U2T2gNgL+7qAyZDuMm1OvqBnZzFGcktGYUQMMup7p1cN+zm
         qbil9d5nOG7Ebsl9KG1foKZNfZKAAEtgiA5OZcWWXuqLsUXP3gY23BleZZuNs0pO9kNU
         lg5RnmC0wQgDObRxj5H6RunNTwEyMgocfKVEQgXQU4cROkqO8PpZaYLc4vqBaqKNd1gb
         TUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O82IdtMN4gU2HPdWYJ4k/Ae4A8assTn2dDMpMVtowGw=;
        b=EenLTqVd+h4kBfbC89QXOAJ8essOl6JFz02Sw2AJX81Ci7xkRJr9YnSMgsCEWBTXOm
         mxku0ppPLj5k74kusE+yhfuwG6BMCglQdpJA+8LvWbjnPz7TctI7RiENekXEqJ/xeNVr
         rsHzy10mZkhyCVnZvci8O68xDOMYlcb45HC7VD0AbDOPyfSie3MVF3KgHzwIUT3K5pB8
         saUdGcUwBlUCYBvan+bxUU96MH07FuYcpPKnZz6Pxiej1nJUI4ZlA03FEAldvgEY/mqq
         xW6fCDf44xipsTyrDT8BMxjKx3NQehjm+UssDRrmq1TeoccpPY3madmlyDEfJQjOz1rX
         Spqw==
X-Gm-Message-State: ANoB5ploT9/aiVGwBsRvwt52hgD3eh82yNe8Wbl0QFoQu/aNpo+yWxQU
        nT8r5uPMDheE4qGp347pxFyLTw==
X-Google-Smtp-Source: AA0mqf4DhiiUYgCZoIx6i3TSrYBciP3BDWtYhM4xbTCH9ibd42LoFFJte4VhLeXdm8d6RN5wXMDzUQ==
X-Received: by 2002:a17:906:414d:b0:781:951:2fb with SMTP id l13-20020a170906414d00b00781095102fbmr9849462ejk.64.1668423049581;
        Mon, 14 Nov 2022 02:50:49 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id kv20-20020a17090778d400b007402796f065sm4037053ejc.132.2022.11.14.02.50.48
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 14 Nov 2022 02:50:49 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: mmc: sdhci-msm: Document the SM6375 compatible
Date:   Mon, 14 Nov 2022 11:50:41 +0100
Message-Id: <20221114105043.36698-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221114105043.36698-1-konrad.dybcio@linaro.org>
References: <20221114105043.36698-1-konrad.dybcio@linaro.org>
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

Document the compatible for SDHCI on SM6375.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
No changes in v3.

Changes in v2:
- pick up rb

 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index fc8a6b345d97..12def0f57e3e 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -46,6 +46,7 @@ properties:
               - qcom,sm6115-sdhci
               - qcom,sm6125-sdhci
               - qcom,sm6350-sdhci
+              - qcom,sm6375-sdhci
               - qcom,sm8150-sdhci
               - qcom,sm8250-sdhci
               - qcom,sm8450-sdhci
-- 
2.38.1

