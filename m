Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7956D6D2B17
	for <lists+devicetree@lfdr.de>; Sat,  1 Apr 2023 00:13:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233507AbjCaWNG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 18:13:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233460AbjCaWM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 18:12:56 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75EA120619
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 15:12:36 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id i6so29069525ybu.8
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 15:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680300755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gbsW0FcE5qqhDIMlHuiVbXHRMEHkoDZZEt/YtNg2DNM=;
        b=FvQAvC3TAZE9QE7W+H8Y6xq0+90J+AkW9Jq3WfZu1mXlXG9GIX2cQkzK8LehXPaZe8
         XZy9U3wkpFLYGZztz86NMDdQV69wFvoFgI3SkxSs6Vmn8Q7aJhTJlDFFbGOQu1GV1TWk
         wzd3Od3pdOCll8RyKStkF4G4OWC5IFoyT3OWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680300755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gbsW0FcE5qqhDIMlHuiVbXHRMEHkoDZZEt/YtNg2DNM=;
        b=xO/fleN1pw97NnXBfo9434IbWXfG9Sqt+zqgbhvrdtbVXEl6KfCLEaos80Mt0jCNOH
         XJIHTaVWE7hEP9l3d7OKi+1sNfr4ere6Piv0kF1M6aP26wJzOxaQrPz8NAjQiA8lCbqP
         Xm+goCC+kFB/btEHPm3KJmAL9Ya47TkSpqS6r4586qIC52y1ma6gUhq0FyQxWZfemm9Y
         hEV++IahZXSFC8yW7Eydt7WyKlPs3gAilUY/BdV5YF98IBpxroXj8CvIgBTrnfG+Hqif
         oKSDkh0nsQZhPrSfG3WyiFFOgMdsS6Xtrcx9OAzsEG+/R7N39nOKOrFia8oJ6AMH4l8G
         Qjzw==
X-Gm-Message-State: AAQBX9esprpqaHDMMSLg3QILZPOKczDsUyefUNLfeALY4PI5Vgkjppi2
        fIZCzPkXM718FdhSfaG/KlTnxg==
X-Google-Smtp-Source: AKy350Zwij10RXkh5IOn5YyhAQQl1uJBaGHEDTVmJ///DgObvKiniO3Hppma1Q1jCpKg4AeBU8jdTw==
X-Received: by 2002:a25:b122:0:b0:b60:d281:de97 with SMTP id g34-20020a25b122000000b00b60d281de97mr8813526ybj.28.1680300754850;
        Fri, 31 Mar 2023 15:12:34 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:a8f6:869a:3ef5:e1d])
        by smtp.gmail.com with UTF8SMTPSA id p7-20020a81b107000000b00545a782b485sm787373ywh.113.2023.03.31.15.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:12:34 -0700 (PDT)
From:   Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc:     seanpaul@chromium.org, suraj.kandpal@intel.com,
        dianders@chromium.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Mark Yacoub <markyacoub@chromium.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v8 08/10] dt-bindings: msm/dp: Add bindings for HDCP registers
Date:   Fri, 31 Mar 2023 18:12:10 -0400
Message-Id: <20230331221213.1691997-9-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331221213.1691997-1-markyacoub@google.com>
References: <20230331221213.1691997-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sean Paul <seanpaul@chromium.org>

Add the bindings for the MSM DisplayPort HDCP registers
which are required to write the HDCP key into the display controller as
well as the registers to enable HDCP authentication/key
exchange/encryption.

Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

---
Changes in v2:
-Drop register range names (Stephen)
-Fix yaml errors (Rob)
Changes in v3:
-Add new compatible string for dp-hdcp
-Add descriptions to reg
-Add minItems/maxItems to reg
-Make reg depend on the new hdcp compatible string
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
Changes in v4.5:
-Remove maxItems from reg (Rob)
-Remove leading zeros in example (Rob)
Changes in v5:
-None
Changes in v6:
-Rebased: modify minItems instead of adding it as new line.
Changes in v7:
-Revert the change to minItems
-Added the maxItems to Reg
Changes in v8:
-None

 .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 0e8d8df686dc9..4763a2ff12fb7 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -34,6 +34,8 @@ properties:
       - description: link register block
       - description: p0 register block
       - description: p1 register block
+      - description: (Optional) Registers for HDCP device key injection
+      - description: (Optional) Registers for HDCP TrustZone interaction
 
   interrupts:
     maxItems: 1
@@ -159,6 +161,7 @@ allOf:
         aux-bus: false
         reg:
           minItems: 5
+          maxItems: 7
       required:
         - "#sound-dai-cells"
 
@@ -176,7 +179,9 @@ examples:
               <0xae90200 0x200>,
               <0xae90400 0xc00>,
               <0xae91000 0x400>,
-              <0xae91400 0x400>;
+              <0xae91400 0x400>,
+              <0xaed1000 0x174>,
+              <0xaee1000 0x2c>;
         interrupt-parent = <&mdss>;
         interrupts = <12>;
         clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-- 
2.40.0.348.gf938b09366-goog

