Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF5D53BB54F
	for <lists+devicetree@lfdr.de>; Mon,  5 Jul 2021 04:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhGECxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jul 2021 22:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbhGECxd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jul 2021 22:53:33 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80B46C061574
        for <devicetree@vger.kernel.org>; Sun,  4 Jul 2021 19:50:57 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id cs1-20020a17090af501b0290170856e1a8aso13935459pjb.3
        for <devicetree@vger.kernel.org>; Sun, 04 Jul 2021 19:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=77N/67rSOupK1Chm3/4oKVH0HtWBRmi/Fw54y3WWFfQ=;
        b=S6Zwf1e/LnhulYerNCjOfNqfeDM2VNDoZdMluwc3wcHJSiqhctzalDIDSatEGVnmOB
         VQkDMHBpuhJEsiy2S27bV/QZly6xp8pB747+9EbgURxw2OCg248OBM4ZmZIYdlbTyqI2
         NcCI/WwKylPxOgQaMxi4dmS4tZlIxQUOIzCqeIzbxR/JUzuw7v2l0y52xwnRcFzi0Sjt
         KmOZVzz9Vl1L2EizywSdr42sg+iGV5zyo1yI712mGkDA/ivTAlkeyKRGX9ZUnra0vByF
         cWSnCKx9r6sb80MUZfwir9AVb2w3mBmQmwcf0Xrzg788T8txOttYtmh7AJ21irw2iMpv
         SZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=77N/67rSOupK1Chm3/4oKVH0HtWBRmi/Fw54y3WWFfQ=;
        b=UkLYs7ZjAVmPELe1mrl4gqTBHxMrDhe5N97qpROaG6Esr4rzPQPJ0uV5Oq1uKxwVwy
         zsiWYfFNPs21H50MS+RYf2dqXcxHzywVhDVuSbZ0ROM0Bxh1Fjlhw+jb7wrWEPkz5h6j
         MaP4pEP0DbhF5E/Zbipk/LbUp0AexH0MpcL0+jJaFx47gv4yYapStNMQ3w5PR0hPcKOO
         dK9GUcla639gL7P9OUJzRC8RWcJVkRyYqHsuA9cvMfyjWUMysMrizngZtPOU1Tm+6v7M
         n1wWSum/jboUDVXQGS5J0el7Aw+MotpFwz9bm5XH/+xZSzLq7p3w22ASi4+Ekkeh2SlR
         2XAA==
X-Gm-Message-State: AOAM5307VXst3pHYwVsx83k1YAmBc2Rz41UaN7kFDOBzzYZf0ckrQvuA
        vbc+3xh2VsBMy/ITVTlZA1ZUcw==
X-Google-Smtp-Source: ABdhPJzY3f2gHVvXij7AuGGJdzr5F1gId59J7RbuJOiaJF1b0tz0kXpXacL91zrmEuq87bpq31xp6Q==
X-Received: by 2002:a17:90b:1085:: with SMTP id gj5mr12758117pjb.166.1625453457107;
        Sun, 04 Jul 2021 19:50:57 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id i13sm11891041pgm.26.2021.07.04.19.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 19:50:56 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Stephan Gerhold <stephan@gerhold.net>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/3] dt-bindings: qcom,pon: Add 'qcom,pon-reboot-not-used' property
Date:   Mon,  5 Jul 2021 10:50:31 +0800
Message-Id: <20210705025032.12804-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705025032.12804-1-shawn.guo@linaro.org>
References: <20210705025032.12804-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an optional 'qcom,pon-reboot-not-used' property for devices, which
do not use PON register to pass reboot mode but other mechanism, e.g.
particular IMEM address.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/power/reset/qcom,pon.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
index 7764c804af1d..584eff179904 100644
--- a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
+++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
@@ -23,6 +23,10 @@ properties:
   reg:
     maxItems: 1
 
+  qcom,pon-reboot-not-used:
+    description: Support of reboot mode passing through PON register is not used
+    type: boolean
+
 patternProperties:
   "^mode-.+":
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.17.1

