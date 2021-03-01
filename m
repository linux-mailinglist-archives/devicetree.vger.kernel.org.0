Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62C8B3293DC
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 22:41:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239211AbhCAVkM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 16:40:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244203AbhCAViL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 16:38:11 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 025BAC0617A9
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 13:34:49 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id o10so12467568pgg.4
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 13:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VyeZQvl4byLd25Jz1AxZVLku+5m4TK8ZxtD8FgoDo9M=;
        b=YXldF7i0YZ8gaspXB/kpxJp5CMVxf+v8a8cvMgQ9uRJIGfXB0EZehtPLCj1onqsD8U
         8rrkRPYFjhwsxXNk5tPyFxiX9ZoNUC+4FK/YG9Lp7YSB5KGBVdi9VqW3bZqfPPQJUoMQ
         pyG6JnCyg8xc0cC4klhlcdphhonYu9HPTqhIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VyeZQvl4byLd25Jz1AxZVLku+5m4TK8ZxtD8FgoDo9M=;
        b=Dziu+YsU4QW9Mp21jSlLAa1nj4Cxxj+xD2WcQdv1WD0EEUUNWpo4mu37FCKzQYl7jz
         l9rl6XwqXij+bDK4D8Gc8e9Y1F8S4S1fisPs8AG4rM2qxYFg2s7Okk6c73rtzZRhzQ7o
         XqtsnPqqIs40iPgXh7x7lwZxpN2qBhIGaOmev08mWBko8+Zgadbq4PwlCKzpSktrynHU
         o5RecAXOxIA9biNpFPhOd9B/UtDq7D7EV3sMM7eW2ZWPI7zrZyvdYAOQo1H9PQVDl+s9
         RIFuTzC1O4BeYrREGR3/u78SE3u0oRk27PMdiN5wozwV+u0tYcuaDM5B2uTtHBjxFi+U
         YFfw==
X-Gm-Message-State: AOAM531JqmAkyGgTsEeFbQ1gXCkKwOZPPmgr/7X525Sd3OjLeUnu/3bL
        N2VCd00mQjjuALWrUt7gUpKS1Q==
X-Google-Smtp-Source: ABdhPJz3MOi2pUgM5t3J6movoTcpC9yZ0+DXCKH3b7olTFUP73JuUeF5EcfDuNShqtp+IWeJTQQxNA==
X-Received: by 2002:a62:4c1:0:b029:1ee:70e1:75c1 with SMTP id 184-20020a6204c10000b02901ee70e175c1mr368583pfe.23.1614634488544;
        Mon, 01 Mar 2021 13:34:48 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:c086:5f6:85dd:98c8])
        by smtp.gmail.com with ESMTPSA id f13sm790366pjj.1.2021.03.01.13.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 13:34:48 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/13] arm64: dts: qcom: Move sc7180 MI2S config to board files and make pulldown
Date:   Mon,  1 Mar 2021 13:34:26 -0800
Message-Id: <20210301133318.v2.2.Id27e7e6f90c29bf623fa4880e18a14ba1dffd2d2@changeid>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
In-Reply-To: <20210301213437.4165775-1-dianders@chromium.org>
References: <20210301213437.4165775-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In general pinconf belongs in board files, not SoC files.  Move it to
the only current user (trogdor).  Also adjust the drive strengths and
pulls.

Cc: V Sujith Kumar Reddy <vsujithk@codeaurora.org>
Cc: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc: Tzung-Bi Shih <tzungbi@chromium.org>
Cc: Judy Hsiao <judyhsiao@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---
This should replace the patch ("Asoc: qcom: dts: Change MI2S GPIO
configuration to pulldown") [1].

It can also be noted that on future SoCs we won't have the separate
pinconf/pinmux nodes but we're not there yet on sc7180 [2].

[1] https://lore.kernel.org/r/1605526408-15671-1-git-send-email-srivasam@codeaurora.org
[2] https://lore.kernel.org/r/CAD=FV=WhjvqUau_Jz9ZLFukGUxRqGJTJN+sUt=yv2Q81FRzUWQ@mail.gmail.com

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 24 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi         | 18 ---------------
 2 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 58e127b6ba1e..47eed134c733 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -877,6 +877,22 @@ pinconf {
 	};
 };
 
+&pri_mi2s_active {
+	pinconf {
+		pins = "gpio53", "gpio54", "gpio55", "gpio56";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+};
+
+&pri_mi2s_mclk_active {
+	pinconf {
+		pins = "gpio57";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+};
+
 &qspi_cs0 {
 	pinconf {
 		pins = "gpio68";
@@ -1017,6 +1033,14 @@ pinconf-rx {
 	};
 };
 
+&sec_mi2s_active {
+	pinconf {
+		pins = "gpio49", "gpio50", "gpio51";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+};
+
 /* PINCTRL - board-specific pinctrl */
 
 &pm6150_gpio {
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 60248a6757d8..5040923a9f7c 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1856,12 +1856,6 @@ pinmux {
 					pins = "gpio49", "gpio50", "gpio51";
 					function = "mi2s_1";
 				};
-
-				pinconf {
-					pins = "gpio49", "gpio50", "gpio51";
-					drive-strength = <8>;
-					bias-pull-up;
-				};
 			};
 
 			pri_mi2s_active: pri-mi2s-active {
@@ -1869,12 +1863,6 @@ pinmux {
 					pins = "gpio53", "gpio54", "gpio55", "gpio56";
 					function = "mi2s_0";
 				};
-
-				pinconf {
-					pins = "gpio53", "gpio54", "gpio55", "gpio56";
-					drive-strength = <8>;
-					bias-pull-up;
-				};
 			};
 
 			pri_mi2s_mclk_active: pri-mi2s-mclk-active {
@@ -1882,12 +1870,6 @@ pinmux {
 					pins = "gpio57";
 					function = "lpass_ext";
 				};
-
-				pinconf {
-					pins = "gpio57";
-					drive-strength = <8>;
-					bias-pull-up;
-				};
 			};
 
 			sdc1_on: sdc1-on {
-- 
2.30.1.766.gb4fecdf3b7-goog

