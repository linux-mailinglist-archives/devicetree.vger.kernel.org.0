Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 604ED7337A5
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 19:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230124AbjFPRuC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 13:50:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjFPRuB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 13:50:01 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D6F297D
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 10:49:59 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-985b04c47c3so135642366b.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 10:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686937798; x=1689529798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RkOHGgjFE12H6+MF6X5h/ixC045uFWknBhtoxLlJyVs=;
        b=p7wDqkGq7FKf8ahCriXk9pNRJOV2d2ZDRGS2rG7sWhplEvuiYU/53ceSAZTusBzHoe
         FHHqh1c234nfFustyplRUiovb9V8n32sPcnr2bMG/MHaknV+df4R0X6e0t1X03GMR5lr
         U2bm9odM7xn7F1rEl6rdJDSw1SZWTKMWhS4VoeJT9yxQqvdOzvQPocahV/aZ1ztqmkdx
         NOM417ZlgZNsIHLOyugwIuAYHJneX4jfQS60B/jqt338XMoqxFU3agTkZVHzVETI+7Yo
         1UjnfIFSEJMZ5aPzieoosbw8bG27Jz5TbwsZbWQShVeziHWcu52ERe5Wyar/2F+uda9i
         ZnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686937798; x=1689529798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RkOHGgjFE12H6+MF6X5h/ixC045uFWknBhtoxLlJyVs=;
        b=dEnV8w+6T70CsptHqZH0++gl6seg/+D5UrEMQQD00CvGDUFMQgw0r99M12e5H4NVt2
         I2yncJ8ABYWmMGneIo/ej06gGGILcks027Xmib6jbXOyVgXEQH+bWSXSAWZ78QStGwMz
         jOce9i21VSWZMqzQl5uA1ZUihJmISTLX6Hi0t2kqrTPl+Ce5SfoqpU3I4DAUsj3XZJz4
         neGUVwiJ2uq4c0NHpMexNjfV8AKloPe+zNzOqCkHaIfv7maznySHQoEWQ/ajy0v9trFB
         g903pM4MA3ZEGE2LlZj2MJmNe1QTWUY4zhMkpak/cTerHJidGWVcgCQieQyqvIHu/Yiz
         m03A==
X-Gm-Message-State: AC+VfDwfWMUk/ACMeVwVFQ7/3yYQN0QZnND0haHsZJvfedALe45JM3n1
        4LHnCouthqAHy4uozN55tkL+7g==
X-Google-Smtp-Source: ACHHUZ5UAHXiMMVvDvUDkN0RPG9NDnACQFm/5dOHncSz2T7Uj0IE22LEd7yJLy2oPDJlENf9U/IYSA==
X-Received: by 2002:a17:907:7204:b0:982:2967:cdb8 with SMTP id dr4-20020a170907720400b009822967cdb8mr2644524ejc.71.1686937798120;
        Fri, 16 Jun 2023 10:49:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id qn18-20020a170907211200b00982c33ea394sm1928309ejb.97.2023.06.16.10.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 10:49:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8450: correct crypto unit address
Date:   Fri, 16 Jun 2023 19:49:55 +0200
Message-Id: <20230616174955.1783652-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Crypto node unit address should match reg.

Fixes: b92b0d2f7582 ("arm64: dts: qcom: sm8450: add crypto nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 5cd7296c7660..1c71c0a2cd81 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4212,7 +4212,7 @@ cryptobam: dma-controller@1dc4000 {
 				 <&apps_smmu 0x59f 0x0>;
 		};
 
-		crypto: crypto@1de0000 {
+		crypto: crypto@1dfa000 {
 			compatible = "qcom,sm8450-qce", "qcom,sm8150-qce", "qcom,qce";
 			reg = <0 0x01dfa000 0 0x6000>;
 			dmas = <&cryptobam 4>, <&cryptobam 5>;
-- 
2.34.1

