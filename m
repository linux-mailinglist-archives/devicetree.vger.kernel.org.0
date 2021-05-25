Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 922AA39028F
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 15:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233176AbhEYNeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 09:34:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233195AbhEYNeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 09:34:24 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 591FCC061756
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 06:32:54 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id gb21-20020a17090b0615b029015d1a863a91so13254153pjb.2
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 06:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+QStyVVPj08Hs4Si7JrnO3JRYDXcCrB3sX1OrxqUj6E=;
        b=glWhvmrqEcb9c3Lo7vJ3WE3ir+QPGpMWWBFnPXE9hLJOJTXfPlbjF2FgGETlA/XE5/
         Zyy5GD1yTysqlKA58aUGOKw1oEH7xVVQ8SCOZA6sUtUOEmXseMAgJDjx6/4n1F5GvYbI
         v0EorIQkQwHd2RrTqjO2wnyIgCCtFAelYDWBI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+QStyVVPj08Hs4Si7JrnO3JRYDXcCrB3sX1OrxqUj6E=;
        b=s7WHKlJ5lUIPo6oTOGO0GY2eJwSFWX+FQyfirSKaAfo94miUjNYvBvasaDjYSrKB+l
         0H7w3T1i3MfrW2mEfLgzpH4TG55OxdoV4HufxpOpXsTMOUP63B568gMvGtanab73V2Ih
         XRa7oDs+ajnfRxxeWqQDjzhnLOmDQnORvCKC1lPR0GV/HgIzmEegK2cTAPbnF+ubVkSv
         hJVjZ2pCNKCtsLfIaxXRgbVovEMEJV4KMhqstKjf8IWl1feOe+R5lgi3sDiPdkQI/Pln
         x9fb6k5/9LBV33QsijtX/tEB6s/zkBsan7nNK3WjoGGtPFWiGODEpPG/BflBZjl9PDp4
         kjzQ==
X-Gm-Message-State: AOAM5321xymo9XT619BanKetxRAKhl7U24m0QTbxQlJfcWqAD3qONSRq
        EdNpYj1c/tY7r90JHddV3f2Ayw==
X-Google-Smtp-Source: ABdhPJwgPpHU9r7rGU5NSJSRK4go5ONu7biquF7SbK5A+rDT6ceU0lEwS2a9O6Q72iATpRjzZYu0Bw==
X-Received: by 2002:a17:902:f541:b029:f0:7088:95e2 with SMTP id h1-20020a170902f541b02900f0708895e2mr30885254plf.84.1621949573821;
        Tue, 25 May 2021 06:32:53 -0700 (PDT)
Received: from senozhatsky.flets-east.jp ([2409:10:2e40:5100:4dc5:c248:c4d5:68b8])
        by smtp.gmail.com with ESMTPSA id jz7sm2103317pjb.32.2021.05.25.06.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 06:32:52 -0700 (PDT)
From:   Sergey Senozhatsky <senozhatsky@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Tomasz Figa <tfiga@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sergey Senozhatsky <senozhatsky@chromium.org>
Subject: [PATCH] arm64: dts: qcom: remove camera_mem region
Date:   Tue, 25 May 2021 22:32:42 +0900
Message-Id: <20210525133242.188603-1-senozhatsky@chromium.org>
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

qcom camera driver allocates the ICP firmware memory
dynamically, so the carveout region is unnecessary.

Signed-off-by: Sergey Senozhatsky <senozhatsky@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 24d293ef56d7..b89e6f78fd20 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -64,11 +64,6 @@ mpss_mem: memory@86000000 {
 			no-map;
 		};
 
-		camera_mem: memory@8ec00000 {
-			reg = <0x0 0x8ec00000 0x0 0x500000>;
-			no-map;
-		};
-
 		venus_mem: memory@8f600000 {
 			reg = <0 0x8f600000 0 0x500000>;
 			no-map;
-- 
2.32.0.rc0.204.g9fa02ecfa5-goog

