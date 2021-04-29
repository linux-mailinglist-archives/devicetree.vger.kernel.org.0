Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9C6E36F1B6
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 23:15:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237157AbhD2VQP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 17:16:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237172AbhD2VQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 17:16:07 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B024C061347
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 14:15:20 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id g4-20020a9d6b040000b029029debbbb3ecso29685685otp.7
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 14:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gMV4fLmuxlj/1LSQjxlewLiRWpPxpCd+ijdOsI4cSQI=;
        b=GtPpSRcQLU0XUKEv+r7amizfZTOhDiYGYUz2vP0jyI0F9p7U9VbhiWELAB9J+8gpC0
         pevkQuJJjMvo5dSr8FuKIc3o7ek9exmPwEB80ty0s4OlKA76eAnz/CweFEqrLfcX/FY3
         0h5EsQeu130S1bWPIcOa0jMM8TEKR6TDlYXhJXUP/l7Px3WxebHnT0zQCzutgWBegKb3
         tG6jCr8HdyUgZY6p319BAMsiu0jc0hHCkcAL4NfP2I3qfFqNw35y/amQ9pN0C8xnA2DQ
         DxYtUx7p1WlsE1mcMnBxEI8BJxkqkzbu1efwK8dBbtIIzqKsaxedGNrqXxkGoP+OlZ/x
         aDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gMV4fLmuxlj/1LSQjxlewLiRWpPxpCd+ijdOsI4cSQI=;
        b=a+nxxgG0pc7Cw3nimkKU+E8j8v146P1hZIJ3HbM1tKhZfdN2wygmpo4B13/C1xffZ3
         /dXwaX4u0hGVAF2gn/o1zPzYKUi5nbTKYJHC4WkDvnkro0Hq5TbysLMJyFNBUxjzrsMG
         Klr+BdkRUcjzGXldbYXEu9/JpfuitaKVo9mmsQZe9GPZB6dWUfwza9FzWEPXFaxjaYy4
         0jGPFv2O+8OobXEuvSTHkVaTtoS3iyTnBuo3SI4I/6GvqXYW0Xe8o+XxEMKeMdlkBFd9
         Olb1Xvvi4UGsdPlZl2eJc83cC/1ezJ602QcdKnpSRwTU7SJHNRD4LIgWjCItwCwx1GzL
         CGVQ==
X-Gm-Message-State: AOAM533POir5wU/iRmD6cVJaXEAi+1g77LRh/ArlQgZlj/Hyh989zpYc
        ZYP3UAy/L5k+I1V/u7cpQrMpNQ==
X-Google-Smtp-Source: ABdhPJwW2OPXHdSBNQbKtM5J18EgYMguYDQGqx0teJiOMh6Wj3EmrcgZj/4zZr6SAf9/3hTIUOQ/1Q==
X-Received: by 2002:a9d:69da:: with SMTP id v26mr1073991oto.366.1619730919516;
        Thu, 29 Apr 2021 14:15:19 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id y67sm242707otb.1.2021.04.29.14.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 14:15:18 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Luca Weiss <luca@z3ntu.xyz>,
        Subbaraman Narayanamurthy <subbaram@codeaurora.org>
Subject: [PATCH v7 4/6] arm64: dts: qcom: sdm845: Enable user LEDs on DB845c
Date:   Thu, 29 Apr 2021 14:15:15 -0700
Message-Id: <20210429211517.312792-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210429211517.312792-1-bjorn.andersson@linaro.org>
References: <20210429211517.312792-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DB845c has 4 "user LEDs", the last one is already supported as it's
just wired to a gpio. Now that the LPG binding is in place we can wire
up the other 3 LEDs as well.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v6:
- New patch

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 2d5533dd4ec2..e00a8dca2c64 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -593,6 +593,30 @@ resin {
 	};
 };
 
+&pmi8998_lpg {
+	status = "okay";
+
+	qcom,power-source = <1>;
+
+	led@3 {
+		reg = <3>;
+		label = "green:user3";
+
+		linux,default-trigger = "heartbeat";
+		default-state = "on";
+	};
+
+	led@4 {
+		reg = <4>;
+		label = "green:user2";
+	};
+
+	led@5 {
+		reg = <5>;
+		label = "green:user1";
+	};
+};
+
 /* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
 	qi2s@22 {
-- 
2.29.2

