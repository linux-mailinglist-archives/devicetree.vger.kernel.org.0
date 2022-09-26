Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D90885EA6B5
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 14:59:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233851AbiIZM7c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 08:59:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234955AbiIZM7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 08:59:15 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D10B91B14C1
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:32:53 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id ay36so4298262wmb.0
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=TERL3inRZq0WCbTMsYxYubxRLl19MBHAR6y43iE2+Y3K79F2k1sJgP8lWn5pU6tB4H
         gjnfZDpgdVrDYvUb/Hq8j+M9ntTgND+qM9eyR003CiHFp41Ohkk1CxJ4w3lcllnLtpbB
         yxtwc6FuyGOUtwCY4ae7R0nhCYQgzWe1PGX226pRQkKN9a+5oIHIOQYkMVwYAq20ZUAz
         1bHzptIjfxbTQY6Kv/sbXgwO/GUkmltk5MQsL5RqHuOs20EgYAOmDjL0y+zlWdA3vEJN
         /BwBoF1ka9daQPM5rvEmH1dtDkfE9d0klBrmuhslpk6ug56x1mXPvZ3D3szXb/hY5C9E
         EZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=MBcih4mZfivw1hn8d+/MhB2iB0lNxuBuG/Tj1AI70PlfjcVZztCDnjPDAnRVWQUa1B
         EYfAu/2m67nZIh7iK8BKSrSJO7u7CrDQQ2haPQcuuacXHOQyuxA+jsq/JY92awL5rXlF
         kYiDJM7Yyzs+kUfG9mzVYtQmxwO4BbKvB74/73Ldw0rrKLx+v1v9ptV/9Gz8IssnZruQ
         toYunAqH4mqedF79WlDO/4j/Ajed9YGGKNgIAgmHX2ZB2IPEg6h2hjpqS3mgLBOnzI0k
         RS22sN3CCn10NjE0qcQwboYsFTOmasv8cLbs3KzUPKboRNDyjmzgMHcuvbhJ5xHUBwEW
         Xqnw==
X-Gm-Message-State: ACrzQf2xKPIhONvZe9KV8B2P+5hzthTPl5zAe1DVgpRSKBXr2ZjwhHSt
        xHYe3b5zGrmZd3WI7xfBthp6zw==
X-Google-Smtp-Source: AMsMyM67FSLuZm5iPgZXwZg/yCN/P6KABChWbV6u33cpUuEe6UxI042iPcC5ny1YUZOonUFsggRoJA==
X-Received: by 2002:a7b:c84c:0:b0:3b3:3faa:10c3 with SMTP id c12-20020a7bc84c000000b003b33faa10c3mr21612635wml.94.1664191906169;
        Mon, 26 Sep 2022 04:31:46 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x8-20020adfdcc8000000b0022a2dbc80fdsm14064882wrm.10.2022.09.26.04.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 04:31:45 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     myungjoo.ham@samsung.com, cw00.choi@samsung.com
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gurus@codeaurora.org,
        aghayal@codeaurora.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org,
        Rob Herring <robh@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v4 1/2 RESEND] dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
Date:   Mon, 26 Sep 2022 12:31:42 +0100
Message-Id: <20220926113143.40768-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220926113143.40768-1-bryan.odonoghue@linaro.org>
References: <20220926113143.40768-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dts validation is throwing an error for me on 8916 and 8939 with
extcon@1300. In that case we have usb_vbus but not usb_id.

It wasn't immediately obvious if there was a valid use-case for the
existing code for usb_id in isolation, however discussing further, we
concluded that usb_id, usb_vbus or (usb_id | usb_vbus) are valid
combinations as an external IC may be responsible for usb_id or usb_vbus.

Expand the definition with anyOf to capture the three different valid
modes.

Fixes: 4fcdd677c4ea ("bindings: pm8941-misc: Add support for VBUS detection")
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/extcon/qcom,pm8941-misc.yaml | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml b/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
index 6a9c96f0352ac..1bc412a4ac5e6 100644
--- a/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
+++ b/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
@@ -27,10 +27,14 @@ properties:
 
   interrupt-names:
     minItems: 1
-    items:
-      - const: usb_id
-      - const: usb_vbus
-
+    anyOf:
+      - items:
+          - const: usb_id
+          - const: usb_vbus
+      - items:
+          - const: usb_id
+      - items:
+          - const: usb_vbus
 required:
   - compatible
   - reg
-- 
2.36.1

