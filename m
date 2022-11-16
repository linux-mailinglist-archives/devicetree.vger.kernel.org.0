Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5363062BC97
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:53:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233028AbiKPLxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:53:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233058AbiKPLwf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:52:35 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D270C25299
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:42:17 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id cl5so29461503wrb.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gWH5hOBK7W4MMEx9jPAE45tTmF+UNzayAW9UWi6OYTQ=;
        b=lJKA5jo1RlvofLPVgPwyqWV50/sNRljBaD0Fgj/dGRdUYMFanwBA8xGJgbVJrLeb0v
         3Kv6HmcCHNX7epsv6I/mgqrc99SoqH3yS1S7PBViQq8FWLryEOu8ORdC+wn+szo+uC6C
         RcrBTTgRgxSRSOOW4gJGTI/1b7P/kzAq4nSBdZOLOaiLm5mAr6P2i4CWqwyPvK6ES0RK
         PzX2qT0YPZkFRs94CNFOAqK+UmGKHAFW3kBxxRW8pLmUyZZSiQjXKdDw0f/S+8HgwHB/
         b/6hWsjfuFKuFSptNQ5gWDAkVCQooq7sHHV0JWYRBpgN5F+JDb5iXeYlXl3goTzjxXhj
         xzMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gWH5hOBK7W4MMEx9jPAE45tTmF+UNzayAW9UWi6OYTQ=;
        b=eG43Lq/LFa7fmPR0Tk3cGVF8hCRw+Pvq6sDlzu1KW+5b+kduUNQfaF4YusnWUszZSG
         vfztnlQULCOgSPg3EBUAP6fPVI9t+q0A/GPbrizHQoP/2Jnj7gavXYuJGN7y0Uk9rCQl
         yEYRTb0IPwCwxSr2Qq7G8mSxi7DK4/WaUMZQauP21xaHIUhnYXtTJ972QvHAgcE4ZSIv
         HocHtuQfAAEz+vqTWYnlIAGoQBIjztY+OuICHWNR4ku2LXzS1rVizGavZUJg88t0p+tW
         aEnzDQynCL3Q3Loej2UACT3OWHfOHTL6uax6zNTv6figbz977L1PDD2Oz0oRSSuRQ9+O
         5bUA==
X-Gm-Message-State: ANoB5pkJLjeDG+PDR3iCZbh6+NQUDXr3KLvCiETxTu5qrxu/na7HHYdu
        R4toi8u5bi4CrZvWbBHGkT/S0A==
X-Google-Smtp-Source: AA0mqf65RLzVo7jcW0ax7gsTZQ1zHN4FCXO3KEtkSZJxCOm1A9RdBcw166uluFjxAu2c+sJB9bpqgQ==
X-Received: by 2002:adf:f2c1:0:b0:236:8cc9:1a04 with SMTP id d1-20020adff2c1000000b002368cc91a04mr13710826wrp.419.1668598936391;
        Wed, 16 Nov 2022 03:42:16 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id bt14-20020a056000080e00b002417e7f0685sm14541798wrb.9.2022.11.16.03.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:42:15 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH] dt-bindings: qcom,pdc: Add compatible for SM8550
Date:   Wed, 16 Nov 2022 13:42:10 +0200
Message-Id: <20221116114210.2673902-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible for SM8550 PDC.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index b6f56cf5fbe3..1c4f3df4ab75 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -33,6 +33,7 @@ properties:
           - qcom,sm8150-pdc
           - qcom,sm8250-pdc
           - qcom,sm8350-pdc
+          - qcom,sm8550-pdc
       - const: qcom,pdc
 
   reg:
-- 
2.34.1

