Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AC9C54003F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 15:41:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236211AbiFGNlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 09:41:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243668AbiFGNlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 09:41:04 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC595EDD2
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 06:41:03 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so1728079wmq.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 06:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vPC6jxZnfPfgNm+MFhmEhunLFXf399c7vY0MUZYvuGU=;
        b=q/4xL/sdgvlK9gvRefdJknaYtO6jVRw+QgSII+KKedhvZ6gVfvufuqh6rkFUVMEDFu
         LQK4imouXb7W31iozQUeskBgOJnLtO5721jbjOpj4PAYGIZbE0d9/vJ5QASCX2EdDghk
         LyhSYt5Dzzu7CPz65GHJaySYWDWInrW3IA0L4FEsWVZhr3f6I7lHa7qDoN10WnQMRUW4
         xDzI9nMzfREJnsC4DE7GQL+0WtM/TYTzU3RpKtG/nsHm866AOJgtpxGL8orTvuLpMVsO
         HRpdLXXWR1Rgtp8/+c80un9QMQwCqtVUAJQjbyoDIe0asE4PXixFcmRDgwIlBLWeNOjb
         dgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vPC6jxZnfPfgNm+MFhmEhunLFXf399c7vY0MUZYvuGU=;
        b=XII3bb/zeY2fgtIOPilfznEPsNV+2Emh4mh/uuTveP/ruoG5YnFaEXXyW8m76KjF5J
         NSTQF/J1ytHR3oxtifuZzNSQxrOG+8GO2yZzfFYBPu+ohv8vBnumvBismgtRKejRLUhp
         Fj64fAfcXVm2iqrynxWOPzEhpuCbFxcE0H0S9uYuT5rgcIl0f8TqbZG66OzSQmfW3iRy
         R6jEOSoUEP8qVF4UStqWI3qxztflz1m0C8JQraXoFEo2h+LfQX0m1PtjSo5NDM65Qu1N
         SL677NyPfg1plHKh3iw0RsMyDhsRq4wiCQ1h+tDoB+GVwIu7/Pw6HAwC39lAD9Zx+klx
         t7UA==
X-Gm-Message-State: AOAM532Y1iyOVX3l34PHmKrGFr43pXrF9EPDk4eRDH4aFZu2lmZEvabb
        gkMmVg53KaU0Ze6rob7hBo3mlQ==
X-Google-Smtp-Source: ABdhPJz86TJAdibcSWQ0FCz127XuuMbcMfcUyOt/cqsyQ1mKDtqeJYR+8BNjfLLlb0vhI6s6TXNUmw==
X-Received: by 2002:a05:600c:1992:b0:397:8d3b:8a9b with SMTP id t18-20020a05600c199200b003978d3b8a9bmr53365160wmq.20.1654609261796;
        Tue, 07 Jun 2022 06:41:01 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k7-20020a5d6d47000000b0020e5e906e47sm17818792wri.75.2022.06.07.06.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 06:41:01 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, konrad.dybcio@somainline.org,
        andrey.konovalov@linaro.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 1/2] media: dt-bindings: imx412: Add imx577 compatible string
Date:   Tue,  7 Jun 2022 14:40:56 +0100
Message-Id: <20220607134057.2427663-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220607134057.2427663-1-bryan.odonoghue@linaro.org>
References: <20220607134057.2427663-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Sony IMX577 uses the same silicon enabling reference code from Sony in
the available examples provided.

Add an imx577 compatible string to allow for chip differentiation and
accurate description of hardware in dts.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
index 26d1807d0bb6..d1561841ccbc 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
@@ -19,7 +19,10 @@ description:
 
 properties:
   compatible:
-    const: sony,imx412
+    items:
+      - enum:
+          - sony,imx412
+          - sony,imx577
   reg:
     description: I2C address
     maxItems: 1
-- 
2.36.1

