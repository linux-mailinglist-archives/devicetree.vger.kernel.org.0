Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28F166B8CA5
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 09:11:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbjCNILK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 04:11:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjCNIKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 04:10:51 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B4A984E0
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:24 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id h8so14672600ede.8
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678781360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JukF7EwfLBMxriFxr7b6HR8KqUN/bMf+iLVzJYllptQ=;
        b=rX2mq4MmYooeSHm+ppJw8OZKqYD6Ru2up0H9j6JAEJGAByMyIUXvUArXVlQ/zU08YV
         Wg2UjParDdozI6PPFqAZqskFtf3+6jisvXD5ZeA2jVKPW4CYcufKQ5+nbI7KDEYpAyzy
         nkopIA5mVFm2Y8qRFkXa+UmPHwtb3XHxVnom/WFmxkbQr7k8G1qVqJXXNpXgkDwidfxs
         Qahb9reQVOfTsnbx7vE/6lC9hynH8s7PICnFybkgdxp+sa8pJWqVxeXCoZss9TDzVhxd
         ByCdlhZsyhXhr49C2759An2nPM3M0+EqUwMGQwfhk+dHJADcswvy/Q34iYtEjDKai5i6
         xp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678781360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JukF7EwfLBMxriFxr7b6HR8KqUN/bMf+iLVzJYllptQ=;
        b=UoXNuYSc826B78fP3DK+IbZpQqu074bvul2Cz8O6xcQUgvq7MkwD3UNDbNi6FYVe5i
         nxkt+0up145Zn4XmwU0bWff80d+lXXFPN/fp3h5QNmlfdqxJ17gYsN4HVUR5Jw4L6E5s
         HYZZ9co1Dyt4zj96nBPZPFTxIOSIEpVLu8bWhKDXzqBVggaQQkMneLyR+SVI72yVfg4N
         2qDfwHZJ1/dhg8YRQHN3MqbK5hBZ42ouAt44eZfZDHmns1+qSsU548JIPbgZc+yqsAWG
         MCsluKYlZ7nm2Set7BAvyfQ1AZk4od+yPBMx9I9cf9UlcSHReaCj+q23da3nvmiZS0j6
         jkgg==
X-Gm-Message-State: AO0yUKUG2FeT66V5fw8cl1FZ9WAolWekwa/QoWO2Yb62mmVvqkSUChzk
        AuqAe84nWznVMAKwkf5kb0cSMA==
X-Google-Smtp-Source: AK7set8T09TpdapFRiu2QQ85TcIZbE8uSUgT+iEGb7O09lPavt8hySAt/caKrcSN0hl4b9IWnWOQ2A==
X-Received: by 2002:aa7:c50d:0:b0:4c0:d157:a57c with SMTP id o13-20020aa7c50d000000b004c0d157a57cmr35581915edq.4.1678781360588;
        Tue, 14 Mar 2023 01:09:20 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6932:5570:6254:9edd])
        by smtp.gmail.com with ESMTPSA id co2-20020a0564020c0200b004fce9ff4830sm584872edb.88.2023.03.14.01.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 01:09:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 01/13] dt-bindings: mailbox: qcom,apcs-kpss-global: correct SDX55 clocks
Date:   Tue, 14 Mar 2023 09:09:05 +0100
Message-Id: <20230314080917.68246-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
References: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SDX55 and SDX65 DTS takes clocks in a bit different order.  Adjust
bindings to the DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index d888ead09282..2992227631c4 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -97,14 +97,14 @@ allOf:
       properties:
         clocks:
           items:
+            - description: reference clock
             - description: primary pll parent of the clock driver
             - description: auxiliary parent
-            - description: reference clock
         clock-names:
           items:
+            - const: ref
             - const: pll
             - const: aux
-            - const: ref
   - if:
       properties:
         compatible:
-- 
2.34.1

