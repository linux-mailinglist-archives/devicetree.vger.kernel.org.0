Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC3BA4E2AE3
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 15:33:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344597AbiCUOeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 10:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350124AbiCUOeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 10:34:03 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA93B5DA4D
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 07:32:37 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id r7so8671034wmq.2
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 07:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XM3tuLIOLKuoFOGCnY9ldxq/B57btEuYeuN4M8XmqsQ=;
        b=k3TzaFkW2ITtzM+ipWQmPH7EIvZpjfq8tQXSnSYfYtORSg9E1JlqkSn52OEEY+PrGJ
         eJ51kHd9HhC8ydWL2YRSl6myblzxJc11I8wWFookSRr6345W6G4DRfORu+06YiMWO7x4
         q0tK2xPNaw9DlfxE1j10+xFxC8SHLabyQDjXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XM3tuLIOLKuoFOGCnY9ldxq/B57btEuYeuN4M8XmqsQ=;
        b=ITjAZ5BLp6wQBrsTCOd/2KskLrZoCYmuePpfw9HV198NzzvB46MCPgF81fdP0MPKAX
         +xF2yOuVC9+xucMxqOITGGBIIApaFJeNJv1OyXf08OrXsypgqGCe9nCPyoQcfy+s9tFG
         eYGWGGqjzYFPl5aRz+DXoNwQu/gFrb73qSmUO8AYaPrFC9nTugUpyDexTP0Fg71DFnaF
         nGbJBPlxA/6rNj6XVbEoDJCwVjDeeWyYo5prLkaCU+zZNM/b9zx7CImQf6AbGA5PoDcg
         jg+sDojMDV2OE7u32svEDfnkKLIOA9hzQkClXa9rZkLr2oZP63v2PvuEjQgfJRuhFR9Y
         hNuQ==
X-Gm-Message-State: AOAM5321zjenFNKp3/4vhJmq+B3aZ8GqARYsvICvoBEDVw37LMK0MN7T
        /n0uGHEk68C0ebnFibPyNHL7fg==
X-Google-Smtp-Source: ABdhPJzW2HXM8hROOAKovH/CzhxqdjaB32lrjzpcegwTpr9JvugZ7L0ibXz6TMnHAH/T+i8p9t2LsA==
X-Received: by 2002:a05:600c:5029:b0:38c:9768:b4c with SMTP id n41-20020a05600c502900b0038c97680b4cmr9940150wmr.123.1647873156559;
        Mon, 21 Mar 2022 07:32:36 -0700 (PDT)
Received: from fabiobaltieri-linux.lan ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id u11-20020a05600c19cb00b00389efe9c512sm19092793wmq.23.2022.03.21.07.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 07:32:36 -0700 (PDT)
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
Subject: [PATCH 3/4] dt-bindings: update google,cros-ec-pwm documentation
Date:   Mon, 21 Mar 2022 14:32:21 +0000
Message-Id: <20220321143222.2523373-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220321143222.2523373-1-fabiobaltieri@chromium.org>
References: <20220321143222.2523373-1-fabiobaltieri@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update google,cros-ec-pwm node documentation to mention the
google,use_pwm_type property.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
index 4cfbffd8414a..2224e8e07029 100644
--- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
@@ -19,6 +19,12 @@ description: |
 properties:
   compatible:
     const: google,cros-ec-pwm
+
+  google,use_pwm_type:
+    description:
+      Use PWM types (CROS_EC_PWM_DT_<...>) instead of generic channels.
+    type: boolean
+
   "#pwm-cells":
     description: The cell specifies the PWM index.
     const: 1
-- 
2.35.1.894.gb6a874cedc-goog

