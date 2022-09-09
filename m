Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B96B5B3D11
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 18:34:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiIIQec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 12:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231725AbiIIQea (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 12:34:30 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6CDC13EE44
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 09:34:21 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k9so3779627wri.0
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 09:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=tcDgOTW+dPWGFaJ/pvGH1qALkjgH3rLUuK48scVtdlo=;
        b=ugAi9Agjwf+S9zu7+DHtF/YDwfLet95v9keT2vBTusjMmeS3QbQroq0nnQ+6X8Ruja
         n2yDBXkHIIAKdaWg0vY2wBNoNCeiSNM3LkUFh2To65pActnLzeYjeqHusJla2BsAA/MA
         NmLTDj+2ffIz1z0fp+13lRvrDbHs5y/yIy0H9HfUR9wTpXXUC2MeAbLL+IrfOr6o/yCd
         oYngYPqD28DelHGVrmsvObg5LKpTqG8v96t6FkQOzJ2H7U6EO3wO7dux46ShtaT+Rj8Q
         o+TQxxPEztXqzRSwKgoo7gtBnTiJfspTGRuJ6aezImt7Ezr89mxlP7m3TOKKiXFZVY3M
         U8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=tcDgOTW+dPWGFaJ/pvGH1qALkjgH3rLUuK48scVtdlo=;
        b=Urf6+nwmRZQWKhGA6TfOI+EGkay5CoKAEqprJtsiGivAwiX6wh2O1xgnlTEJzpXOtb
         kH3e/mTUmta3devkeIZNe2vtHbKLOXz9KpbVhicjLKJPia0KBjkOGufZjukt3vfJThYL
         RFMt/EPsQbVCYzdVVzxqtBKdtjVhieM21Pbg1g9BJF7g/FyYWEACihR57+W1Abcto8Qe
         WIh+5iKYioSkEXQiHrf8lQIoW44VAotrIUMW9C7bn0UoAg8TCJxxeiECq+FzZFJxNIuY
         dAsNLj7VGCVHpQRBzeyTDayaG/PAtS2M6oN6Nw6HVFqEphJaUZeDOjqWaOm6dtup7q5y
         qiCQ==
X-Gm-Message-State: ACgBeo09w4dRR0wJhtYmZboSOIC4Ywzfy1V6E+B2hOnvVp3cxXM0EK0C
        FvdSMJ2gDPZJnedriGXKYYFSRQ==
X-Google-Smtp-Source: AA6agR4f+eEq6duOHr8ajFsbSaKXNwwhi6irSKtjNrjaHG3sEufQNcp1OEQUEWfwaxDJP1fZpOkMkQ==
X-Received: by 2002:adf:fbca:0:b0:225:2ac9:e306 with SMTP id d10-20020adffbca000000b002252ac9e306mr8690482wrs.259.1662741260151;
        Fri, 09 Sep 2022 09:34:20 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id c5-20020a5d63c5000000b0022a2e4b2b25sm816849wrw.113.2022.09.09.09.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 09:34:19 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH 1/1] ASoC: dt-bindings: Mark old binding qcom,cpu-lpass-apq8016 as deprecated
Date:   Fri,  9 Sep 2022 17:34:16 +0100
Message-Id: <20220909163416.1021551-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220909163416.1021551-1-bryan.odonoghue@linaro.org>
References: <20220909163416.1021551-1-bryan.odonoghue@linaro.org>
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
 .../devicetree/bindings/sound/qcom,lpass-cpu.yaml    | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
index ef18a572a1ff3..bb6f0c5dd4e8b 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-cpu.yaml
@@ -18,11 +18,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,lpass-cpu
-      - qcom,apq8016-lpass-cpu
-      - qcom,sc7180-lpass-cpu
-      - qcom,sc7280-lpass-cpu
+    oneOf:
+      - const: qcom,lpass-cpu
+      - const: qcom,apq8016-lpass-cpu
+      - const: qcom,sc7180-lpass-cpu
+      - const: qcom,sc7280-lpass-cpu
+      - const: qcom,lpass-cpu-apq8016
+        deprecated: true
 
   reg:
     minItems: 1
-- 
2.37.3

