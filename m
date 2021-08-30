Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E052E3FB8C4
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 17:07:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237245AbhH3PIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 11:08:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237199AbhH3PIB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 11:08:01 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFC8C061575
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 08:07:08 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id c4so8690358plh.7
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 08:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f7E36/4NEmmdeFXZk05Zb6lbS92pEe7/zhYEBPZmpVY=;
        b=hfW9wMcdYKy98q+B6cb14b+j+zZn9ud9xmGIDnQMrGOeGxAjqGjnp8ef0QZcvZqKoI
         PddPnU7VunrapWeSpplCxz9Gp6Bfd5jpbaQnvehjuQmIXsYuSlOVAp9uJHZ7QSw/5Er+
         ZmbiHX0akipuIjeEsvjQ8GbuggKhZUKzkpmeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f7E36/4NEmmdeFXZk05Zb6lbS92pEe7/zhYEBPZmpVY=;
        b=Q0KO1dnRPiSOJ1vzztgCpmb+zAdcoatXQMKBmk+xtRJNIHbBZpn+WGsm7Nd0KVRMS6
         MFXmEcJthH/f5/NtvlM6SY4dE4LuwA5Cbv+ZzOxuDXTRbboYRnUtjAWoJZk4e3izyweJ
         BS7luiTbTjutKcckzUEk7/1TPUHhPiNA2cFI+uDwH7WyR6r+6maNZ/u6gsBNmpzvXZ6b
         HpniW905DDqex4N7nHZvsJfLUvozDciJryIUPNTddBq5WWxy821BiqzO3klE1wuMOoAu
         D3RTFNOLs3gw+m2AaCg4lIzcyxKVBcEBuGMy6cJ9QADnNh7wdGfqETpaAkT+k8o5z2wD
         lHvg==
X-Gm-Message-State: AOAM530Wzp1PnB3FU0iST9vXG82jC011GxU/2aXIxWDonlQZextycn13
        ZRsG+iVPwMd5pjmB675wIO3izX07rpQvWg==
X-Google-Smtp-Source: ABdhPJwY2E1nxu0XIhzRBDbGZh3rxjkEkKjQFVgVhAaC8KfQJH+XJZSuOZFLHRtdD+Fi14LOe0mcaw==
X-Received: by 2002:a17:902:e891:b029:12d:6824:9d28 with SMTP id w17-20020a170902e891b029012d68249d28mr123373plg.23.1630336027860;
        Mon, 30 Aug 2021 08:07:07 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:b658:7113:70a2:ea])
        by smtp.gmail.com with ESMTPSA id t10sm20285025pji.30.2021.08.30.08.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 08:07:07 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     bjorn.andersson@linaro.org
Cc:     sbhanu@codeaurora.org, swboyd@chromium.org, mka@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7280: Move the SD CD GPIO pin out of the dtsi file
Date:   Mon, 30 Aug 2021 08:06:37 -0700
Message-Id: <20210830080621.1.Ia15d97bc4a81f2916290e23a8fde9cbc66186159@changeid>
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There's nothing magical about GPIO91 and boards could use different
GPIOs for card detect. Move the pin out of the dtsi file and to the
only existing board file.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sc7280.dtsi     | 4 ----
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 371a2a9dcf7a..ed9f9283b71d 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -336,6 +336,7 @@ data {
 	};
 
 	sd-cd {
+		pins = "gpio91";
 		bias-pull-up;
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 53a21d086178..99e946a33fbb 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -1573,10 +1573,6 @@ cmd {
 				data {
 					pins = "sdc2_data";
 				};
-
-				sd-cd {
-					pins = "gpio91";
-				};
 			};
 
 			sdc2_off: sdc2-off {
-- 
2.33.0.259.gc128427fd7-goog

