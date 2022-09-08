Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 044AE5B14A8
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 08:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230320AbiIHGe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 02:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbiIHGe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 02:34:56 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CDA340BF8
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 23:34:55 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id az24-20020a05600c601800b003a842e4983cso1025274wmb.0
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 23:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=WTkzv8YEOlbdjLC6KXa6QEDUYut5q0I2wNQAEMPRcK0=;
        b=Sib4vZSou3PdVVHgBYUS1T1bEQ4RIm/nW5UZK4b0o1pGgpJV9d92Hu/FdX2wgGH7ik
         uFGjKuOIOMXAKrA/atvXUEUp9tXXQLKrTURSXmSYl4vdtvcyI6gIJF5QsvlNoSakK/zd
         Qq/RZ5/S/qjWzornY9hRMCXAEUmIVt7FXLde7CP5Vqp4WaOMop6+U+W7mmx91BNXu/z2
         pG0ILb+ibuvo25Gb77U4kfrO/DO5mxFmhYnDCpb89JFXK2LfUTUvIYB4ycoAlXN1QpdO
         xFpFSJHnEIV9FrswjC6MgtJ5v/XoS97dnqjUB0++CsyIXr2GxN4ZExhJROn4VHYvRADG
         Aakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WTkzv8YEOlbdjLC6KXa6QEDUYut5q0I2wNQAEMPRcK0=;
        b=clhEso9+oQfD85krPlCZM2dhrxa5LZt9OzNZVffxpVYqXZ83a5M/Cr+ZXVCWkKQa+0
         FlpoGxjY2uslCuH5TyqGAXvAMdD4Sjwyi6WCeZ33+fwJzW/oGwh2LHZAQvPviznN5VXJ
         R2968qMHRepscjHwTfjYE2nmpymyfvb7ED59CFIb5k2fHewpD3gANTEbMDqQfJNAwyy9
         RXRVdXXSOUuROIBIoppIgTDByjEMN8KALUbRQkOyHYo/iSR0A5iChkg3unfFKIcByfva
         wM0iwb4KYvzIS9wqmTyD2oK6DZJUZikkLl/1hJyGh2ZDfMhdWg1RXguHe/5h6swXkAKB
         bR9Q==
X-Gm-Message-State: ACgBeo1tcrM6n8N9nsaaG0NVokYa4I4mQ4ai/eooeRAXFaPgdbL99ztB
        Dduji8kzdwAuLmpS0g2qzu9A2g==
X-Google-Smtp-Source: AA6agR5mozG3Wx6d3MD3h4jByC/+SyO9pXAW/PlfvvU4Go+7CKyO7+PxIGHFX+EhLYNQCDi1HfHWxQ==
X-Received: by 2002:a7b:cd0f:0:b0:3a5:ec59:daf0 with SMTP id f15-20020a7bcd0f000000b003a5ec59daf0mr1071842wmj.13.1662618893648;
        Wed, 07 Sep 2022 23:34:53 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id m3-20020a05600c4f4300b003a2e92edeccsm1549598wmq.46.2022.09.07.23.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 23:34:53 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/4] ASoC: dt-bindings: qcom,sm8250: add compatibles for sm8450 and sm8250
Date:   Thu,  8 Sep 2022 07:34:46 +0100
Message-Id: <20220908063448.27102-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220908063448.27102-1-srinivas.kandagatla@linaro.org>
References: <20220908063448.27102-1-srinivas.kandagatla@linaro.org>
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

Add compatibles for sm8450 and sm8250xp based soundcards.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index a3a4289f713e..58b9c6463364 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -23,6 +23,8 @@ properties:
       - qcom,sdm845-sndcard
       - qcom,sm8250-sndcard
       - qcom,qrb5165-rb5-sndcard
+      - qcom,sm8450-sndcard
+      - qcom,sc8280xp-sndcard
 
   audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-- 
2.21.0

