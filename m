Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 357A95E9AFB
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 09:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234249AbiIZHrZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 03:47:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234244AbiIZHqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 03:46:50 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9D7231235
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 00:45:05 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id z25so9522782lfr.2
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 00:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=NjcBqTJFp1/mhGXoZ4grlarWDQFDumiaumVxbwKxRAM=;
        b=w2pNr9gxj71HOrdhNVgrz+hniVShXM4b/iQksEXHOqHDcyJNwteJVIE433ib+VxPBs
         CyC945zmQFrZ59OpjBza7BPxT3RGR9vtvXDJ3U80R/JsNc9yzwmwjyO90AUL8z/wPHb2
         83pVO2vN7UNF8InGqEdhBLsZO/Re2hOIdnIQ9KoT1GvM5F3F8zweqBmRrZzq9NsKdwhR
         q7sV5KLK4BdszmAcF8yDJqNJ4j2P5tea1Pd/9PLs7RwENf9r8oPCVVaW3AzISvdDHu5O
         OMu9fkXy4tZx6k5PlfZMA9xqd9BU7XirzK6f3c3sjBmpNMUr342ZyXieLnava1B6ALEU
         qLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NjcBqTJFp1/mhGXoZ4grlarWDQFDumiaumVxbwKxRAM=;
        b=kFUcGXvjdtFyig4i68B9ZHlC4pJnUvUfnESMCl8J3+kOxjDesFNN/oSoPZLWMKMDNR
         b8UQmXZYEE5WzpYvoRhMrmepQj1gseuSk8kO7b2oa0tSG5wNTST+QSCQ/wqY/3R+pVqa
         FgthywZGK8d24231D+WF3tHAYo7zjo4nf6X4wVmfmk5vMwC4JFXDD12XXJg6kXBJ01ES
         eoldelT6893cgcftbDs5yvDm48UcUT9vIwKmTAM5H9uBgya9POB4Ey4P4vtyrEreJiar
         CkW+ihe8yLCzFTbyZ/cw5hDVzKg6ceb8oPpuQTdHJYmgX7K/XUB0o3xUe+Bx1kJkbkVl
         6sDQ==
X-Gm-Message-State: ACrzQf2MEmqPEt+8pRhsuV+k5/cBzmEoCOBGo4OWaovASfiAPSW1Q7iL
        TSGktQr89JRy6SJeApMfnS4+QQ==
X-Google-Smtp-Source: AMsMyM4wHReTbx+BtS09MdGMYd1aLLCvCj1qmwwlcqWq9c/B/wL1TgoLgeYpQitxhUQ4Yn5sj34qHg==
X-Received: by 2002:a05:6512:ad0:b0:497:a0fb:a597 with SMTP id n16-20020a0565120ad000b00497a0fba597mr8125514lfu.546.1664178304881;
        Mon, 26 Sep 2022 00:45:04 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g6-20020a19e046000000b004978e51b691sm2453298lfj.266.2022.09.26.00.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 00:45:03 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 21/33] dt-bindings: pinctrl: qcom,msm8953: use common TLMM schema
Date:   Mon, 26 Sep 2022 09:44:03 +0200
Message-Id: <20220926074415.53100-22-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220926074415.53100-1-krzysztof.kozlowski@linaro.org>
References: <20220926074415.53100-1-krzysztof.kozlowski@linaro.org>
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

Reference common Qualcomm TLMM pin controller schema, to bring other
regular schemas and additional checks, like function required only for
GPIOs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml    | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
index c162796ab604..c4ab54c9d5e8 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8953-pinctrl.yaml
@@ -59,7 +59,7 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
-    $ref: "/schemas/pinctrl/pincfg-node.yaml"
+    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
 
     properties:
       pins:
@@ -139,12 +139,11 @@ $defs:
 
     required:
       - pins
-      - function
 
     additionalProperties: false
 
 allOf:
-  - $ref: "pinctrl.yaml#"
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 required:
   - compatible
-- 
2.34.1

