Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD8156CDEA
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 10:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiGJIlq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 04:41:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbiGJIlo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 04:41:44 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2163A18E1D
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:43 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id o7so4219833lfq.9
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uL7wiVg1RgrpxbM/E5AHKRDJeIFgAkbS4akWzL7eFSM=;
        b=cduRVgw3BOsc7BKIWJ1NZS3FAwj24GNmlO+somU5Bcit3gf6AnzVVzJuU7gvux7O9D
         8uZq4Y0nZ9o0Fl9dGvnGSPVmHmQq5TvJiAxnR3omUILA8LD5HNoSh0NmPyyLe1qMhEhd
         IZvhJapk8M18k5UF07RQ7eXmXRqXpRNrM01qOzVPGtudfIRS4irAPRcLoM7JrRZwL8jt
         Etxj+Q9GX6u9Z/EavcWWVNjqj669zdSyqJEQkFzojAX+aIr8OVm6cx1BPH5Gh4KwzUQn
         Wfhb7W1bzbaOlWvZbT2c3nSayub/Tn66VZdgKcboKKsRCIr+CH4ibLKSLZ/mnO708moY
         LjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uL7wiVg1RgrpxbM/E5AHKRDJeIFgAkbS4akWzL7eFSM=;
        b=u7EouhmnTr9Kr+jR/mKYKxbt4g+Wb3+hb7LlprZuwmrdsuHK6aSaSDJzwqsehrYIyG
         QDmQBIWw3mvV01us9ZnczCGgDhprbmMUDKIy9xg4oHNrtZqLppZZj5/K2s+iSvQTOKd3
         4oJwoxlLxSmpQv4VJfbmQXqeTZEXQIS3UpL44MM894JR6GSplYQgwUOztECpRO/1ntaQ
         a6LGiGqKwz0YTBnNjVZB/5woL9iG+RFBqq7DokyW9fGZMfn/pWtSc4YExbwld4DWbK4o
         PQu+PQtehgQ1mB1HofChMvwfxrusylf8Nxh/COujTa6QNQqgqzsVxEswsHmV1Aj+k+Kv
         WctQ==
X-Gm-Message-State: AJIora8jUcR6gmgPUVTJJH89b4OkQoADaEvYgYDCXiPmukJDKaCIKjA1
        yIu0WoLZs49n2hKEGmO6xaJoDA==
X-Google-Smtp-Source: AGRyM1v3sQKMx15SYFl9GMpgtDEpQhV6ZiOxRN71c1mR6H49vk4tEqt3nmzxHSnEcHRz4fU7sQn+Ag==
X-Received: by 2002:a05:6512:e93:b0:486:5c68:e46d with SMTP id bi19-20020a0565120e9300b004865c68e46dmr8631570lfb.670.1657442502675;
        Sun, 10 Jul 2022 01:41:42 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i21-20020a2ea235000000b0025d4addbad4sm912536ljm.91.2022.07.10.01.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 01:41:42 -0700 (PDT)
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: [PATCH v2 7/9] dt-bindings: msm/dp: mark vdda supplies as deprecated
Date:   Sun, 10 Jul 2022 11:41:31 +0300
Message-Id: <20220710084133.30976-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
References: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
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

The commit fa384dd8b9b8 ("drm/msm/dp: delete vdda regulator related
functions from eDP/DP controller") removed support for VDDA supplies
from the DP controller driver. These supplies are now handled by the eDP
or QMP PHYs. Mark these properties as deprecated and drop them from the
example.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml   | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 94bc6e1b6451..391910d91e43 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -76,8 +76,10 @@ properties:
   "#sound-dai-cells":
     const: 0
 
-  vdda-0p9-supply: true
-  vdda-1p2-supply: true
+  vdda-0p9-supply:
+    deprecated: true
+  vdda-1p2-supply:
+    deprecated: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -140,9 +142,6 @@ examples:
 
         power-domains = <&rpmhpd SC7180_CX>;
 
-        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
-        vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;
-
         ports {
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.35.1

