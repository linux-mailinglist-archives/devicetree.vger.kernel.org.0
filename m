Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8509657C312
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 05:59:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231529AbiGUD70 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 23:59:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbiGUD7U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 23:59:20 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB58378DD7
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 20:59:19 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id k16so647997pls.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 20:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ecs-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6/RJ44c6WPJhfmO9ma5Gldiq3CilNd56Qp91tJ0wDiE=;
        b=m6CLRDADXWr8qmRx38QTrVaf4Hcahnf7dFT+Gf0x5qWCdivOgqvUfCk5aAXn7bTDG0
         sZeoZi5pFp3VbMIj/xqlb5cxPwB3PUpBid9KXy7G7zroMs2n2RmCZ09V0fpJCYIgu83q
         iZGZj7fz+/wieYaMRV0p8cP1CHnN/mDts+KPfhqyNdnzWeBiyApByuCKj+WiWlzP57NN
         TqSSB6n7o+zdNaU1b+VjUAhP7QOqHKBGXAlU1RXfp1OSkZZMcTfOeIHZzT7T+Gszm24r
         B0zW9bwk6bSprKZVKXME1R92IyWCKdiCWO5k1tdH9722kbNvaYkkn0QYNL+cAy1UmZK9
         lSMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6/RJ44c6WPJhfmO9ma5Gldiq3CilNd56Qp91tJ0wDiE=;
        b=2YkEG7fKws5L7hOUwVSSBjdXshK3klvQaeqWVXfPg1jdvE3l9Yq27LVFpc/MD8k/Ye
         HpQrf4xBMWEJFEHMCcE31NGAKM1sd6u6KbJf4ThdLSty3PLgfdvfQnHbSRd4KIxy6OKw
         SN1zIK1diFV+rf6cDqxO2FsYFyASW4FM1d+yA+bOeCRZsEvzVHn3SS+FyDeFnVs0R3dL
         XSQlDf1FLe7PchhTa2q0woOK7c8BzqsbKEXvR/+yUpcMbRzoeCL3LCMmrtJqIB8LTVYR
         0NrhB0CkQ+O281EQN2e0Wzr0ch771GP19RNsLr0+2ofZjUVZ/DbG52raHPedQJUcMXkU
         p6CQ==
X-Gm-Message-State: AJIora+YF4cOCf3WI6ezH9h6PI10+xrYvTgDpfZIrvzk1P0eP93SALnL
        3dDL1ijxLkFb0xxJdBSVeCeh2g==
X-Google-Smtp-Source: AGRyM1vldKoZ9UAp5CvzfWmc31vlDWTZ5J/Arh6lXNh72F3Xynhjd21RyLXFt6K0AJtfxdEx626hHg==
X-Received: by 2002:a17:903:32c3:b0:16d:328f:8988 with SMTP id i3-20020a17090332c300b0016d328f8988mr647850plr.108.1658375959153;
        Wed, 20 Jul 2022 20:59:19 -0700 (PDT)
Received: from localhost.localdomain ([103.150.184.130])
        by smtp.gmail.com with ESMTPSA id z15-20020a17090abd8f00b001f21f7821e0sm299956pjr.2.2022.07.20.20.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 20:59:18 -0700 (PDT)
From:   Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 2/2] dt-bindings: arm: qcom: Document additional sku6 for sc7180 pazquel
Date:   Thu, 21 Jul 2022 03:58:43 +0000
Message-Id: <20220721033918.v3.2.I7ecbb7eeb58c5e6a33e32a3abf4d6874e6cb725c@changeid>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220721033918.v3.1.I10519ca1bf88233702a90e296088808d18cdc7b1@changeid>
References: <20220721033918.v3.1.I10519ca1bf88233702a90e296088808d18cdc7b1@changeid>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The difference between sku6 and sku4 is that there is no esim

 The different SKUs are:

   LTE with physical SIM _and_ eSIM
   LTE with only a physical SIM
   WiFi only
 Both sku4 and sku6 are LTE SKUs.
 One has the eSIM stuffed and one doesn't.
 There is a single shared device tree for the two.

Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
---

Changes in v3:
- Bindings and dts in the same series.

 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index fb1d00bcc847..ff0ed8d4d232 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -450,6 +450,7 @@ properties:
 
       - description: Google Pazquel with LTE and Parade (newest rev)
         items:
+          - const: google,pazquel-sku6
           - const: google,pazquel-sku4
           - const: qcom,sc7180
 
-- 
2.17.1

