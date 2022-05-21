Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D781152FE56
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 18:47:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343608AbiEUQq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 12:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355414AbiEUQqF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 12:46:05 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F6C111815
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:46:00 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id l13so12343049lfp.11
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q4UNyQ9G5Lhwfxa4KuG1fans5FyNR6CezgqxCfOyraY=;
        b=kVdmAQH7Ib0pcSBs4x2V3Mn85KJPhMxtDYwSXkmWxY272fQqnXV9P0sYe0SfR1UEG7
         yflCfjfuwU7ZgZsSsepTAewsYbpWUNJ3vCeg0qJgpTHBldpgvW5qeT2elST0stP/yfuG
         k68nwn1ffF2x7EkS/GOTlHC6+ylPsVFpE304XLnxfZqMKW+sWcJGikC9gBgsC+7VylCS
         zmiWLEdj8YzvdHrtocFlVxad3di2B1mcKQUx1AH6IxdxkD70ZqsHu/sbhonAfKMet2+v
         KHKDgMplPc3cgAvSYjC9kbnq4k8uAgOH442o2AwKf3whyhVexsotR8aK4nnZL1Os4rtP
         U9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q4UNyQ9G5Lhwfxa4KuG1fans5FyNR6CezgqxCfOyraY=;
        b=trC+zU9w1uvNk6t1/41YBpxPYark5vIZG6TBC2ti04u1rr5JZikTBw8GAdxCye7Y0t
         6nP9iG6pxGiKrTeAFeaxfX3ZOXJ4Vu6tfj6LCRV6Y7wqMndn0yugYeEZCv0udb5jen4m
         E7t7ebWfMfL7CekNUIJ7luEkFjsxvAhfjGkG4MtLdrtz68XyZ/5gXjwRAWDd1Z4dSPgg
         yFiky62axL8fHw5xDK4hEqYJGHOdf/THGvZHFEu3INQH8n/V+CzjMYxTpLXqEVbOBgk9
         /jrueWgKcZANjtaAk1Yq72GfWzDHP6ChyblSUeaEK9/7dqQ9KVJBSLL2G/pbQpILbzbf
         0peQ==
X-Gm-Message-State: AOAM531k2vEMLRedfjQzmohEZLxrF30sro0K8gWiD3RhQ6sDuwykN6Ks
        IBk9zClcDoBr7UFcOI+0ZpmAVw==
X-Google-Smtp-Source: ABdhPJxqyCE9sj2nUajGxMjyhOcE1bzwssbGKHjgnpaZk/Xid4K8TBp8xZQPEvxmO0aSkPMP9S1eoQ==
X-Received: by 2002:ac2:4e15:0:b0:473:c4c2:dc0f with SMTP id e21-20020ac24e15000000b00473c4c2dc0fmr10502177lfr.13.1653151558095;
        Sat, 21 May 2022 09:45:58 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f26-20020a19ae1a000000b0047255d211cesm1114282lfc.253.2022.05.21.09.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 09:45:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 05/12] dt-bindings: arm: qcom: add missing SDM630 board compatibles
Date:   Sat, 21 May 2022 18:45:43 +0200
Message-Id: <20220521164550.91115-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
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

Document board compatibles already present in Linux kernel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 888b640cf646..776149a3f628 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -279,6 +279,14 @@ properties:
               - qcom,sc8280xp-qrd
           - const: qcom,sc8280xp
 
+      - items:
+          - enum:
+              - sony,discovery-row
+              - sony,kirin-row
+              - sony,pioneer-row
+              - sony,voyager-row
+          - const: qcom,sdm630
+
       - items:
           - enum:
               - fairphone,fp3
-- 
2.32.0

