Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26056418788
	for <lists+devicetree@lfdr.de>; Sun, 26 Sep 2021 10:46:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbhIZIrg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Sep 2021 04:47:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbhIZIrf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Sep 2021 04:47:35 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B0BC061575
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 01:45:59 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id on12-20020a17090b1d0c00b001997c60aa29so9788435pjb.1
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 01:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QlTGzxKBukKaEhh3Mo3v5AdCgAwPnT3D7ocNVWJAYkk=;
        b=qkFWpjue2+KPPMXsrqPthuBsIOtr6oe1XcU1t0Ac2pz8uZpGVZShEqjqLkpZ+vR/cW
         U9bkb/YhGoNsPKQ2ZviADp9Hi59vsddw/7wG5nxo9LebcrYI/uR2M1lp8MlvlRhctTvu
         B+j7ULNEVyG3ZGw8cKggGzm3NvQOUVf6hjvH0b+V+j5hTy7Jl3XmJoig9QWOMP1uNSJg
         aqnQq+R+4oZLFkZQxMrWiAJII6NLeq0buVia/CC1H9csiOyeCp9OM9xRcetnlLI7zEq1
         abrfXU8DvrzLC/oULk85PGcSb7v7r6wfrg1i8XuOvEfrRiLM9/GRGtJfgbr3RdRMOCN1
         SxoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QlTGzxKBukKaEhh3Mo3v5AdCgAwPnT3D7ocNVWJAYkk=;
        b=WURfEVbG8NnVXrKJA6LLSM+tYBw2KkLS/gwNv9nhPimX1df+6y+0tAZCEg70EEEyNN
         eCXvqibAkm7l9ztoys10IPJU/7u6MAbVScufEPxjzbR00tZZegs1a2/u1sVRsYJTxV3J
         lquwVJg8kIGlB4fgeQ7Ea3pLPoDy1NNnb+G79jnCEHczZcwdbn6eheRgkJuuZmM2duSi
         GKZx5yNRPu6rn0yBzDvE+rCMYMxu0J37EYHV+6G1nb2IN2J7Opy9UuvyUxmF79UZeUlX
         dHBVOteOSbA/s1eFAwaiC52Ubrnrp49uIrTgu9GpIIGTXfPuL3raeDEoKvp9QF52sKTW
         ksYQ==
X-Gm-Message-State: AOAM5330EgCQHl/DYLe6vz5wm86nYQt9wMWAW8bNfnoQzQIyL0aHUf2P
        N4si4l0k7MC1RChBrV9D1nERWw==
X-Google-Smtp-Source: ABdhPJwAX9k3BtfR7VGvCfSAjC8sm4WVfz9zbmvkwo43fhYxRQ1PQatRUIeBuufZqhQoDbo1/I5IdQ==
X-Received: by 2002:a17:902:b789:b0:13b:90bc:f184 with SMTP id e9-20020a170902b78900b0013b90bcf184mr17348375pls.31.1632645959352;
        Sun, 26 Sep 2021 01:45:59 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c7sm8940402pfc.104.2021.09.26.01.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Sep 2021 01:45:59 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/2] dt-bindings: regulator: Document PM2250 smd-rpm regulators
Date:   Sun, 26 Sep 2021 16:45:48 +0800
Message-Id: <20210926084549.29880-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210926084549.29880-1-shawn.guo@linaro.org>
References: <20210926084549.29880-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible for PM2250 smd-rpm regulators and list all of them.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
index 83b53579f463..f052e03be402 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
@@ -65,6 +65,9 @@ description:
   For pms405, s1, s2, s3, s4, s5, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11,
   l12, l13
 
+  For pm2250, s1, s2, s3, s4, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11,
+  l12, l13, l14, l15, l16, l17, l18, l19, l20, l21, l22
+
 maintainers:
   - Kathiravan T <kathirav@codeaurora.org>
 
@@ -86,6 +89,7 @@ properties:
       - qcom,rpm-pmi8994-regulators
       - qcom,rpm-pmi8998-regulators
       - qcom,rpm-pms405-regulators
+      - qcom,rpm-pm2250-regulators
 
 patternProperties:
   ".*-supply$":
-- 
2.17.1

