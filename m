Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8551E5B51C8
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 01:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbiIKXIL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 19:08:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbiIKXIK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 19:08:10 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA14723143
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 16:08:08 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id az6so6028769wmb.4
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 16:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=03VzagkjLOZMZXtX4Iqh7uQQRbS04IHPhXkVjGsWCh0=;
        b=Kt8AT3oioPTuhpIZvqFKzPhuTeW1M3VUZsrHAJQl2NJaPZ/kjD9A+Bz+/eFfxYjN46
         MRgNrNh8b8TOaaKIS5Lq1foX9fFum0FOQGVv8xAwmKUQtDMmBtV0/VSD39+++LEtyEqb
         RnuZ3xQ9XX77Sq43sC7BsiKa8yKBO/Y2pfzXnYrZF8nuO8lnucsUGCwVxrr9PHee9tGp
         GmbqTv2/gCbNd0BKV16E+sT6tTYSI5lABVSWpkOZPqSdotx3kTtl7SoCz3wjAkK+Cvh7
         /C/wt7XH6pBbb7O441uzkbG69P52DycKUTtklqMhxJjLzaBS4l+ICDcXcLFt9ov1r+gb
         8VFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=03VzagkjLOZMZXtX4Iqh7uQQRbS04IHPhXkVjGsWCh0=;
        b=A+jrIcmrjnBDUrTZn5XSjQE1AFyFail4xvDQvDh3h5n6yDFpvKxMCo1NienWcFAi5s
         xCFDdMDMUJJV49CCrM/YynPNwOPktONB0DMZpo9hHIqzY2K0d89xhsakU6D+/XZ5olNl
         kkxZH7CMSWJDZgU20ExuViN+VWG8xrPrvTrkTyjhJJ4B4GjpKf/W9PAwVWdOql7dE2wE
         q6F4/3enIKmx38bEJvf2fwlKUhM3Dug6XOJsOXoVancojcuB1OwN0i9sCaRDwuWQ6QcY
         7Ss9HnkLOZFQ0Sv7h/zE+ptfwje9wAf/x5JhEgkzkAbjVguR0GjdTxcorxSoE1jIaMiR
         TlDA==
X-Gm-Message-State: ACgBeo2MTgmlkB2/dvByStFql8rENe+LfsZcmmicVGTCq++FRAIohUNF
        8vDSX9NW8EcQIJpzfipKYMWG7A==
X-Google-Smtp-Source: AA6agR7leoxxs5UHvMoKjSI+IgV1IfyQiK6YNBZYUt0YGqWG8VKPufew1vG1OE+FHkntf9DXjUp2vA==
X-Received: by 2002:a05:600c:35d0:b0:3a8:3f16:2c38 with SMTP id r16-20020a05600c35d000b003a83f162c38mr12579508wmq.162.1662937687288;
        Sun, 11 Sep 2022 16:08:07 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id h11-20020adff18b000000b00228daaa84aesm5780656wro.25.2022.09.11.16.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 16:08:06 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v3] ASoC: dt-bindings: Mark old binding qcom,cpu-lpass-apq8016 as deprecated
Date:   Mon, 12 Sep 2022 00:08:03 +0100
Message-Id: <20220911230803.1286202-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220911230803.1286202-1-bryan.odonoghue@linaro.org>
References: <20220911230803.1286202-1-bryan.odonoghue@linaro.org>
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

We've had some discongruity in the compatible string of the lpass for 8916
for a while.

Mark the old compat as deprecated. New SoC additions such as msm8936 and
msm8939 should use the compat string "qcom,apq8016-lpass-cpu".

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/sound/qcom,lpass-cpu.yaml   | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
index ef18a572a1ff3..fb39875c6ec7e 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
@@ -18,11 +18,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,lpass-cpu
-      - qcom,apq8016-lpass-cpu
-      - qcom,sc7180-lpass-cpu
-      - qcom,sc7280-lpass-cpu
+    oneOf:
+      - enum:
+          - qcom,lpass-cpu
+          - qcom,apq8016-lpass-cpu
+          - qcom,sc7180-lpass-cpu
+          - qcom,sc7280-lpass-cpu
+      - const: qcom,lpass-cpu-apq8016
+        deprecated: true
 
   reg:
     minItems: 1
-- 
2.37.3

