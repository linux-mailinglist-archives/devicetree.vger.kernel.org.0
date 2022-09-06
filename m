Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37DBC5AF1E1
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:10:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239099AbiIFRHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:07:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233743AbiIFRHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:07:17 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EDCA7170B
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 09:55:18 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id c11so12158817wrp.11
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 09:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=WTkzv8YEOlbdjLC6KXa6QEDUYut5q0I2wNQAEMPRcK0=;
        b=M99jl9E1fkmNyQPxB13ujz9bbQG38dvTwdVUXZ+h2hq7isW+SWcDwtKkOtq34A9fGl
         p2DE+KNbvX1+54o3ORqIooc+0NQImu296zkr7H+4Gn6z07nLsXdWM63oGIehl8ZpHQ91
         xyzzbg5NKkEisYZBb8JuxfoZX09XJWk27GQYj17UI4gcejt2iyPejPFeE1EKF8yW74V1
         22fENXnNAyCdEbXRVMs6X80SSB3c5N+H5OzdRameVlyIn1XV0O+8QbSMdJEmOvwf7jEm
         HKRomii94W4alukBmcU052ewtW15aikKaXtNtlI2FfiPXxq6UwB+FASfvNYL/s+N6Cnp
         w2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WTkzv8YEOlbdjLC6KXa6QEDUYut5q0I2wNQAEMPRcK0=;
        b=TckRoq4eVqahNTF4SxQp6nJ1Ss+zTaqlYFngUulPDlLGDaKolzBsOmgjypHCUsBgvr
         CB9uDUz2ZOB+tXIBRLrGn4irOt6gu+lVPIBdB4q7q77/tBAmI07oyNJBwSZ3/fW6hdUV
         oxM16sKpVH8V8Yd5tn3hH22UIojAOVXpUcA1q2mU18tfZq26YZy0hEEGHC0M9EH6Tthu
         u7wNWjgEit0ab49eej3o6yzaz/Lri7jo0J5W/YJK8BzQ6U196izzPmKhd9TG0anUyOLC
         Ak9/V/HZy758bt+XaeKciq+dWdnXGxbescgT8GYp8ZjLbFEnVdp3Fp4Wga+q7xdIgJdI
         PNLg==
X-Gm-Message-State: ACgBeo2HaXGA7uV2dReyqaWXw3OiI/uqYOYOIh/xpSRYPVKERXeQndI+
        Rpfr8PFU2qYXxQ4kBlbPTUH8ug==
X-Google-Smtp-Source: AA6agR7vkq9erMeoQXQL44pl4mfL0mPcVPCVM2Z3j8r0QTxXy6VMH44pXUXX9TU4JiHig1nhvMy9fg==
X-Received: by 2002:a5d:5983:0:b0:221:7cbd:df50 with SMTP id n3-20020a5d5983000000b002217cbddf50mr27462758wri.420.1662483316833;
        Tue, 06 Sep 2022 09:55:16 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id co4-20020a0560000a0400b0021eed2414c9sm13775906wrb.40.2022.09.06.09.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 09:55:16 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/4] ASoC: dt-bindings: qcom,sm8250: add compatibles for sm8450 and sm8250
Date:   Tue,  6 Sep 2022 17:55:06 +0100
Message-Id: <20220906165508.30801-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220906165508.30801-1-srinivas.kandagatla@linaro.org>
References: <20220906165508.30801-1-srinivas.kandagatla@linaro.org>
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

