Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBED6637ABA
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 14:58:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230295AbiKXN6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 08:58:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230306AbiKXN5v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 08:57:51 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7107C12BFD4
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 05:56:54 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bs21so2596614wrb.4
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 05:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j5zOiHrYkBMW3rwOZKoxLE7hRWxL8uTujQnvARIzYyM=;
        b=sTv5vC7iFwaQXVfxqYnsvb358PFCDGS+VENrhxobNpUHB/fm0UNmpzGpJDwIEVI2Nk
         OBOki/p+P/oVS/wOVQZg+mu0AoAUsJrSovlmDTqqaYh65XQJVP+RtjZlhBzvNatY7xB4
         Pc48cXN2E/IiKfvtvSLLPKw1jQJpzGKyHe/Inq1RO2CC+MJQwzIswTArdaAis++cwQq7
         PO7z+a3tZWMozQ1WY7McPnXjt3dZj9AwOGj6xHV+oB9JDOcgn2yBp/WHJYfeofakig4c
         0Mq/v67SdDif3feK53qk366WNIkvvIkkGB99RhZQTm5vApVXgEfnteuZEmuD40bKAzpd
         xlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j5zOiHrYkBMW3rwOZKoxLE7hRWxL8uTujQnvARIzYyM=;
        b=2oME8KAKluRjnZ4vitpVp69ofSbUwWTTLNhly+x3CM3X0GAHnmYgz3bf8glk924Plf
         KHR0SJkgFJGskliRSRZ4ShSZepLO5ayaFmpNIqLBA1otQffzeU4RETm+zKywlcZRB8xo
         bURKJ7Hkp+b/MTeDNQv5j4pPOstcPhmxfiOrPqB58RasogTZGiY0wpuMDVRx2oapByX+
         cAcKHaXBIs/3ulq02CJlaoeR3SLk83sC07meB9J8FvX8ocDTHRd8bltICFZcVI0scBn2
         LAqFnXnUCs8CQx/C/s7f1JRWJ1LPOzBrpEV8OoIKe8YaPp6nyinSJKklE2Ub1+fuujmI
         aL0A==
X-Gm-Message-State: ANoB5pkQDtgBpTmH0x2whiVh3A5iRc0KBsOBRuMc9SBlpgZwH53j5M2P
        CGDLV6WUsjKaT/VlMY4pN/8Max3+ewSDYA==
X-Google-Smtp-Source: AA0mqf6CQiRmxjEuJUqBdHowtUQkcB5xTheHpZ9uR2GZ/Bi71aLpv2Vgjzj1wPUUSR3zchbR9s1oPg==
X-Received: by 2002:a5d:5290:0:b0:241:cdd4:6925 with SMTP id c16-20020a5d5290000000b00241cdd46925mr14259441wrv.525.1669298212811;
        Thu, 24 Nov 2022 05:56:52 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020adfebce000000b00241d21d4652sm1414322wrn.21.2022.11.24.05.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 05:56:52 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 01/10] dt-bindings: arm: qcom: Document SM8550 SoC and boards
Date:   Thu, 24 Nov 2022 15:56:37 +0200
Message-Id: <20221124135646.1952727-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221124135646.1952727-1-abel.vesa@linaro.org>
References: <20221124135646.1952727-1-abel.vesa@linaro.org>
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

Document the SM8550 SoC binding and the MTP board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes since v1:
 * added Krzysztof's R-b tag

 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7637cf27d799..a586a38c3461 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -68,6 +68,7 @@ description: |
         sm8250
         sm8350
         sm8450
+        sm8550
 
   The 'board' element must be one of the following strings:
 
@@ -818,6 +819,11 @@ properties:
               - sony,pdx223
           - const: qcom,sm8450
 
+      - items:
+          - enum:
+              - qcom,sm8550-mtp
+          - const: qcom,sm8550
+
   # Board compatibles go above
 
   qcom,msm-id:
-- 
2.34.1

