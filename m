Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E26CC396464
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 17:55:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233810AbhEaP52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 11:57:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234583AbhEaPzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 11:55:22 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E05DC0494C2
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 07:36:09 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id h12-20020a17090aa88cb029016400fd8ad8so89975pjq.3
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 07:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TvjojEYkUcciFGjoK9PExTv10PVSKxQplxp1sRiaIpI=;
        b=GDoDjavg9WSUFrStI/x6zQaKFfLe1Uvdwa5cASUXP4s7OJeyQZr2HQ6GFpvCGHSoFm
         2sy14JP+rK8li50dKlW78CtrFVFRhsKjOJjbkP/kfSFnFe0P+Kjukg1PyFriTmiECNaw
         90wQ6HotjoUquPiLEr5bHy+mJQx0juqP0kbD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TvjojEYkUcciFGjoK9PExTv10PVSKxQplxp1sRiaIpI=;
        b=YqWnsFDhdyO3IrZQXKFGcQFJjAkG7RxIkhSlVOzCVIJOFYzW5vzqTzs8IaLYgwq/bU
         RX/HG6gqlFm2WrSAMO2corUGyfi0Mu7np90DTzjSAhzDMZknB/q1ikvJRZWO9CAtHUCS
         AYkIKhZSYqdhGJucEwezgIh30IelaxeoVyLWJmXmYcU1tQzd4UWCo/oA4j9fYbnfg1T+
         PSc+vW26CSJvabme6ctXgh+2sN6pMHRuH3fKuZYoA745KOLyp+OO6Q9uM5U3FBsqj7hz
         oGwZy8oxqFmVrbNvWFmydF/U2zZLO8qDerwgLIRRj4krjiNLPao98spM3GDNsEKyxRSE
         f2Wg==
X-Gm-Message-State: AOAM533K4eoDDycv2z2MhDE6IzvoyfgDFbt3qy6KE4x4zdD/rm10dKhm
        vuWEapCbLas9xkOCpgsN0YBrrg==
X-Google-Smtp-Source: ABdhPJynM/jfg1vpJVL0xht4RCkyvJQ0dUIDAdwAvZEuU2SZChGp5iLKAsrha1qhoK4RQMdFt2WprA==
X-Received: by 2002:a17:90a:8e82:: with SMTP id f2mr20123792pjo.157.1622471768974;
        Mon, 31 May 2021 07:36:08 -0700 (PDT)
Received: from judyhsiao-p920.tpe.corp.google.com ([2401:fa00:1:10:ee09:a901:df78:da19])
        by smtp.gmail.com with ESMTPSA id w123sm11072498pfb.109.2021.05.31.07.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 07:36:08 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     broonie@kernel.org
Cc:     Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, cychiang@google.com, judyhsiao@google.com,
        tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH] arm64: dts: qcom: sc7180: add lable for secondary mi2s
Date:   Mon, 31 May 2021 22:35:57 +0800
Message-Id: <20210531143557.3975917-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds lable for secondary mi2s to allow overriding.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 24d293ef56d7..2027914a0bed 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -772,7 +772,7 @@ mi2s@0 {
 		qcom,capture-sd-lines = <0>;
 	};
 
-	mi2s@1 {
+	secondary_mi2s: mi2s@1 {
 		reg = <MI2S_SECONDARY>;
 		qcom,playback-sd-lines = <0>;
 	};
-- 
2.32.0.rc0.204.g9fa02ecfa5-goog

