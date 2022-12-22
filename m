Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBF5A6543FD
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 16:13:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234727AbiLVPN1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 10:13:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbiLVPN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 10:13:26 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DF752AD7
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 07:13:25 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id bp15so3119098lfb.13
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 07:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lBkTlHTCV7DoPL4le/mwbRFxHR8aDtr9pUpYPexGk+s=;
        b=zKD5pFwBrN18kAEJOxOpEZiGnAxtZZRyJZP4Z02dzse7A5bBM6cuPBOHL33RF1lrsp
         Nvzw9ZEYCW6LB0mRHqluqA2HaGP430lbfcPwdMs9zqisP9wpbLHftldIc0HpAJNF4lIm
         HLymmIZLItMAMzzH5UJ5GEGRvlZuVN5wov5Le8ayUC8cDuANvWk4Qf5lcU1IUIOT2+9s
         HlZ4ihzOJhduYkqfVDm95ejYrPE0copTH8NEfoA3D3JQ/StBG9qxhP2uv08YXtQBj9nR
         y5M5H+wvJHUQf/CpHMCJ+a6k1eXpp4jukhEUDJ86PSW4qySMiFkviKUUcAVnEyuLbPI3
         GJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lBkTlHTCV7DoPL4le/mwbRFxHR8aDtr9pUpYPexGk+s=;
        b=rD/QM47DqXwQj+Y6JuKB9Wa3m+u0t9YkY7qWc2CMR56Mk8uQCq9rGqQDEwnjjjetdK
         jYsbWSik5iF5O1WBWtQ0yugJC2qQqeAoeRAiynZGSy6RxORk3WFU8XLgdgUA+fD+VSPf
         4EGhpee1RdHoKUjsGN7UmCaxhk0ZrxeYMtIEJl9gEavvYK/QmQq4sFPdTO523fljki+f
         //GJfb05WC9BRzqbWqT+1LosShYis1/LDu8/64Y5iF5YS2IFlRWwDWVQnZIxNocz/4T2
         HZd0h/FosbD5EV1SoEkMT2HHVMSQtTP64qvNZ7i9KnqdtQHQIZ6lwG5TpJw5j5UsB+1u
         M1Gw==
X-Gm-Message-State: AFqh2kp6LDz+TD3/l2CfL068aJUaHEMpHDBhPn+6v8rzJ67Kd4y2Jwn2
        /vOWrMnRNr3vrHDJLglae9B3Ww==
X-Google-Smtp-Source: AMrXdXvPSg3Ce9ePCSZpKhITo9ZVUUwl+XZWcxQZqS5wNHR/5HJ7vEGSCyjbmdN8Ri1rtr/+1KYC8g==
X-Received: by 2002:ac2:446b:0:b0:4a4:68b9:66cf with SMTP id y11-20020ac2446b000000b004a468b966cfmr1473439lfl.26.1671722003702;
        Thu, 22 Dec 2022 07:13:23 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k9-20020ac257c9000000b004947a12232bsm91269lfo.275.2022.12.22.07.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 07:13:23 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Doug Anderson <dianders@chromium.org>
Subject: [PATCH v4 1/4] arm64: dts: qcom: sdm845-db845c: fix audio codec interrupt pin name
Date:   Thu, 22 Dec 2022 16:13:16 +0100
Message-Id: <20221222151319.122398-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pin config entry should have a string, not number, for the GPIO used
as WCD9340 audio codec interrupt.

Fixes: 89a32a4e769c ("arm64: dts: qcom: db845c: add analog audio support")
Reported-by: Doug Anderson <dianders@chromium.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

---

Cc: Doug Anderson <dianders@chromium.org>

Changes since v3:
1. Add Fixes and Rb tags.

Changes since v2:
1. New patch.
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index f41c6d600ea8..774e4352f299 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -979,7 +979,7 @@ sdc2_card_det_n: sd-card-det-n {
 	};
 
 	wcd_intr_default: wcd_intr_default {
-		pins = <54>;
+		pins = "gpio54";
 		function = "gpio";
 
 		input-enable;
-- 
2.34.1

