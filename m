Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9A2619F2A
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 18:47:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231171AbiKDRrN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 13:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231829AbiKDRrI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 13:47:08 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E13D9D13F
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 10:47:05 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id x15so3454918qtv.9
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 10:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wZUcE77o1yzWjb0fTasyoyk6GrW1k8wolBp/KJmZeFs=;
        b=aTJncUTU61csNDX0UGztNm3uJUH4a3rJMzv7m0JmGps3lnjVb1938abOlb8jxHYYcf
         rbBTBAgHQDpIfOCewXIS1dJDmufR78SfSlNORbhIYCpfex6MggHAYds9uYlP+9CQ3XZr
         V7M1HG/V4MG3tAwAraszwL7kCKKRnc2+9AFvzp7+T15wM5EZODPbvJCKk6g5qbw/qXZT
         bbu4xZEKGwPDhntH+PsTIHo5U6ThmfSHyCr3HapDp+4KjwFenwVPW6isLMGPwbm31QBA
         tdmKUoCYPMWmESRS81x1BhMc6oMZEyuFFIr+BeTkWxgpvyVFJ5EOaMZWfXUVMXnBleF1
         xrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wZUcE77o1yzWjb0fTasyoyk6GrW1k8wolBp/KJmZeFs=;
        b=JP/elHidaR3DmElzFLw6WuqQPdFPAuGwxfIq4a4Pfbh3h4lJoXBuglzYpsRi/fGLVK
         Auu1lQh4xlFNr1tjWytikoy1FZr3ooeeRGEQV6kCGtHTCkv0kZE4V0ri7cY07hFLBq5z
         fRaCYVfFZ3dXYJKgfkG8AVPAoEAe5qlhkqbD/QI84Ofy7yhIOsV7gi9Os9pkBzk5VegD
         U2wVGR9zkZNWQCzUby+nTSNgZyCcnOGbqMhQJxqQSmSyRi4na5QeGxFz8cxyRhO9KDZo
         4ZjunLbuxdTPFrOpcMDzL4DnEmTAKey0Vs8IhB6+duICzQlXogJKQX639OjH15csVjMG
         Ti+A==
X-Gm-Message-State: ACrzQf2EeBOV4bak/y5LBdOWlgOob1oY+b7ieFDPVkZsWlT5oaqpbRpu
        lJ7jZ9YlnFH9i8gd37qB5byIig==
X-Google-Smtp-Source: AMsMyM45+S7Luyke1QTKNyUacM3gyzQXQHhhuHAb9M/YWli+5uvhotD+CNYWqDFz2zLNxQbC9Fn+aw==
X-Received: by 2002:ac8:7f51:0:b0:3a5:5e3d:4b56 with SMTP id g17-20020ac87f51000000b003a55e3d4b56mr6175118qtk.519.1667584025047;
        Fri, 04 Nov 2022 10:47:05 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id c7-20020a05620a268700b006f84ee3a4f3sm3432908qkp.48.2022.11.04.10.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 10:47:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] dt-bindings: clock: qcom,audiocc-sm8250: add missing audio clock
Date:   Fri,  4 Nov 2022 13:46:56 -0400
Message-Id: <20221104174656.123979-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221104174656.123979-1-krzysztof.kozlowski@linaro.org>
References: <20221104174656.123979-1-krzysztof.kozlowski@linaro.org>
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

The SM8250 DTS uses three clocks as input to LPASS AudioClock Controller
(althopugh Linux driver seems not needing it), so document the missing
audio voting clock.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/qcom,audiocc-sm8250.yaml       | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml b/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
index 915d76206ad0..48c7e10cc1b9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
@@ -28,11 +28,13 @@ properties:
   clocks:
     items:
       - description: LPASS Core voting clock
+      - description: LPASS Audio codec voting clock
       - description: Glitch Free Mux register clock
 
   clock-names:
     items:
       - const: core
+      - const: audio
       - const: bus
 
 required:
@@ -53,6 +55,7 @@ examples:
       compatible = "qcom,sm8250-lpass-audiocc";
       reg = <0x03300000 0x30000>;
       clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+               <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
                <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-      clock-names = "core", "bus";
+      clock-names = "core", "audio", "bus";
     };
-- 
2.34.1

