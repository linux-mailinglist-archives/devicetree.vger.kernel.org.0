Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23DEF59C74F
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 20:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237338AbiHVSvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 14:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237912AbiHVSuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:50:55 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84DA24CA10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:05 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id bq23so7504804lfb.7
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=dWcAQPlFiDTPwWK7n4iS8GW3PtmQpffctMl/XuHtJSU=;
        b=WXYbtgqD5iuwgqkyug6cSYXqb9xeK3mPLjONSNskdNMTGvzU+6xFXAX3oSaVtzNM8o
         /MNyzOx/9uMTnAf2Ez64bUd5R2xiBSKni4O37jq4BLcBplB4BT34wl8Yx8VVr3gNlcB9
         oCxMUuFWrBtPSF+lSIjuSQ6S+ybz4y325+BqbbABgughmFsNscU5geUJxoNMB9QGPRJt
         bGjm79aVDzjaCv5ZYVL+qLi7E1eYWAryU4NzjBLEqM3fypmJyzV7nNaIPtF0pvaLjkG1
         d5/baw9lNFdOGYbOny2dnJL9CE9BCQlUp0OZ/5551M+wwlfq+bB/qLcpLzifjiA6MDsp
         QWzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=dWcAQPlFiDTPwWK7n4iS8GW3PtmQpffctMl/XuHtJSU=;
        b=WESqy6K2malz5k4uHdhvmp12vn6U9/5lT1/OOpx62OReuvASDA1FjyD665y8cipuw+
         i864c+fOWEW/jtLfSTmUX83XMpmvueh4E/IJrTeK1tm3GyUUK2v2dpHhufQMccVBBo0x
         GrLYlR9T+yzsliMBpMNwALGZyLpy+x8z8+1/YwGsQEuBtxohZFxrq47S49AgKbT2/XQz
         0r7PgU+2tNyl8nBWhZmDnUdtrndVVCwcJNW4EEvBUd4mpWSoDmxBLvTnB3CoRlGzNdMh
         H4aDDB+gnCi37efO7J5Vm4KOskTqfGWPNCKOj90D8yM2BFprmco/jIH3xQTus6+pryGe
         heWg==
X-Gm-Message-State: ACgBeo35QircqsoJkpORfQ9SaHJJVjssByjo8Ifczap7dSaI8YfE2msb
        XHzdDLqV5/jCctheXbwR5GPj1A==
X-Google-Smtp-Source: AA6agR7L7kUQ4S+k3CQDkWT3Try4H2IES1dU4EH1574IZqzTB7lcU1gVn8iADJr/PhOO1cvh54NiEg==
X-Received: by 2002:a05:6512:2385:b0:492:e4cc:17ca with SMTP id c5-20020a056512238500b00492e4cc17camr2294054lfv.132.1661194143269;
        Mon, 22 Aug 2022 11:49:03 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c118b00b00261bc05c461sm1672599ljo.50.2022.08.22.11.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:49:02 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: msm/dp: add missing properties
Date:   Mon, 22 Aug 2022 21:48:59 +0300
Message-Id: <20220822184900.307160-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
References: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document missing definitions for opp-table (DP controller OPPs), aux-bus
(DP AUX BUS) and data-lanes (DP/eDP lanes mapping) properties.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dp-controller.yaml          | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 391910d91e43..52cbf00df0ba 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -70,9 +70,21 @@ properties:
   operating-points-v2:
     maxItems: 1
 
+  opp-table: true
+
   power-domains:
     maxItems: 1
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
+  data-lanes:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 4
+    items:
+      maximum: 3
+
   "#sound-dai-cells":
     const: 0
 
-- 
2.35.1

