Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3234555FEEF
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 13:41:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbiF2LkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 07:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230501AbiF2LkR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 07:40:17 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F003DA6F
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 04:40:16 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id d17so16380712wrc.10
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 04:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e12zOkbSl/TTgIy5byX+f+5dgcezW3bwpD9ZmWTyAuQ=;
        b=NnBWNG44+SIlVbLxBipqsu96uM69+jGagVwRuG1a5sKywjFPz4bc6Sz9Yp2FwsCKTG
         SS+3V6f47hyyDX1jUlIfUXWShQFnp0mz7BT7CHsM9c8lZ2fqaAx98iET7de6v/jviRfk
         TakgO4GO1TBHaBMxEhvaBZ+YAoaZqXMP1AxwUoQzRKUsY/YAEHwnQomyqAA15JAB+pRh
         aI87L2R3eU3Csu+vgIiEPs+QSiUJZsEoYdO29yNQVOywP4dkv8cJERWMy0v1YztOFz6C
         s5S/Ufjt9mGeAMfwuDoxehqIq//vtzx2MqDpQpMi2YKPCaEF4U+TnXf8Pw4cF2ipS2do
         SKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e12zOkbSl/TTgIy5byX+f+5dgcezW3bwpD9ZmWTyAuQ=;
        b=BXqQ25xbt9KoV4afzqEgFsMkmX1cYHRM1BbEXq8TscENn/je2XkUtfd916yHJn7GOf
         EqBD51I6l4rs6/z41MVmDHzzNZYGT4uKg87sPW4PZeOrWmyzLIfyl5DgTbL8q8qBprbX
         VXhFBO+w+2fX/51jmmWq6geDPlPmZ3LvADUward4lPcOTICQC7cGGOFgmkurX27p9erv
         UaSxt+2MJNYIJBXorrwYvaZauALlUK1AMm0MYVJUeyqMhpgPPPO5Gy6CPu1xP7/XAYbE
         tDeQYAALK5zhfNG8V1xzY8VKjEaRH7YIK1PptZIqOAI8K9nh1k3ge0WTRdDlRQmEgEqT
         4aBw==
X-Gm-Message-State: AJIora+Y3HlW2WycuFQo9kKQEOQJ4e8sCPUxJt6Sw9P0sf+FoeTKLa4I
        HTkE5JgWDj2QViom/faSU1e29Q==
X-Google-Smtp-Source: AGRyM1tJRec+suh/Fq+QJOybEcmANFgSQzjUGT4MbvFTQVpTbNTlOPIkzLoxXGoQPjcf121UTlpgFQ==
X-Received: by 2002:a05:6000:a12:b0:21b:93b9:134f with SMTP id co18-20020a0560000a1200b0021b93b9134fmr2644810wrb.310.1656502814986;
        Wed, 29 Jun 2022 04:40:14 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id q11-20020adfea0b000000b0020fff0ea0a3sm16136500wrm.116.2022.06.29.04.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 04:40:14 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, srinivas.kandagatla@linaro.org
Cc:     rohitkr@codeaurora.org, quic_srivasam@quicinc.com,
        quic_potturu@quicinc.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH] ASoC: dt-bindings: Fix description for msm8916
Date:   Wed, 29 Jun 2022 12:40:12 +0100
Message-Id: <20220629114012.3282945-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For the existing msm8916 bindings the minimum reg/reg-names is 1 not 2.
Similarly the minimum interrupt/interrupt-names is 1 not 2.

Fixes: f3fc4fbfa2d2 ("ASoC: dt-bindings: Add SC7280 lpass cpu bindings")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/sound/qcom,lpass-cpu.yaml         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
index e9a533080b32d..ef18a572a1ff3 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
@@ -25,12 +25,12 @@ properties:
       - qcom,sc7280-lpass-cpu
 
   reg:
-    minItems: 2
+    minItems: 1
     maxItems: 6
     description: LPAIF core registers
 
   reg-names:
-    minItems: 2
+    minItems: 1
     maxItems: 6
 
   clocks:
@@ -42,12 +42,12 @@ properties:
     maxItems: 10
 
   interrupts:
-    minItems: 2
+    minItems: 1
     maxItems: 4
     description: LPAIF DMA buffer interrupt
 
   interrupt-names:
-    minItems: 2
+    minItems: 1
     maxItems: 4
 
   qcom,adsp:
-- 
2.36.1

