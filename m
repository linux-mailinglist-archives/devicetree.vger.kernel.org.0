Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F77E5009CB
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 11:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241745AbiDNJbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 05:31:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241751AbiDNJbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 05:31:01 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71DB86F487
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 02:28:37 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id b19so6049063wrh.11
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 02:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nO+ziw2+OwYKXZ9RD5bVom+jjKT6xZaKn0PGeE1P/J8=;
        b=QteKmChnkWb6oz4KhPGH8vunhcx6Vua8eilRI3R5J+5q+5LzJcdL1d3CiIenp+CYcc
         LFzSNQD6OaXrAJZ6kiN+C3eJwN1SfTOiFuEfkwMxrFvH5lbnSZmYkQ17wf7UCv5uFIUV
         pRaQMDW/nq0Z+IbluT23aHqsZCjGjoVOgmcDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nO+ziw2+OwYKXZ9RD5bVom+jjKT6xZaKn0PGeE1P/J8=;
        b=q8D7ncqkACB1ePQE7e0tBOlKKcFItpNsj7L94MOZYv4g4v9ega4RiLnwfZwKEfoWl/
         46Q80PF+2XN9+2IlBY5q4DjkxJ0Ue3PxLykwe2O7nvl9IoYPPlQL5sHinbp0U/LbIhuq
         ko/Cg8Y4xCG3SiXvOGHaWyZl5O4MT8WfERDo2zUOHzSDGcj5p43006J1nHWUdmlT5Z7U
         RE4zJC2ioKXxKPDcYb87B8jmQa4YrWu/b0yF+F+RgdMJhvIXt0NUo3DYvrpdcgOf3dTV
         YYCHEHXHFBfRzvuMNzmx3B15QaNNzEIL3BXA/KcEryTtExZsvVChNjd6Rc0bxBV4kl8R
         DEyQ==
X-Gm-Message-State: AOAM530dM2SDQpqlebcAyAzPAwuvti1sZMeDkwr/es2w9uhplYDZhpYO
        bM6EyUDczYNQHKiP+X6DHl4ryw==
X-Google-Smtp-Source: ABdhPJzaZFOkCNktJtaToekzPivMcuvQGu/MUEAC5mRmWLOWlbpLQSlFQg9jMeOJjlO0Xq/PSZoQQg==
X-Received: by 2002:a05:6000:1883:b0:205:c0cb:33c6 with SMTP id a3-20020a056000188300b00205c0cb33c6mr1431223wri.39.1649928516125;
        Thu, 14 Apr 2022 02:28:36 -0700 (PDT)
Received: from fabiobaltieri-linux.lan ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id bg8-20020a05600c3c8800b0038e4c5967besm1698099wmb.3.2022.04.14.02.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 02:28:35 -0700 (PDT)
From:   Fabio Baltieri <fabiobaltieri@chromium.org>
To:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Fabio Baltieri <fabiobaltieri@chromium.org>
Subject: [PATCH v4 3/4] dt-bindings: update google,cros-ec-pwm documentation
Date:   Thu, 14 Apr 2022 09:28:30 +0000
Message-Id: <20220414092831.3717684-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.36.0.rc0.470.gd361397f0d-goog
In-Reply-To: <20220414092831.3717684-1-fabiobaltieri@chromium.org>
References: <20220414092831.3717684-1-fabiobaltieri@chromium.org>
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

Update google,cros-ec-pwm node documentation to mention the
google,cros-ec-pwm-type compatible.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml      | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
index 7ab6912a845f..deb9e4488773 100644
--- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
@@ -21,7 +21,14 @@ allOf:
 
 properties:
   compatible:
-    const: google,cros-ec-pwm
+    oneOf:
+      - description: PWM controlled using EC_PWM_TYPE_GENERIC channels.
+        items:
+        - const: google,cros-ec-pwm
+      - description: PWM controlled using CROS_EC_PWM_DT_<...> types.
+        items:
+        - const: google,cros-ec-pwm-type
+
   "#pwm-cells":
     description: The cell specifies the PWM index.
     const: 1
-- 
2.35.1.1178.g4f1659d476-goog

