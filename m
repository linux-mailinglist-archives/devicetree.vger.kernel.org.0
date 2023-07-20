Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E43D75A7AB
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 09:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231316AbjGTHU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 03:20:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbjGTHU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 03:20:56 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E89A19A7
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 00:20:54 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so3268895e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 00:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689837652; x=1692429652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2fbCfe+Jexyxfwxcv5jmJWYFscoFzXBWfr2MIt+Bdx0=;
        b=PRW8dbua98J5/F75JrNUCJ+pUMEcV/dyaNVQwx+0rJuN4Vvwpp6nodcpUChTlV/ezo
         dFZ9RCQEQQX46AAfsQgSbt5VBVgEB9YFc4YFd4k0KQHlESbbo9FcBKv8sLxw/G4mpPh6
         q6yC5mK7cBO9sNu34Gqm+SpZiDmNF21Y5fYSiacwpNrPoDeJJxQl4FtdGuUb55AFplKG
         At/ttEohUBDkLaSZuMS/sH2v8xxJ77wynntf40GPdKwNcn95C7KqbRxPgzAZOCp/h5Va
         6F4Gjg0SVkbnAnwlYIzUIneuRsS//2pPiJDA5roXTVgWl6R+a0r03HcQYmkrKoxrlz/U
         ALuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689837652; x=1692429652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2fbCfe+Jexyxfwxcv5jmJWYFscoFzXBWfr2MIt+Bdx0=;
        b=VvUkzoyAWZ7Ujdw34rKmkSW7xnQf3uSKjKcMdbYpuPa2cHwjxwyWV9zqN+Z7Uz+i74
         WDonRjMOQ7/qH2Ce1QrtWbE8/M43Tka+a+ngFtxgrlCuG6LklgeCW/PKg/eGGIXh8pUg
         70B/SQoZlRdUoQRM1c7+33M8wBeHVEeZa8porISEufmEDabE267nLtZtixZMPdCr6I8z
         +uZdT4rpOoMF9JZ4pHd64485rgWGNJgjPn18YhMie+CmeBR8YD1rqHcbRW/gmQIfQD9L
         PMg2T5rwlUI/F3N6EMJJW+qLjuHwft57Wcf0Vf758z6xNasvkTzaaIBlKx3caAfMg3n0
         RLgQ==
X-Gm-Message-State: ABy/qLZz9vpF52JWs+g1wmMWxLu6tdhVcOXf2YDN20byygk8I41w/iyL
        5ukqwvB5S1MakgBts6sxTuzBHA==
X-Google-Smtp-Source: APBJJlEKt/pVw48GgiNZDrcBVhhom8ZjwJ/RpQ4cRWBf6FTiaULsbPWBd5IeXXmMuch+RQsWF5iYrQ==
X-Received: by 2002:adf:f248:0:b0:316:e249:c285 with SMTP id b8-20020adff248000000b00316e249c285mr1299138wrp.71.1689837652478;
        Thu, 20 Jul 2023 00:20:52 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v1-20020a5d6781000000b0031434c08bb7sm399767wru.105.2023.07.20.00.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 00:20:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 1/2] arm64: dts: qcom: msm8994: fix duplicated @6c00000 reserved memory
Date:   Thu, 20 Jul 2023 09:20:47 +0200
Message-Id: <20230720072048.10093-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reserved memory @6c00000 is defined in MSM8994 DTSI and few boards:

  Warning (unique_unit_address_if_enabled): /reserved-memory/reserved@6c00000: duplicate unit-address (also used in node /reserved-memory/hole2@6c00000)
  Warning (unique_unit_address_if_enabled): /reserved-memory/reserved@6c00000: duplicate unit-address (also used in node /reserved-memory/memory@6c00000)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts        | 1 +
 arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi | 1 +
 arch/arm64/boot/dts/qcom/msm8994.dtsi                    | 2 +-
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
index fcca1ba94da6..501e05efbef4 100644
--- a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
+++ b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
@@ -15,6 +15,7 @@
 /delete-node/ &audio_mem;
 /delete-node/ &mpss_mem;
 /delete-node/ &peripheral_region;
+/delete-node/ &res_hyp_mem;
 /delete-node/ &rmtfs_mem;
 
 / {
diff --git a/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi b/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
index 2861bcdf87b7..cbc84459a5ae 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
@@ -23,6 +23,7 @@
 /delete-node/ &mba_mem;
 /delete-node/ &mpss_mem;
 /delete-node/ &peripheral_region;
+/delete-node/ &res_hyp_mem;
 /delete-node/ &rmtfs_mem;
 /delete-node/ &smem_mem;
 
diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
index c374fba5d8f9..4324bd2bfe76 100644
--- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
@@ -281,7 +281,7 @@ adsp_mem: memory@c9400000 {
 			no-map;
 		};
 
-		reserved@6c00000 {
+		res_hyp_mem: reserved@6c00000 {
 			reg = <0 0x06c00000 0 0x400000>;
 			no-map;
 		};
-- 
2.34.1

