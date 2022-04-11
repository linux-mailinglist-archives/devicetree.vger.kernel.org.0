Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 859B94FC04B
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 17:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347804AbiDKPXj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 11:23:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347330AbiDKPXf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 11:23:35 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443713B55E
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 08:21:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id u3so23569416wrg.3
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 08:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nO+ziw2+OwYKXZ9RD5bVom+jjKT6xZaKn0PGeE1P/J8=;
        b=X10M8i6LqgkLpnirkFuFhbGWDEdgC6SKSLtESuIZawzrbGK3IDi546aieNd097BY2z
         ay+i5c19JkFEsDx2AbdtprOjDQ0AEpDVdiNfXTuAyrem2TmGeMfY1L482Da59y67A6Us
         0ti9J5oHo+26Eahn4ebySPoEQsoQR8nfqcDQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nO+ziw2+OwYKXZ9RD5bVom+jjKT6xZaKn0PGeE1P/J8=;
        b=qqoSOzKYVd3w8+5uYVIeeNs8CG72iGpYnLfu4Q2gooIh1iw1XJ8B3N8V40gaO2aLD1
         O0lU0ECggeOX8XGkyrSrZr2JdiI9tAwycNN5nDZavVx/Eg5MZU+vEbry4sYSUAlmaEOb
         2Szqv5/9dmfZamQrez3SNe9htiPtBYaG/MXkvJkp2AaidYbIq/T8ZXEMNVLQWi0PALpq
         47FUVnHHlKLCCStYPJPGTl0bhFx2+C5+zyDRZpsa15RtzNvkCF9+SZSC0eWErq6+zGYq
         rRivr7WwdcHScZeKPQhzq8sn0sqz+1uagK/kGZo6ugq93Xiv95a+Ko6tr7KYnor6AkWF
         /5yA==
X-Gm-Message-State: AOAM531rmZ3DNqGIEMFjRchNQ9eh8C5h2fvctz99nMg2/6aNeDT/e1k8
        eZeyDFaz5upGHdrHLGJHjjrLZQ==
X-Google-Smtp-Source: ABdhPJyRgPtc/mqqSqMNepmVZKr82ZTqK/aUu8qj5by+Cy6OCHkYZF3ZdUnVzvPcFirBMDbg7iJKuw==
X-Received: by 2002:a05:6000:1848:b0:204:e92:5af6 with SMTP id c8-20020a056000184800b002040e925af6mr24963556wri.180.1649690479797;
        Mon, 11 Apr 2022 08:21:19 -0700 (PDT)
Received: from fabiobaltieri-linux.lan ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id bk1-20020a0560001d8100b002061d6bdfd0sm19512832wrb.63.2022.04.11.08.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 08:21:19 -0700 (PDT)
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
Subject: [PATCH v3 3/4] dt-bindings: update google,cros-ec-pwm documentation
Date:   Mon, 11 Apr 2022 15:21:13 +0000
Message-Id: <20220411152114.2165933-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.35.1.1178.g4f1659d476-goog
In-Reply-To: <20220411152114.2165933-1-fabiobaltieri@chromium.org>
References: <20220411152114.2165933-1-fabiobaltieri@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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

