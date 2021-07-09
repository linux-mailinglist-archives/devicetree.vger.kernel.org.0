Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD5F73C2A9D
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 23:07:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230191AbhGIVKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 17:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhGIVKT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 17:10:19 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31507C0613E8
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 14:07:35 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id r20so10091815ljd.10
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 14:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hJEW9w0y6Vcyes9owQtz9S/0i0lXig3Az7cXFopBjtc=;
        b=fErVVr4pfIJbVtUKRHnaiRSwiESw88MXK4nJOMrQurA3qSPw+jY8bZ7yjI0gwd8IcA
         Z0Y9hswzeZlcQINkON1LTwNJGPzPwFkFjkioN0yYm4bVKTQJSbN7rKbcK3kHfHfOrGEF
         s8eIlFTqWE8NVoVmXDfTK8o8YgUnlvq9pxg5UfvlUQsHTZUtHtQR7RuKOtJB27pdxDaq
         s38BYWqY66kmHU+Hk1s9uVptda29k3gyzDeDP55L/YPk4BYTmFkgQzDvSpaBCruR5sZg
         UoLfxq9JOioajcPf2PhCaWZA5FsUHeBHZQOkz+Xahi713/PersOMrDO5A12kVOY1wx6q
         jx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hJEW9w0y6Vcyes9owQtz9S/0i0lXig3Az7cXFopBjtc=;
        b=B1k3V8f6qOpZmqtqKgMvtYI1W6EeDgX/DB7VsGh/DbcWwCgaH/zvT2D0+TAX2VCdNo
         7oJNZoFiZcyJDYeeacGV7kF6u4hupyIpLUnuTxbyeaV6P6zG++PbFzv1kpS5g81hagID
         Ipd9JGUj8SKSSrLdK0NLHkohww3jbkUmA9B/c/h6ytAlJ1fabyc2Rod960T0eJKqW1du
         ytkf5VYhrqIwuykOvCSMh/s3QfeAbRpaiU88AKpzfTnMUFk1GlRHdeL97Imuvy5jnheJ
         9yzFmt7j9Tyk7i1SRJZBlSmQD2C1kFVDoyUCyF+XnfJte7IX7DtAlMSIVm1C1uePgKev
         Sj2A==
X-Gm-Message-State: AOAM531TxqZORTUJRZnOv58jwFnjg9ODj8wWkqofTgdwNRo7/t/EXIdh
        eckU0A/InnlTb0H2WcZ1k5II+A==
X-Google-Smtp-Source: ABdhPJxwEU1JXAYF23cylO9ydxaJi+pRUDC33zBTaCd/tXUSJbSPQBQH5TQCHFNqw+9C5KQLXr0Ddw==
X-Received: by 2002:a2e:50c:: with SMTP id 12mr23647928ljf.173.1625864853431;
        Fri, 09 Jul 2021 14:07:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n15sm590625lfh.70.2021.07.09.14.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 14:07:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: display: msm: dsi-controller-main: restore assigned-clocks
Date:   Sat, 10 Jul 2021 00:07:22 +0300
Message-Id: <20210709210729.953114-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709210729.953114-1-dmitry.baryshkov@linaro.org>
References: <20210709210729.953114-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Restore the assgined-clocks and assigned-clock-parents properties that
were lost during the txt -> YAML conversion.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../display/msm/dsi-controller-main.yaml        | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 76348b71f736..760eec6b0db1 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -64,6 +64,18 @@ properties:
       Indicates if the DSI controller is driving a panel which needs
       2 DSI links.
 
+  assigned-clocks:
+    minItems: 2
+    maxItems: 2
+    description: |
+      Parents of "byte" and "pixel" for the given platform.
+
+  assigned-clock-parents:
+    minItems: 2
+    maxItems: 2
+    description: |
+      The Byte clock and Pixel clock PLL outputs provided by a DSI PHY block.
+
   power-domains:
     maxItems: 1
 
@@ -119,6 +131,8 @@ required:
   - clock-names
   - phys
   - phy-names
+  - assigned-clocks
+  - assigned-clock-parents
   - power-domains
   - operating-points-v2
   - ports
@@ -159,6 +173,9 @@ examples:
            phys = <&dsi0_phy>;
            phy-names = "dsi";
 
+           assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+           assigned-clock-parents = <&dsi_phy 0>, <&dsi_phy 1>;
+
            power-domains = <&rpmhpd SC7180_CX>;
            operating-points-v2 = <&dsi_opp_table>;
 
-- 
2.30.2

