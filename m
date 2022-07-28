Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E14F583D93
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 13:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236022AbiG1Lh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 07:37:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236088AbiG1Lh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 07:37:58 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3241954CB9
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 04:37:56 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id q23so2441877lfr.3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 04:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9Z9G71U6yLmqYfV3H8Vzk5oXbo1KOQzHy1FVjJVxjZ0=;
        b=jPn5dwmxRH7oG307eBZWzUVnxWvZlOPYR+X8VYe13hfRRfP3WGFJD3mD7Vx7XDhrmC
         +wXIcdSGQaFsg8UezbRvwrKKFloRf389WtVOlQTDS8MrnW+o+RrORkGAOWc1zFIfY9j9
         djH/D9Chz241Wl+WF2e4sABTyDdIIFntlO3sVt+/DsRwYQYbwQ/UX5pnUWVln1nQkYJW
         J+vI/PuE6uIge84qYgsughBvBXKAQ7D2E98RazmZYAfWwyZPZMTthv2Ao0u+HnCFjR7J
         qhPWxSGOv8nRe7dPcDMjc75SpG1YcQlcwwYlEcEb2+RJ9rjS3LAm0UJD0URkF7sAxe3o
         vlFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9Z9G71U6yLmqYfV3H8Vzk5oXbo1KOQzHy1FVjJVxjZ0=;
        b=ngdQ1VWsGTTr3pI/19CwkxK5pjYvTBZaJdPMq2ievpIKFMPWhrT+R89zAo0VqoFrC1
         sNlJDs3QZP5u05pp6JHIZ5fz/0YllIF/xPHfIFc3BTKJTswNjKTxXuDQgCV4DidSMCym
         twCzCCuNvRb4U1wkN5P8YE3g3QJ5aC/bGrrIKzko37P+1AwfhiaNS6yIe4hHx4QIYg0A
         zANKSkX5vtk2e+8gIjsu/SwJNwD8YxsNKf893R2UUZXDD2WKBDmdD7fOXrfS30MIKVMR
         tRR6IkB0zcNEkdJ5wq5oUfhswHw+Os7wzHmqpsSBw65vG4V1Z936Zs2oH3c4JXudG8Io
         p7CQ==
X-Gm-Message-State: AJIora8VwM5pbY/t7j6wuLg8qVN4PRmLFGNjxbPlhGY04KLSRVBmq+Zk
        CXXPoytNcaC+NymJCRmQQUlvOA==
X-Google-Smtp-Source: AGRyM1vr2dtmQX/ZVXdnig8yHC5mMpLA/k7pAOp/xe4XpWw+rAAikE8IilhkjwO549DcXYOQ4NZFeg==
X-Received: by 2002:a05:6512:e99:b0:48a:9728:3bd1 with SMTP id bi25-20020a0565120e9900b0048a97283bd1mr6351936lfb.325.1659008274425;
        Thu, 28 Jul 2022 04:37:54 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id l12-20020a2ea80c000000b0025e0396786dsm98192ljq.93.2022.07.28.04.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 04:37:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 01/11] dt-bindings: interconnect: qcom,msm8998-bwmon: add support for SDM845 LLCC BWMON
Date:   Thu, 28 Jul 2022 13:37:38 +0200
Message-Id: <20220728113748.170548-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220728113748.170548-1-krzysztof.kozlowski@linaro.org>
References: <20220728113748.170548-1-krzysztof.kozlowski@linaro.org>
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

Add compatible for SDM845 Bandwidth Monitor instance measuring traffic
between LLCC and memory.  It comes with different register layout:
called v5.

Cc: Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Sibi Sankar <quic_sibis@quicinc.com>
---
 .../devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
index c2e697f6e6cf..32e2892d736b 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
@@ -27,6 +27,7 @@ properties:
               - qcom,sdm845-bwmon
           - const: qcom,msm8998-bwmon
       - const: qcom,msm8998-bwmon       # BWMON v4
+      - const: qcom,sdm845-llcc-bwmon   # BWMON v5
 
   interconnects:
     maxItems: 1
-- 
2.34.1

