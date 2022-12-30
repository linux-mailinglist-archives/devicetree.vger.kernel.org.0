Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 277FB65991B
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 14:57:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235040AbiL3N5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 08:57:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235093AbiL3N46 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 08:56:58 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43141B9C8
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 05:56:52 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b3so31843371lfv.2
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 05:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/LFPu/nfv09qeuH7foczG8nitidZm7jiC/H/irSOvB0=;
        b=FenquDmeM5xjvYwTOMVkaV1iRtMO3RONryG+sEZeZeoIYQMaHQ4rIPIHTtf9gwycFH
         9ED5Id07W+cOR1CqHsPoEH9J4DVdFwGtiAzFJqlFCldTxZoLxN+6UNzkGMELLyyHSa/0
         wxH94i1BAGrXOA52m1RHFIKoxa6UBPF3OouT99D9HGlf2Qj34V1MUaz/ImVx3x6yuxYT
         dFhEild0R6nRlch9HHZ4niwOmGv3sc0MHXVR94hqm8PoWYSbcqZQU1bjVWkRmy1g3FuH
         KTUXKvxXjH3Cf8ez1vqvtCqYrvU/bzWTCaDHQdP19FrQBqG7/bBv404dibrIVjhD1BDg
         m9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/LFPu/nfv09qeuH7foczG8nitidZm7jiC/H/irSOvB0=;
        b=lYmeN0OEef7G67u7LIG7qyI6ih29lDZC+mxYr0Pyk615mboaK/QjQNJ/6C/HJXupbQ
         EncUOtPP27cEBWzfMPWSkzEeO6gErfPmFlZ8hv69LsI/IVMfDP+pEG5abfG3ktsTeUjQ
         j207hjKOzQx7d2BJfblS+Mb2zVckM1ffH8w/DbtcdOfcmmMNEK8uQ5Ws7ATvG5G/hV/j
         cYJDxxYieBwQOsjNmsRKu6GC80z8vB1/7vFmM3Y8aLzrOaNygR1kG6Gwiwug68/U8XW/
         np0Py0HfBltq+7Eujeepfhi+s+cSyjpwePsAX1WTUx6ye/6Nk7POIIEgK60Q+JFhfr3Q
         sCyQ==
X-Gm-Message-State: AFqh2kq1XLcFQEvxbd9sWofoU10rLd3KXxgz7PWboF2XlhQJsJE1W7fH
        QnAfxvZfyszozj3fiz2hQiTBGA==
X-Google-Smtp-Source: AMrXdXtz5qJKZlog4jA903P0FBj6sn0ZKWF1jQjXH4xcsohitA2gUJ2BvVm6Md/VN8xGqKNaKGHAWw==
X-Received: by 2002:a05:6512:220e:b0:4b4:b610:1427 with SMTP id h14-20020a056512220e00b004b4b6101427mr14824948lfu.8.1672408611102;
        Fri, 30 Dec 2022 05:56:51 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d9-20020a056512368900b004a26ba3458fsm3454787lfs.62.2022.12.30.05.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 05:56:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/9] dt-bindings: pinctrl: qcom,sm6350-tlmm: add gpio-line-names
Date:   Fri, 30 Dec 2022 14:56:39 +0100
Message-Id: <20221230135645.56401-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221230135645.56401-1-krzysztof.kozlowski@linaro.org>
References: <20221230135645.56401-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow gpio-line-names property (quite commonly used) and constrain
gpio-reserved-ranges.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,sm6350-tlmm.yaml    | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-tlmm.yaml
index 41e3e0afc9a8..b099649e58f7 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-tlmm.yaml
@@ -26,7 +26,14 @@ properties:
   interrupt-controller: true
   "#interrupt-cells": true
   gpio-controller: true
-  gpio-reserved-ranges: true
+
+  gpio-reserved-ranges:
+    minItems: 1
+    maxItems: 78
+
+  gpio-line-names:
+    maxItems: 156
+
   "#gpio-cells": true
   gpio-ranges: true
   wakeup-parent: true
-- 
2.34.1

