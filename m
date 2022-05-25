Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93DD65334DB
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 03:43:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242681AbiEYBnf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 21:43:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243350AbiEYBnd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 21:43:33 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A0A37354B
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 18:43:30 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id u12-20020a17090a1d4c00b001df78c7c209so405823pju.1
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 18:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Xb/SxnzZRA8lvdgyOL4I+fRz/jFWMo6rTxKCV7Sryew=;
        b=gr2Mj+T8LtdSFaoySl3h9txPZ72cOi2udZPda9NVxFE84EtTr8ZWeWVfZFfKvwD9NE
         e4LsAjDKY4hKSrBdaVHiK4cftO4kM5gln9ulX9eUuLmCsRhFmb0p+N+OfTw09OfQ+6rP
         ox4f/NaV67X94ZxkqJF4xVaf4rEwGbX/za8oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Xb/SxnzZRA8lvdgyOL4I+fRz/jFWMo6rTxKCV7Sryew=;
        b=Brk+RLXr3rGK3ZxD5JQRlo7Q/Go7CooImdw6YVrfue9+BL3zMgcMdzNqMIYOenRmS+
         oxJaFD8eiGG6EWgu50UesA+ex038lMEBtqFXk9JmqYzX9HddTEejQwVON99O9MDqZmOc
         CWAiggZNQzu7KhYKQbENCkPwYDSrvnhT+vKEacqovG9P1cEQT5uz/J2dKUxQt2Aig7x3
         X2rf6vJIpQprSWOTacvGerdluIrzXnUrQewZXs7DjUOQ+JiAZRSjtTRKfuSzFmSOYt1F
         dboJ5dKTiNnSUuwDs6N99LR3ysnpxZCK9s8iq3QLqAg2EZAWlKxmafXKTm8Y7rlQ/Cxo
         lEQw==
X-Gm-Message-State: AOAM533oo889XzECK04YUyStDGZRc9qjJNW/WS5eGCVSmK2PUQHkC7VQ
        4ScXMJfJhCs46nfuvqxSrArckw==
X-Google-Smtp-Source: ABdhPJxdvJnWTu9cJaaIXlQgiul9IY8icRBYKEiFJLuy0e4pa6+lZ+unBwAiZ2v4cza/C/ndSFdiuA==
X-Received: by 2002:a17:90b:4f4c:b0:1df:e74f:ebcc with SMTP id pj12-20020a17090b4f4c00b001dfe74febccmr7645453pjb.38.1653443010119;
        Tue, 24 May 2022 18:43:30 -0700 (PDT)
Received: from judyhsiao0319.c.googlers.com.com (164.135.233.35.bc.googleusercontent.com. [35.233.135.164])
        by smtp.gmail.com with ESMTPSA id n11-20020a1709026a8b00b0015e8d4eb2bcsm7877317plk.262.2022.05.24.18.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 May 2022 18:43:29 -0700 (PDT)
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
Subject: [v3 1/3] arm64: dts: qcom: sc7280: herobrine: Add pinconf settings for mi2s1
Date:   Wed, 25 May 2022 01:43:06 +0000
Message-Id: <20220525014308.1853576-2-judyhsiao@chromium.org>
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

1. Add drive strength property for mi2s1 on sc7280 based platforms.
2. Disable the pull-up for mi2s1 lines.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 9cb1bc8ed6b5..f3044b39ba66 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -612,6 +612,21 @@ &dp_hot_plug_det {
 	bias-disable;
 };
 
+&mi2s1_data0 {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_sclk {
+	drive-strength = <6>;
+	bias-disable;
+};
+
+&mi2s1_ws {
+	drive-strength = <6>;
+	bias-disable;
+};
+
 &pcie1_clkreq_n {
 	bias-pull-up;
 	drive-strength = <2>;
-- 
2.36.1.124.g0e6072fb45-goog

