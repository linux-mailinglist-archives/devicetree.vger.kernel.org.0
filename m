Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9847A52F536
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 23:39:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353711AbiETVjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 17:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353698AbiETVi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 17:38:58 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEB1917B848
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:38:57 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id q76so8756395pgq.10
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X4AidQKqaOJBFkrFEoep38RZCtLNXvYdQVM6qUP1lGs=;
        b=mE1f5wQSYigKQ1+H9MOgTi3vyMSNM+UUuZ6gAvnXPS4r7gkjPfSajdqQnW2kzB4LbF
         b4XGc0fgAfGkt4mtIQ7Ze0qMx7ivhMLbaKUJ4m/09oBjy5KlDy8zUIjACsakUDHhjHvd
         Ey9MpmoJk5KIGRbcZpp1Pm+40kKvMZKbcFU+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X4AidQKqaOJBFkrFEoep38RZCtLNXvYdQVM6qUP1lGs=;
        b=d0+vwSXeRL1Aj+uqw4HNcIHnOwp4Emli9jPmZDZE7edSBLZdpRsRa4n7UQAMAeRgKk
         efdMlH5diEydikLkSqnWvi94/IByYfxqARlildYsKLtmIUNrWIK0cGjHAfli09axqTre
         GlF6xXpblyy1c05JyIkyUme7F+gL0e4bvVV9pzrINomCLh004gwa5c/kgJbSBXdX50rY
         Dx2MJ6xPyc420W/ErnnukFz1sqQI5KSwvPsUsWOpgUMzBGx2GQ4H93LtvmjItlr3Hzvv
         LsL7i98AuBluwbM0WnIHqE+gimrtqWru5GixTdFQY7UB2F2KtmZ+Zmfc7JJU9DgXtz6U
         WXMQ==
X-Gm-Message-State: AOAM530MN7hTdZRJBgrtG8YWzmJdwy0R+L032DLf7DZi7zssQ+RMoN+F
        JKlK9VwpI4h73xykTOIYCakIsA==
X-Google-Smtp-Source: ABdhPJxvhnEW+lCzuypQCqtWqhSrOFBqIvNm7dwoni+Rciqpfz0M8J51+7nSht53Vabi6hhC8rlW1g==
X-Received: by 2002:a63:1953:0:b0:3c6:e5e:9190 with SMTP id 19-20020a631953000000b003c60e5e9190mr10075599pgz.286.1653082737518;
        Fri, 20 May 2022 14:38:57 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:b090:3896:c312:c4df])
        by smtp.gmail.com with ESMTPSA id u13-20020a17090a450d00b001df955c28f6sm2070864pjg.37.2022.05.20.14.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 14:38:56 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        patches@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        Julius Werner <jwerner@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/5] dt-bindings: arm: qcom: Add / fix sc7280 board bindings
Date:   Fri, 20 May 2022 14:38:44 -0700
Message-Id: <20220520143502.v4.4.I1318c1ae2ce55ade1d092fc21df846360b15c560@changeid>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220520143502.v4.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
References: <20220520143502.v4.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This copy-pastes compatibles from sc7280-based boards from the device
trees to the yaml file. It also fixes the CRD/IDP bindings which had
gotten stale.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
It should be noted that these match the sc7280 boards as of the top of
the "for-next" branch of the tree
git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git

(no changes since v2)

Changes in v2:
- Use a "description" instead of a comment for each item.

 .../devicetree/bindings/arm/qcom.yaml         | 42 +++++++++++++++----
 1 file changed, 34 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 01e40ea40724..3d150d1a93cd 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -404,14 +404,40 @@ properties:
           - const: google,trogdor-sku0
           - const: qcom,sc7180
 
-      - items:
-          - enum:
-              - qcom,sc7280-crd
-              - qcom,sc7280-idp
-              - qcom,sc7280-idp2
-              - google,hoglin
-              - google,piglin
-              - google,senor
+      - description: Qualcomm Technologies, Inc. sc7280 CRD platform (rev3 - 4)
+        items:
+          - const: qcom,sc7280-crd
+          - const: google,hoglin-rev3
+          - const: google,hoglin-rev4
+          - const: google,piglin-rev3
+          - const: google,piglin-rev4
+          - const: qcom,sc7280
+
+      - description: Qualcomm Technologies, Inc. sc7280 CRD platform (newest rev)
+        items:
+          - const: google,hoglin
+          - const: qcom,sc7280
+
+      - description: Qualcomm Technologies, Inc. sc7280 IDP SKU1 platform
+        items:
+          - const: qcom,sc7280-idp
+          - const: google,senor
+          - const: qcom,sc7280
+
+      - description: Qualcomm Technologies, Inc. sc7280 IDP SKU2 platform
+        items:
+          - const: qcom,sc7280-idp2
+          - const: google,piglin
+          - const: qcom,sc7280
+
+      - description: Google Herobrine (newest rev)
+        items:
+          - const: google,herobrine
+          - const: qcom,sc7280
+
+      - description: Google Villager (newest rev)
+        items:
+          - const: google,villager
           - const: qcom,sc7280
 
       - items:
-- 
2.36.1.124.g0e6072fb45-goog

