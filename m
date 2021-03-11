Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBE5C337F71
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 22:14:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbhCKVNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 16:13:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbhCKVNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 16:13:09 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA1FC061761
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 13:13:04 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id x29so14468868pgk.6
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 13:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hu6N2c26ob5VSIjkLdDPo/XEQBI5GcbOJ5Q5+a/XrD0=;
        b=VY/tVCOyvjoZ/Z3CoAWkFRM/TecX7OFfGs04TDrnK9CjQuxrVSbdKh4hx07J62ZxwE
         C2JwJbYywAXlTPU0bneB9EkbtScBSL8nr+lnQBlNXusun5VLi4wftKtPHLtA0b7Vhk8K
         FNCnhMpOMuZ3ANj6WTKwv6pjGYNvi6DgnFfBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hu6N2c26ob5VSIjkLdDPo/XEQBI5GcbOJ5Q5+a/XrD0=;
        b=CSzWOnweRTKUispUv5B3bJuZg1zRYJulreS//vCo8CTvrMH0lnW1FjFu8HUBlDTnyE
         Hy4ITt6H0WMYfB21oM1xRM1TgWnJZ6f/dkKF//kBAAbtPYY3Y8AJ9njUcrjwHMS24cYR
         OKAyQ+uFik8MTBmUUUTuhbaLxuHwdOteSSGMPJxbMi30oucD3shFoWbxbHJzcSPTnDMk
         VQ0iuY2o9ibj6zcVtBgCmW9Ot4tEvpM7L3KX0oAf0V1nEYLX99srSmipNGb24wQFzU3L
         QzyGEVB9WvG7xlkeWyMTb+bxduapXXoDRV1hBqZMarSmbhaektO6chEhkxOhVM2ZQXN6
         xipQ==
X-Gm-Message-State: AOAM531T6y62c1Vvh0GT/9t8VfPzYONbEQv10jzfSC7p7Wih4dpIiaiD
        waufrFXDoFMEdLJKoPNSLxzNbQ==
X-Google-Smtp-Source: ABdhPJwF9dj5QdrWGGlb9ywhLjkfy+TrcolBRDSOohdN3oPACrGh8qyfegAb1VPZ6PmONDFrj2NYvw==
X-Received: by 2002:aa7:9989:0:b029:1f5:aa05:94af with SMTP id k9-20020aa799890000b02901f5aa0594afmr9276024pfh.34.1615497184169;
        Thu, 11 Mar 2021 13:13:04 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:cc68:8f0e:75e5:47ab])
        by smtp.gmail.com with ESMTPSA id l2sm26428pji.45.2021.03.11.13.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 13:13:03 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, mka@chromium.org,
        Tanmay Shah <tanmay@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7180: Drop duplicate dp_hot_plug_det node in trogdor
Date:   Thu, 11 Mar 2021 13:12:41 -0800
Message-Id: <20210311131008.1.I85fc8146c0ee47e261faa0c54dd621467b81952d@changeid>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stephen Boyd <swboyd@chromium.org>

This moved from being trogdor specific to being part of the general
sc7180.dtsi SoC file in commit 681a607ad21a ("arm64: dts: qcom:
sc7180: Add DisplayPort HPD pin dt node"). Then we dropped the pinconf
from the general sc7180.dtsi file in commit 8d079bf20410 ("arm64: dts:
qcom: sc7180: Drop pinconf on dp_hot_plug_det") and added it back to
the trogdor dts file in commit f772081f4883 ("arm64: dts: qcom:
sc7180: Add "dp_hot_plug_det" pinconf for trogdor").

As part of this we managed to forget to drop the old copy in the
trogdor dts. Let's do it now.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
[dianders: updated desc]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Sorry for missing this in my last batch. I think my eyes glazed over
everything "dp" related as not-done-yet even though this one is easy
to do now.

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 436582279dad..192e2e424fde 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -1155,20 +1155,6 @@ pinconf {
 		};
 	};
 
-	dp_hot_plug_det: dp-hot-plug-det {
-		 pinmux {
-			 pins = "gpio117";
-			 function = "dp_hot";
-		 };
-
-		 config {
-			 pins = "gpio117";
-			 bias-disable;
-			 input-enable;
-			 drive-strength = <2>;
-		 };
-	 };
-
 	edp_brij_en: edp-brij-en {
 		pinmux {
 			pins = "gpio104";
-- 
2.31.0.rc2.261.g7f71774620-goog

