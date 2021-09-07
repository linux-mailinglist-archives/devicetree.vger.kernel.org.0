Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07F8B402ECC
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 21:12:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345716AbhIGTNx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 15:13:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345371AbhIGTNx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 15:13:53 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C5ABC06175F
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 12:12:46 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id mj9-20020a17090b368900b001965618d019so2159137pjb.4
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 12:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gnPT7TZlHwBRf81I6W6ByhmDCzRA+iXQVz1iuWwpEPk=;
        b=jwLx1B6GmssJFxY3kASF5YTUFXXdfgDw0YuywVVzjcQeIDRG8PNSI1lzw8qb6Vm3py
         c8mGaovEAYhU35c1Eumh6GP370deyfBoP5KbhOBucdX9gTv4ERB+vv8N2WPAG7c+gQ+I
         4YENQVcnjfqxeG/NXMreXD5a+SKXWilpY1jsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gnPT7TZlHwBRf81I6W6ByhmDCzRA+iXQVz1iuWwpEPk=;
        b=RC+Mvr7E43rWKk0xg3l4FlmMXrbqGey8NXqnViEp8nO71cdODpZeMYNiKPq7VvYJDc
         639PmoqwCQH3R2XwLgai7CMgBZMCcMh/ODDI8g+BH9rmL1ZRceZF82zerhCrqA9SuwA8
         bdMcZjkFTg/9KfODV9nDBI6E74LBFUtTMKAxIlUeXOJkcjqn1yO/16SNlnKMYXdjo1Ax
         RHg4wjZ9puhJiKjv4VHb/Yrfw4um0ytykdQ6tQ5YIzBMvch4v0ahe8bupsj7z4xm8//2
         IoUEN2uKehqxyGKlIXSfEUewwmK+VuEAdCTSL4Jmrmywx7wFzAwI+2aHHnT81uJ2tM3Z
         ip3A==
X-Gm-Message-State: AOAM530Z7d7PJ5gU5Z/0zrGGrY+kG8V3CE27bgVB+q4qAcS6lxunHrzw
        LhTVAd2G9Hh0jqA4oFbVa3zJzw==
X-Google-Smtp-Source: ABdhPJzd7mDwV3VCuENrJaBXzRLB4DGhgEbjTDOpjjxyR1IUZZCSnwLfixwDx4pbPzqXCr5uOaXsyw==
X-Received: by 2002:a17:902:dac7:b0:138:cee7:6bbc with SMTP id q7-20020a170902dac700b00138cee76bbcmr16049540plx.0.1631041966143;
        Tue, 07 Sep 2021 12:12:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:188b:a5e5:6bb9:6ce7])
        by smtp.gmail.com with ESMTPSA id c15sm11102224pfl.181.2021.09.07.12.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 12:12:45 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "arm64: dts: qcom: sc7280: Fixup the cpufreq node"
Date:   Tue,  7 Sep 2021 12:12:25 -0700
Message-Id: <20210907121220.1.I08460f490473b70de0d768db45f030a4d5c17828@changeid>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 11e03d692101e484df9322f892a8b6e111a82bfd.

As per discussion [1] the patch shouldn't have landed. Let's revert.

[1] https://lore.kernel.org/r/fde7bac239f796b039b9be58b391fb77@codeaurora.org/

Fixes: 11e03d692101 ("arm64: dts: qcom: sc7280: Fixup the cpufreq node")
Reported-by: Matthias Kaehlcke <mka@chromium.org>
Cc: Sibi Sankar <sibis@codeaurora.org>
Cc: Matthias Kaehlcke <mka@chromium.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 53a21d086178..fd78f16181dd 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -1850,9 +1850,9 @@ rpmhcc: clock-controller {
 
 		cpufreq_hw: cpufreq@18591000 {
 			compatible = "qcom,cpufreq-epss";
-			reg = <0 0x18591100 0 0x900>,
-			      <0 0x18592100 0 0x900>,
-			      <0 0x18593100 0 0x900>;
+			reg = <0 0x18591000 0 0x1000>,
+			      <0 0x18592000 0 0x1000>,
+			      <0 0x18593000 0 0x1000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
 			clock-names = "xo", "alternate";
 			#freq-domain-cells = <1>;
-- 
2.33.0.153.gba50c8fa24-goog

