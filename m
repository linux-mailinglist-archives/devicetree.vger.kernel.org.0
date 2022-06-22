Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D366B55413F
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 06:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356690AbiFVEKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 00:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231189AbiFVEKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 00:10:21 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E7433E23
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 21:10:20 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id y16-20020a9d5190000000b0060c1292a5b9so12204324otg.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 21:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KKIz5tnMbAzg2NTgeo3md9ebE7cBvAVZ/cPgDeboDYc=;
        b=vnUfKCyey+9D47t4+fBJNDpMiXQmXk52knlTD60xh/r1aWgbpk6QNFQvnVfIi8baWT
         nlogEZBGYb5XZGB/4BAEucIqkKW04aMSvzJLa81SgyGF09TYxv4nt2BHeRRdRmadRoIJ
         I/IUYa/OJMEA5oRx1OINg+mPjgA4/UpHRceIO9PKqmnW6NwOv87Psc1eyG11rV/UmAeN
         uu/QCPXmyjY53Am0o0Xy7KD4ajmeu73duPDWksp5KecgNjmGyYpO6RsmnqKk5y2LumHe
         9bZ3mpN50LHSnfRirzE/hkhidANsLd8xBYk64LXTFOrnGzohmdg0h5KbA8COvS375jEX
         EbsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KKIz5tnMbAzg2NTgeo3md9ebE7cBvAVZ/cPgDeboDYc=;
        b=e9BfAQxIYCRcnD3lNBJl2iAaYf9FvwYAqCXE7EyUqBXUNqf/9jskvomxl9L32sUF52
         2K2mduFC3QB2GskY0ak7mwDs67TCAohkeZHmkB3bWRnXzYcw94Pj64/UZP/BiwvHYrqT
         Nq1N1T9r0w93xd6GPC95Bqmy2lPq3UOKUxHnLK3atc9f1yO3x3VVWDmlfadZYiVJ6Uo+
         z3xBu+/+s8U1ffddf8SHtvib2vdbNXgQPXpBn/4JUWg2rVJbwRQEM6pn1H0Fsanet26d
         NTQmxh53mgFoPeM60HVhHOZ8qtNIriFVaNIytUbMS7bfqE+uQK3luEkJYWFi0q30SYbn
         j++Q==
X-Gm-Message-State: AJIora89WLsou11YCgbXn+q+mq09FiUqRBx81sbCGtD0bvDHjsCWe/ks
        BN7qI86HwR3Hk/KQVTljaTjmHw==
X-Google-Smtp-Source: AGRyM1sWT0gOCuqBLlvADMHlst9VYSq5f2w5tIFcioSWUzKDFU8DOoqY4cd6CePeFZGAP2deC2pa/Q==
X-Received: by 2002:a05:6830:6306:b0:614:c6db:9d3e with SMTP id cg6-20020a056830630600b00614c6db9d3emr714330otb.60.1655871020116;
        Tue, 21 Jun 2022 21:10:20 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b7-20020a056870918700b000f2455e26acsm2314718oaf.48.2022.06.21.21.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 21:10:19 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: arm: qcom: Document additional sc8280xp devices
Date:   Tue, 21 Jun 2022 21:12:19 -0700
Message-Id: <20220622041224.627803-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622041224.627803-1-bjorn.andersson@linaro.org>
References: <20220622041224.627803-1-bjorn.andersson@linaro.org>
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

Add the CRD (Customer Reference Design?) and the Lenovo Thinkpad X13s to
the valid device compatibles found on the sc8280xp platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Added the two missing board compatibles

 Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 5c06d1bfc046..6ec7521be19d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -238,6 +238,8 @@ properties:
 
       - items:
           - enum:
+              - lenovo,thinkpad-x13s
+              - qcom,sc8280xp-crd
               - qcom,sc8280xp-qrd
           - const: qcom,sc8280xp
 
-- 
2.35.1

