Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF58A65207E
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 13:37:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233595AbiLTMgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 07:36:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233542AbiLTMgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 07:36:46 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8AF61263F
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:45 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h7so11595123wrs.6
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 04:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rFSiXEp/F81I9rA8oyYkmW6cQulf46aZV7cm+NnbXns=;
        b=c8e3WBKo9a1OtUkjjTp9eBaKaFfiMlh/R5UX0kgZgfi9v49CAAdCoPIZoaoU7PbIzx
         MrON+bCxS0OvO2833qm8tOqB0JnTrCExHVR+65jfzwZZCYw0812YC+nmwSR9oQu0yvQz
         qBlO1nsi0p2GHRCAD1laaut9JRWjAlHOQtbLrH8iRC2nuKrMGCz35anyp19xSXDGxOgl
         /FqrpUpqUV0c2TUhcJP3BWmfz99NZTBszaDwOl4U284TxpYpbVNYk4M3EBTn6gkPjBh+
         Wn2Tz4XlH03OSsRM7X8BgnLQNXBxjNj7MLXIxjMDydIgjkvZFp7AbhrLCaYM92dKls0F
         IvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rFSiXEp/F81I9rA8oyYkmW6cQulf46aZV7cm+NnbXns=;
        b=3O5PdiWDwGgCPqjKHt6yr7cHSiIYt0oq8Aj2gY6rTYzJaMJd6zt+H0BoiUY/GM7EWz
         MBLQiXw5m/eglmcioVxEQZFeGzLMEG18NV1Gw0Cj3meuq1m2mhS15rRoTG8UM8eEBCIH
         VMrSW41/74FM5tQDiYHVxlY0L5VITTcs+9FN4rjCuDNJccYrBpGwyInYZVcfhSSeN8/R
         jYyfJgrSBQRHZKUs7uqqn1/U0M0yjeF+0Qkak69bIhsYGhuVjwb35ApsRRealHSbwV8S
         4JaetGriaIlVytanCdJ+tDeu/Jk96bdLn/dXKsHEQSaYGvzVyijTjWA50H1129KFXl0a
         gOzQ==
X-Gm-Message-State: ANoB5pmfLzTOyCNwsz6PhjP2ymRBMpYnRVj11YlYmNSrIYHYswLZVhaf
        S7YgInGnviqTdaVIdvvVUk2z7A==
X-Google-Smtp-Source: AA0mqf7+GSrjWRgSJIptzklKTRg+Hk2DgWMf0VY7MsFeUzZMDYtNEYOoAY8knKPM3DTwuGHGeRQfMA==
X-Received: by 2002:adf:f802:0:b0:24b:b74d:8011 with SMTP id s2-20020adff802000000b0024bb74d8011mr27693857wrp.6.1671539805263;
        Tue, 20 Dec 2022 04:36:45 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id da13-20020a056000408d00b00242257f2672sm12641208wrb.77.2022.12.20.04.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 04:36:44 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v5 07/21] dt-bindings: msm: dsi-controller-main: Fix clock declarations
Date:   Tue, 20 Dec 2022 12:36:20 +0000
Message-Id: <20221220123634.382970-8-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
References: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
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

When converting from .txt to .yaml dt-binding descriptions we appear to
have missed some of the previous detail on the number and names of
permissible clocks.

Fix this by listing the clock descriptions against the clock names at a
high level.

Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../display/msm/dsi-controller-main.yaml      | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index ce103e3ec4db3..4116b3010219a 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -43,13 +43,19 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: Display byte clock
-      - description: Display byte interface clock
-      - description: Display pixel clock
-      - description: Display core clock
-      - description: Display AHB clock
-      - description: Display AXI clock
+    description: |
+      Several clocks are used, depending on the variant. Typical ones are::
+       - bus:: Display AHB clock.
+       - byte:: Display byte clock.
+       - byte_intf:: Display byte interface clock.
+       - core:: Display core clock.
+       - core_mss:: Core MultiMedia SubSystem clock.
+       - iface:: Display AXI clock.
+       - mdp_core:: MDP Core clock.
+       - mnoc:: MNOC clock
+       - pixel:: Display pixel clock.
+    minItems: 3
+    maxItems: 9
 
   clock-names:
     minItems: 3
-- 
2.38.1

