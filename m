Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 549DC5A6C28
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231245AbiH3S3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:29:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230182AbiH3S3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:29:34 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B08F65265
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:29:32 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id c2so11944415plo.3
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=NF3x2ZuQmc7E5ZKV3Bzdu/rI94Ot3GBmPnTGqOsq+uk=;
        b=cTeCi1YNZNnhxjJF/bb5tz/6qdHQ8eGVvhqFmNlqm9j9s3imudLob1H3teCiWaNidD
         vJKF3mF7/Mwqj7ArNNKTylqd3p25F0vT9cD0A5uUEvvFjJOVWjKG+C4K2PFB8mQL8VzT
         4qUgBmaWXcOEagw+nvwqw3+f+WnTMF3KXEWKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NF3x2ZuQmc7E5ZKV3Bzdu/rI94Ot3GBmPnTGqOsq+uk=;
        b=4pT/LWLMvL1Gjs/f19phkp/u4KR2brWnjpbszOx7LH198bzQx1yd/mLJku/013aQ3D
         H4SYNE/ql3SS5sn0nm9fGjRc0Y9AwZII2S98NUajCuPW6ZThodbwT6EhGdep4Tk9NPy2
         zCMkb+YaG2a6qxKo86dtsH6ev+vQxwwf5M36Kul+ViuwxeQWtk4EWwPU7l/8C0lETMMb
         LxEYbjpyGq4FJiFHpia6YFr57nlh+kmfz30SaJ2/qHKk2wXs90rlYVWBQGzgVsZvQoM0
         M9TecX6epFEIAboJZWnb3Xv1Yrzr99pec+YXaY8StBCIbUiA2//2Z/LoVmolSZz4Hgpm
         +bxA==
X-Gm-Message-State: ACgBeo1hOJmh912/LQHpGqhAqZ7lv/44Im9YKOqShQW/M4G9379ySkB4
        IaKHO38U8PpGzXqcKZU/xnimHQ==
X-Google-Smtp-Source: AA6agR4VzJf1HvOrQa9ExROd+6qMHu90X2VEe7IDxB74ZUaD42s7MsURvnaw4mJYuZQOfHzc0yCLdw==
X-Received: by 2002:a17:902:ec8c:b0:175:14e5:9ab7 with SMTP id x12-20020a170902ec8c00b0017514e59ab7mr4710363plg.141.1661884171931;
        Tue, 30 Aug 2022 11:29:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f016:d779:b6b0:fd9d])
        by smtp.gmail.com with ESMTPSA id u202-20020a6279d3000000b0052e37b32618sm9596358pfc.132.2022.08.30.11.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:29:31 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Sibi Sankar <quic_sibis@quicinc.com>,
        Jimmy Chen <jinghung.chen3@hotmail.com>,
        Rob Herring <robh@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/3] dt-bindings: arm: qcom: document sc7280 and villager board
Date:   Tue, 30 Aug 2022 11:29:21 -0700
Message-Id: <20220830112818.v9.1.I4fa927a776951095d55c41ddb64149c8c0eae57c@changeid>
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
In-Reply-To: <20220830182923.3720287-1-dianders@chromium.org>
References: <20220830182923.3720287-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jimmy Chen <jinghung.chen3@hotmail.com>

This adds a LTE skus for Chromebook Villager to the yaml.

Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
Acked-by: Rob Herring <robh@kernel.org>
[dianders: adjust LTE as SKU 512; remove two variants of -rev0]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v9:
- Squash https://lore.kernel.org/r/20220829084732.1.I9ef7f8b909a7afbef9ff2251a98c67033f37b516@changeid

Changes in v2:
- ("...: document sc7280 and villager board") new for v2.

 Documentation/devicetree/bindings/arm/qcom.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index c9b71dc97758..c2e1cbf12a03 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -575,11 +575,21 @@ properties:
           - const: google,herobrine
           - const: qcom,sc7280
 
+      - description: Google Villager (rev0)
+        items:
+          - const: google,villager-rev0
+          - const: qcom,sc7280
+
       - description: Google Villager (newest rev)
         items:
           - const: google,villager
           - const: qcom,sc7280
 
+      - description: Google Villager with LTE (newest rev)
+        items:
+          - const: google,villager-sku512
+          - const: qcom,sc7280
+
       - items:
           - enum:
               - lenovo,flex-5g
-- 
2.37.2.672.g94769d06f0-goog

