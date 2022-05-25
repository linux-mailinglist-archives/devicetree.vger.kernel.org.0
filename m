Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD9C5334DE
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 03:43:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243348AbiEYBni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 21:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243345AbiEYBng (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 21:43:36 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C0357B3D
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 18:43:36 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id m14-20020a17090a414e00b001df77d29587so401675pjg.2
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 18:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZB7BWpRnlBzFfCqwBENpii045L63Udnz6UdJqFoKbrg=;
        b=WQPkx5sRg9kMNQHXWHkA4fBFgp50bfJD7M4HD/6geM+zKjOoOobHnz1PmPsC58wXtu
         FnIcQbR9GBw0MCwxzVD8TkjHuJwNvzQPpo5NTYqRwjnOHs7bb4fUS+DtBDwTqq40Z3Bh
         qy+W4n5gWpOA7TyPKvxzD0JA0T3CADCEd2jTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZB7BWpRnlBzFfCqwBENpii045L63Udnz6UdJqFoKbrg=;
        b=jwsERcj3bNm1W8Z3BZIugpjQagJg/vsjSP971zjDu4GDlOzmr2iWnjMoAYz4fseEZq
         517/fD9yFmZFoMnItMQLbmvBXJLGPMlbEzNs+RE/A25uwjtgnLuDLuyal8ReKnY6T2jX
         M8m4i0pbPvJOHKfLOqHemiok3SPzL/hXM6YJEn1KNq0a0pxQkD95VfBTDCDHAROxHPKw
         yJ2Hc9h6uz2FPG9t5eeceZtPtp/bdn7K9mc8/Q3iP4ulYeBRFGDbRodR5obtigjFwGN6
         ZVowBGwDeFzbG/BXRv8qbmwwCjnES2Hu4qqJmCCSdgrudHizgTYrrtAtCgBkjYfZFXZC
         gEIg==
X-Gm-Message-State: AOAM533iZeK8UxGR+xccE0jUWPeW+vT0cDF7Y9/yPx46FTTevFEhDMx3
        BhYKAnBKus4xK4ORb6/+LEkazg==
X-Google-Smtp-Source: ABdhPJywU2wti1e7muLPKna4m8wIF8KXNRmodbfg3d7tscQ4iNi2fS0MwKcRipR5DikQqr5tMVmq9A==
X-Received: by 2002:a17:902:ebc8:b0:15f:417c:288b with SMTP id p8-20020a170902ebc800b0015f417c288bmr30810154plg.14.1653443015901;
        Tue, 24 May 2022 18:43:35 -0700 (PDT)
Received: from judyhsiao0319.c.googlers.com.com (164.135.233.35.bc.googleusercontent.com. [35.233.135.164])
        by smtp.gmail.com with ESMTPSA id n11-20020a1709026a8b00b0015e8d4eb2bcsm7877317plk.262.2022.05.24.18.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 May 2022 18:43:35 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [v3 3/3] arm64: dts: qcom: sc7280: include sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1
Date:   Wed, 25 May 2022 01:43:08 +0000
Message-Id: <20220525014308.1853576-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220525014308.1853576-1-judyhsiao@chromium.org>
References: <20220525014308.1853576-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1 as
these boards use rt5682 codec.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts | 1 +
 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
index b69ca09d9bfb..f68d28f8701b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sc7280-herobrine.dtsi"
+#include "sc7280-herobrine-audio-rt5682.dtsi"
 
 / {
 	model = "Google Herobrine (rev1+)";
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
index d3d6ffad4eff..7a4acd3b9ee3 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sc7280-herobrine.dtsi"
+#include "sc7280-herobrine-audio-rt5682.dtsi"
 
 / {
 	model = "Google Villager (rev0+)";
-- 
2.36.1.124.g0e6072fb45-goog

