Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBC7952F033
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 18:10:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351440AbiETQKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 12:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351432AbiETQKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 12:10:20 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70E4117D3B1
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 09:10:18 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id pq9-20020a17090b3d8900b001df622bf81dso8248956pjb.3
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 09:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZB7BWpRnlBzFfCqwBENpii045L63Udnz6UdJqFoKbrg=;
        b=I0LE2wWQ2QnnTRkMGZbghPAaiyy+lX9O4XcXktFWwJKbCuBU8bOcHmuCqIYjqvUjnZ
         nHRlcGZ1pjd8X6rDJteAQcOZ5hSCsoeh0wtwCgiLqx5VMIjiMqY0Yq5C8fLvXza+Fcpp
         KFj0etFjrOxY/oyoJk21aTWuCLNT3XdhiBd+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZB7BWpRnlBzFfCqwBENpii045L63Udnz6UdJqFoKbrg=;
        b=sdxepFWuBF4FfkTooBSOSBO5QcdJUcWNNtKlDbSQ/BOc1NXSXvEHcE/HsmrP5Y0FcA
         wVGVr8cw+dJg87Ke9vx7x7bYpz6ZQd0AS36ast8Wr/GPC442aFerLhwGWruFwe8lRTiI
         etmb4sApUq+BMdGU5CkZVuRs0+nXRfv2uZSRHcqiehLnG8i6CIOzK/LJfTpVV1mdZDd+
         491RvU+ri+ocOx+GT+f8g2BEo9Ij9GJcaq5lPKrXizgxYoUOf3DjBJonQL5hsc3L16Y5
         +RIz1sRO7lKFGe7/qqP9r25Lqmsvtvfw8o0h3muL7ja4uRJePdJoeZKUYSIZMUUw0C6M
         vhwA==
X-Gm-Message-State: AOAM530NHOnFVwxAcOdGxt2cImim2g57ADf+QazP2cjmvrYvoDLOnQHS
        Z4M4g/CxJI2hp2HkbOHDrHTKpQ==
X-Google-Smtp-Source: ABdhPJw6Y+QsU+wL59UNz3ZhYLf2XrohRZPjujnkd3OM8I54CAsWA4NvQRR3sKJJa+8yEQLFtNkSLw==
X-Received: by 2002:a17:902:d2d2:b0:161:be0f:ccd7 with SMTP id n18-20020a170902d2d200b00161be0fccd7mr10361827plc.98.1653063017827;
        Fri, 20 May 2022 09:10:17 -0700 (PDT)
Received: from judyhsiao0319.c.googlers.com.com (164.135.233.35.bc.googleusercontent.com. [35.233.135.164])
        by smtp.gmail.com with ESMTPSA id e4-20020a170902d38400b001619b47ae61sm5855078pld.245.2022.05.20.09.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 09:10:17 -0700 (PDT)
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
Subject: [v2 3/3] arm64: dts: qcom: sc7280: include sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1
Date:   Fri, 20 May 2022 16:10:04 +0000
Message-Id: <20220520161004.1141554-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220520161004.1141554-1-judyhsiao@chromium.org>
References: <20220520161004.1141554-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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

