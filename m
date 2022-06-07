Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34D95542689
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:57:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236265AbiFHAro (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:47:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1573491AbiFGXYI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 19:24:08 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C781F3F5742
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 14:33:23 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id a21-20020a9d4715000000b0060bfaac6899so5019547otf.12
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 14:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c2pa9kTVClc9GM8SEP2eSVvEOfAh+uMGKJQT+mQ7f18=;
        b=P0JgSEX0aExjuD8JjXiylIViwyIE/q4VOGoZopmsGvjgaY0FH93cr7mW8sgEycBrtJ
         KEKnZtAL+Y79VkrRteiMCsC7o/hOhruN1ZpNhcDJIC8CP1UdTAA8xff2VQK1Vquto43m
         bv+5gpxQwFCoLUsoNZ5eIGRLOGl3GY2EVZZKv73tJI+Sp02467MzWfIuv7iKUEVhoMmt
         W8H0oaIo06PD++ATGNUS4N1zBQ5vMUZ7tXDHXj5v/gyRU9lcXzP/VQMXPZN+r5WDw4a0
         DybuGLdDDS/aIynWicn8VlrFnEKL68ct4vtnCsZ4QCGU1Q9wgjPpiOhQpC713pnAQH16
         4yvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c2pa9kTVClc9GM8SEP2eSVvEOfAh+uMGKJQT+mQ7f18=;
        b=GJAMd/lo6d7E2bv/O6pjVFJ5QtcK4FTy0jGPsYw7NqyiA8Ngy7rzGB6g7OkyN0LmyH
         qZl+6ypXaAErztC0p8wzQTUQj/ryu9TxjlJZmWvuVmEPZSGnj0fU8n9iG9H95mvwR75i
         J17kad7BRDxn1lIF6BXEy7dYu6tR5mIWhR/s8ZD4xDwrGdmAjzk6fucC6Rp/Kjlmhz4J
         1XH0LjXifAZa7qFMF3pd14y7wgOTqDJitUWXbwY0IziS3zAOmuaoxnKeAdJ30mqyPvJh
         OkeqTEHag6sWws1vKRRl1R+EWBjxOjRVyOSurqjyzFgwHtfFZY2UH1Cz2in7uKahDyvA
         np8A==
X-Gm-Message-State: AOAM531q502J4d+vd+9Y6Yfx6A66V3AW8izpIXM042c0Qpq/U0151AfC
        1P8OSQOwgwagm4G02Vfe2+r3EA==
X-Google-Smtp-Source: ABdhPJwGGcqLNy/9H+HREP58pP7FwsnXmAgOi+oNaKxrQ7DtNcQQylItoluRT6B2fVQsmNe73HfJPA==
X-Received: by 2002:a05:6830:2aa1:b0:60b:ec44:c579 with SMTP id s33-20020a0568302aa100b0060bec44c579mr7983799otu.9.1654637600882;
        Tue, 07 Jun 2022 14:33:20 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id cd24-20020a056808319800b0032e7205619asm4966031oib.15.2022.06.07.14.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:33:20 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manu Gautam <mgautam@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys
Date:   Tue,  7 Jun 2022 14:35:39 -0700
Message-Id: <20220607213543.4057620-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
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

The SC8280XP platform has a pair of 5nm USB3 UNI phys and a pair of
5nm USB4/3/DP combo PHYs, add a compatible for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Added compatible for selection of properties for the uni phy
- Added combo phy in the same patch

 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml         | 2 ++
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
 2 files changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..777bc1a48aa8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sc8280xp-qmp-usb3-uni-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -377,6 +378,7 @@ allOf:
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,sc8280xp-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 60dc27834e1d..32b1e5b67275 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -16,6 +16,7 @@ properties:
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
       - qcom,sc8180x-qmp-usb3-dp-phy
+      - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sdm845-qmp-usb3-dp-phy
       - qcom,sm8250-qmp-usb3-dp-phy
   reg:
-- 
2.35.1

