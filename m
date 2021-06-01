Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4B8F396AFB
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 04:21:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232517AbhFACXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 22:23:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232516AbhFACXJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 22:23:09 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE0E0C06174A
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 19:21:27 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id g18so10243186pfr.2
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 19:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G7LsGLmMOn0RCf1NWPI0jTR/YPJV/uz3PsfA5w2kCWY=;
        b=bMl5mgjYlnR3D9xJOq0kwO1H6utjThPiRUDlo5uvzPZFjXhXXLqE838OmSKJLfNmIm
         H6f3yImB6nt/Hwd2V14xjPOomtM4mnElEV4CPs/KWAUnaimTw4O5D8OB0L9LMSuv4so0
         tpR2ZeuWcHTkGNNWNY4pEoRpepxBoJGEVS1a0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G7LsGLmMOn0RCf1NWPI0jTR/YPJV/uz3PsfA5w2kCWY=;
        b=ZSvmgRzKu4FXNsxBdieK/hhPRmmJiDy23zfbSS6qdbImz7ocUoKH8H5ampt4tm3JNJ
         JXr6MTOUIyx8/paZJoD5O2LFtMb4tOchd6NCxde7gkyyuQ4ixPyxYuy3anQcvsB0KCgS
         FSULnXhWM9ZEjHFQwaW+zhX5dCJadm4ePgI1HMeHZbAJHL+jf/F8bgpeIyLp6SOygPrT
         TfsRllTOgugMyMn4U18C72UuCG4qXmbCEiR7SHKRQFUrflFBdyHM+M+lpPNNkyhcsyyL
         Z5iOi+n0AzuSiAf34JetF69Sn9vElG6b8k0AyVOjIDO+rsETms2A86n4a5/kqlWzzSCP
         p3aQ==
X-Gm-Message-State: AOAM531K9vCqcyvx/MPbg6YoR2s9dTDxYIFWM+v7pKnLGZQmrDKIKJtp
        dFGWdoEAU2WL3ZrlXL2ElwiSKA==
X-Google-Smtp-Source: ABdhPJxN7Qm65U09tF7lVMDcXuKIvj4QgVk52a65hbjIuF1Bt95TBlmlV2sQ3UN4lpyqHz7qrp9kVg==
X-Received: by 2002:a62:87cd:0:b029:2e9:a7c8:ad45 with SMTP id i196-20020a6287cd0000b02902e9a7c8ad45mr14001596pfe.8.1622514087296;
        Mon, 31 May 2021 19:21:27 -0700 (PDT)
Received: from judyhsiao-p920.tpe.corp.google.com ([2401:fa00:1:10:f7e8:2d6:ddb7:af4e])
        by smtp.gmail.com with ESMTPSA id y205sm473797pfb.53.2021.05.31.19.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 19:21:26 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: qcom: sc7180: add label for secondary mi2s
Date:   Tue,  1 Jun 2021 10:21:17 +0800
Message-Id: <20210601022117.4071117-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds label for MI2S secondary block to allow follower projects to override
for the four speaker support which uses I2S SD1 line on gpio52 pin.

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

