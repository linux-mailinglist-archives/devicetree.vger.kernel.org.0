Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56FED5157B1
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238891AbiD2WFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381101AbiD2WFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:05:18 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA868DBD2D
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:57 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id s137so7463439pgs.5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lg0znp4tIzr67FKK1Nhhf6wji0iF5bdxtTn8hwgkzcM=;
        b=PApcp8VKwX5Zz2rWVsrA+CkK8EbZ7rIO/US6xOyPYS1t+CX1yUSSyJYw9RnFAejAr+
         cJFo7Bm9w8Jh0ayAXUOzH5qBQhUe5YTe6uQq5XqDOWKgSzg3I0Npcd2qWJ3GNL9TIm5S
         qdrsZwq5D/1V5RWTFS5G1H4MRFMVIhsU1QwhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lg0znp4tIzr67FKK1Nhhf6wji0iF5bdxtTn8hwgkzcM=;
        b=1hKUr3ucX87P1ArrL6Ioni1Jhx2seJjFzoC+aP7MQCKtmaiVZ2u32yYGYYwXp7imtj
         8Tou+pfrdJ++p4EQ+Wdlu1Z7vXS7Gmo3XtgHj3RvujDwcudYp/jgCRlKoLFF7LMala7X
         hTR0Tiep1CarsbEM3Q85Iy0azaU5OchyzgPpf2JeSpxyTWpM+meypdURlhncFO0OVNi5
         glAOTBLiT6HLm0ayTVZjicWoU3vsZL1/TBo0hw5iCuhJDJ6/L2LaCw4hXS2NvBOdecfn
         1ECBexwzHAQ0FQz1Zxl6Kp+t9KQ3bMDLGxRcmcRMjh2fa5XVtplBrmp84NPtCZxltimQ
         cZ6w==
X-Gm-Message-State: AOAM531/Xti/FQu9I7bvritM9c7f3GwCJKctygRhlq5oJTL4whe157fe
        gnyy1yqwxIofTJiiGpttVl+U0Q==
X-Google-Smtp-Source: ABdhPJwoWIkCPaMSZloKTmVAXZFnTRu0zx6P5Dq7wIo4+nbmMxMvhctIdqMFKjdGQ0IdnMdcPYLbAQ==
X-Received: by 2002:a63:7e4b:0:b0:3a5:6636:5b94 with SMTP id o11-20020a637e4b000000b003a566365b94mr1042491pgn.173.1651269716871;
        Fri, 29 Apr 2022 15:01:56 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6161:73ca:10a5:5383])
        by smtp.gmail.com with UTF8SMTPSA id n9-20020aa79049000000b0050dc762813bsm167755pfo.21.2022.04.29.15.01.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 15:01:56 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 05/10] dt-bindings: iio: sx9324: Add internal compensation resistor setting
Date:   Fri, 29 Apr 2022 15:01:39 -0700
Message-Id: <20220429220144.1476049-6-gwendal@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220429220144.1476049-1-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow setting the internal resistor used for compensation.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes since v4:
- no changes

Changes since v3:
- Added Review tags.

Changes since v2:
- no changes

Changes since v1:
- no changes

 .../bindings/iio/proximity/semtech,sx9324.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index d689b2bab71b4..0be87ac05b97a 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,15 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,int-comp-resistor:
+    description:
+      Internal resistor setting for compensation.
+    enum:
+      - lowest
+      - low
+      - high
+      - highest
+
   semtech,input-precharge-resistor-ohms:
     default: 4000
     multipleOf: 2000
@@ -165,6 +174,7 @@ examples:
         semtech,ph01-proxraw-strength = <2>;
         semtech,ph23-proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,int-comp-resistor = "lowest";
         semtech,input-precharge-resistor-ohms = <2000>;
       };
     };
-- 
2.36.0.464.gb9c8b46e94-goog

