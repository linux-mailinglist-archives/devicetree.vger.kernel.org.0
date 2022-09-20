Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF8ED5BE4B9
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 13:41:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbiITLlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 07:41:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbiITLle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 07:41:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15DC174363
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:41:24 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id x1-20020a17090ab00100b001fda21bbc90so10487052pjq.3
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=AuOntKkRGiT94FIUgQn4R1HFHExIoQrEAqGWMSUIfV4=;
        b=fr2Q1GlVPlGRvQDMzULWiQ0GFhDfY3Tu95t0M5jKbu+tuZw7f9pZmBoDke10I7d+Mr
         u0oc+3souzsb5Ppkf9dFh15HGcpUDzqUZ+xEXAMVNMDT8JlK3uSuy9uDNL6+6tGPcjr3
         rM1EjUWKyKKWZU+9mFq74Ngya4JgX+si9SKOl3eDeTxLaYEzvkSnOaoiJUzeT8K9L0aH
         jNQKdH9MQjNbLJT7wy6Z9qmN5hMuZJhCYU7lk6F/ca6ZgBj/Le4JMIe1H49hWKxzjn2G
         qrn3USXyDxo938ixUi6RzmbBJhE0jIq26ommCjEH4EHr4jVIfpXPGpqRRwG6aJfp1ItH
         nn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=AuOntKkRGiT94FIUgQn4R1HFHExIoQrEAqGWMSUIfV4=;
        b=a2xioHhjUxPhVezHTwcI4k7xGcuGGui8Ibvz3g+hzQk7npp9z+OorU6FSDpsbnz1zq
         WyVa/N5IFrWXy216vXz9eGIvhjVUwVb3rIKprZI9Zqw3csQJuarBGnOuUQPL8TaD1deB
         nbfhlKvkyJ3BWnZJgZL6u7bCzjgEVGLE5uJY6I8zXnkrKKT/CCTGgHvq+wgeFwxQqkMO
         XZYcUH0+sume0LKT7yyGOlRAbCkY3YwAnvAqKwwd3wb01slynigY2wmxmlnCLRbh3uEH
         zdfbq+uafygBrzDVvNZvMf2lJQV7TA8qohfPkPrGwRrI2OcyQrQ/3duKT5dOP+9YGjWt
         YPog==
X-Gm-Message-State: ACrzQf0pNebAMD2sxVWgRDgwrsq+C6cH4b9MpizUDgNeEj8o1V/hlqLq
        QaHpR8B4d8H4JepWj0Weq74qCQ==
X-Google-Smtp-Source: AMsMyM7rDm/3Y8i8mmEvcUp/R8qXPRUbULRh9iKZEXYF8HiGJztEVLze59dL8+Twi2yydESPDzQeYQ==
X-Received: by 2002:a17:902:70c3:b0:178:3ee3:4c76 with SMTP id l3-20020a17090270c300b001783ee34c76mr4473525plt.1.1663674083401;
        Tue, 20 Sep 2022 04:41:23 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id p30-20020a63741e000000b00434e57bfc6csm1348793pgc.56.2022.09.20.04.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 04:41:22 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, herbert@gondor.apana.org.au,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, thara.gopinath@gmail.com,
        robh@kernel.org, krzysztof.kozlowski@linaro.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, davem@davemloft.net,
        Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v7 4/9] dt-bindings: qcom-qce: Add new SoC compatible strings for qcom-qce
Date:   Tue, 20 Sep 2022 17:10:46 +0530
Message-Id: <20220920114051.1116441-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220920114051.1116441-1-bhupesh.sharma@linaro.org>
References: <20220920114051.1116441-1-bhupesh.sharma@linaro.org>
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

Newer Qualcomm chips support newer versions of the qce crypto IP, so add
soc specific compatible strings for qcom-qce instead of using crypto
IP version specific ones.

Keep the old strings for backward-compatibility, but mark them as
deprecated.

Cc: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/crypto/qcom-qce.yaml         | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 4e00e7925fed..aa2f676f5382 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -15,7 +15,15 @@ description:
 
 properties:
   compatible:
-    const: qcom,crypto-v5.1
+    enum:
+      - qcom,crypto-v5.1 # Deprecated. Kept only for backward compatibility
+      - qcom,ipq6018-qce
+      - qcom,ipq8074-qce
+      - qcom,msm8996-qce
+      - qcom,sdm845-qce
+      - qcom,sm8150-qce
+      - qcom,sm8250-qce
+      - qcom,sm8350-qce
 
   reg:
     maxItems: 1
@@ -70,7 +78,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-apq8084.h>
     crypto-engine@fd45a000 {
-        compatible = "qcom,crypto-v5.1";
+        compatible = "qcom,ipq6018-qce";
         reg = <0xfd45a000 0x6000>;
         clocks = <&gcc GCC_CE2_AHB_CLK>,
                  <&gcc GCC_CE2_AXI_CLK>,
-- 
2.37.1

