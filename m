Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 593B35BD4FF
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 21:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbiISTAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 15:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiISTAr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 15:00:47 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B490326FE
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:00:43 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id i26so4982lfp.11
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ShH33aamXq9yto+qDd3gy7jLR1LtKFm+0b8TRMJLzK4=;
        b=IVKiyy+l3ClxNYgRRZB5KgyRCdxm7GLe//Bkk8kmahbepwDOqqavuj3V0kYz+QoF2C
         ZM78jAe7b+D5F/xOhP3YNokIUsKF6gJr+5jDmv4ZaTgTdnDvwH7pLsiR4Dd7FhVaw0Tf
         MkNXL9wzcHc+Oj395qdahF6lPYdoFtchxT2JYaF95yyb/yldzk4cmaQ9YFgi4LFhYVrr
         6xuq7sBO+136WV5zokn+QJ5hUVT0mRAySY3BZiddIUcoTjDAV/3Vdcyy7goyXwjwBHjA
         bAW+8VzHggKO7ayVZuPh7SM+u7j4Voa/H0u2a/64Pv3c8l+C6xle52TP0VQCWQAx8gXO
         uvXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ShH33aamXq9yto+qDd3gy7jLR1LtKFm+0b8TRMJLzK4=;
        b=3qEJqsR5IZmOGOU/CfETPEZIVV50SHnUHmLsjf5PjizIh+VeZl2slpDIcXGIMx3gEp
         Fyf6MFd+9NXbzryx38T+uu/cNBEapHwB7X+V53ZrvTvydr/Zz++6wRXnOMyeWNO/CSfu
         j4rjZEwSww/5CRH9PxCUNYY5zbh3zp6LMqI+JJUd28T9lGJ71x8CTxL5rJ0SybOf5Fxb
         3i6rJJwIdDWxrWbWtYOAE8ofZdLK122T702io5H4T5s3z/xDt6PZNQMxswtPNdN2IF9W
         M2IVvKM1+gGQRljv5tfuX95ZxkUAx+Scm45E4vh+RTS8ihx2/SBB1yD/co57ke5iH4r+
         +wGw==
X-Gm-Message-State: ACrzQf2I9qPs4d4dy13+9UoDnyBNLWcw5YY2b5CRn+doeVwrMn4uCFA1
        WkPgiooYTSk+DTLRZG/MTA2mGQ==
X-Google-Smtp-Source: AMsMyM78p3W7WipH1sARr8kn/XdagFw5DGpZl2ld1YQhOm0Fnt+ZxA939EPd+mnoGgrI0Vdm9H/uAw==
X-Received: by 2002:ac2:5462:0:b0:49b:8aee:3535 with SMTP id e2-20020ac25462000000b0049b8aee3535mr6425478lfn.410.1663614041422;
        Mon, 19 Sep 2022 12:00:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u12-20020a05651220cc00b0049a747d6156sm4878907lfr.287.2022.09.19.12.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 12:00:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v1 2/6] arm64: qcom: dts: miix-630: correct firmware paths
Date:   Mon, 19 Sep 2022 22:00:33 +0300
Message-Id: <20220919190037.2122284-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220919190037.2122284-1-dmitry.baryshkov@linaro.org>
References: <20220919190037.2122284-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct firmware paths for the Lenovo Miix 630 to include the SoC name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index cf81c33a9d7e..a105143bee4a 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -28,8 +28,8 @@ keyboard@3a {
 };
 
 &remoteproc_mss {
-	firmware-name = "qcom/LENOVO/81F1/qcdsp1v28998.mbn",
-			"qcom/LENOVO/81F1/qcdsp28998.mbn";
+	firmware-name = "qcom/msm8998/LENOVO/81F1/qcdsp1v28998.mbn",
+			"qcom/msm8998/LENOVO/81F1/qcdsp28998.mbn";
 };
 
 &sdhc2 {
-- 
2.35.1

