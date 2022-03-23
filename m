Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EB064E5663
	for <lists+devicetree@lfdr.de>; Wed, 23 Mar 2022 17:28:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245464AbiCWQaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 12:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242091AbiCWQaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 12:30:13 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FA6425EAD
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 09:28:43 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id qa43so3891566ejc.12
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 09:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SuS0GFyMkF49fojOT7289HMEh2erdlNdJcyK6aLYL2U=;
        b=S94TOVpK+xO0ajQUHWO32NF7EMpklO/9MMBruSRWwCYayBm5bGeDIM7aFicgFGje3v
         1OS48MLgsdaN9d6bT0jzJczAVI/H6jqz9caJVgkF+CdL9T8XSrSRBy9n2XSKxqdBqA6U
         suuGCFHo+qIfTgx3C34FrqQAsoGBLxuKI1SlOsMqcwvqC9ORUuA16bsgiPdSBoFPmYpY
         yVN50bTcPT6M3Ea4xV7eRuqstiLCUTtmm9BGXgX/zfAJFN6gJ5+sxOZJopL9WEIKqwSz
         nDmcQz/aYDZ7rr+bj4BOdQHJTBQve9uEeabCHNO/E38MgCNp2+xqGEUWsCp0qbkSjyu3
         5t7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SuS0GFyMkF49fojOT7289HMEh2erdlNdJcyK6aLYL2U=;
        b=RGTB7BryteeNQD4oM1liXs/jTP8Sr+BS9yBAT7elPxSSASSVBzh4wpnJxdvHJ0YK8c
         ChCWN7BFdxGwdg7Z+X0RP7DSTNQvcunD/+ppksJee+VUTYX6Tf+QvbG+8nKC1ZIceAJd
         X2i8C02+g0X4W//CYrFVAxrkjXjEoI11f6w6NIXKZrTf4FufaYJ9xk4lVAEqTrOFrZiu
         PTW81LZdIb1YeT4Y8OushglLYEuQ6cu1RvzYA4yYhz79RGspjYDT0C6Yi74hHTHThIfD
         S47PSjgnswG4PL3674aN/wxRHT/iHbb2smvu1+cWJ0zfu8xZz1wR1SAIUMRI+mJ43nCz
         q4xw==
X-Gm-Message-State: AOAM533dFK9x1m9sCYdkPvmr2t1gQvs6y630l6YW4NyyAYp01t8y3HLf
        UapbyKjUliekn1SiXyWUOD09NA==
X-Google-Smtp-Source: ABdhPJw0ju3QeaJlsfcyfL9x/ksPhIAUTg7cbMlu1CpvfH7Fi/EEZh3AAqt9t/p5kcQhTVcqR4pwfQ==
X-Received: by 2002:a17:907:6297:b0:6da:6388:dc58 with SMTP id nd23-20020a170907629700b006da6388dc58mr929026ejc.472.1648052922090;
        Wed, 23 Mar 2022 09:28:42 -0700 (PDT)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id z11-20020a50e68b000000b00412ec8b2180sm173306edm.90.2022.03.23.09.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 09:28:41 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
X-Google-Original-From: Caleb Connolly <caleb@connolly.tech>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v13 6/9] arm64: dts: qcom: pmi8998: add rradc node
Date:   Wed, 23 Mar 2022 16:28:17 +0000
Message-Id: <20220323162820.110806-7-caleb@connolly.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220323162820.110806-1-caleb@connolly.tech>
References: <20220323162820.110806-1-caleb@connolly.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Caleb Connolly <caleb.connolly@linaro.org>

Add a DT node for the Round Robin ADC found in the PMI8998 PMIC.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi8998.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
index 0fef5f113f05..da10668c361d 100644
--- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
@@ -18,6 +18,14 @@ pmi8998_gpio: gpios@c000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pmi8998_rradc: rradc@4500 {
+			compatible = "qcom,pmi8998-rradc";
+			reg = <0x4500>;
+			#io-channel-cells = <1>;
+
+			status = "disabled";
+		};
 	};
 
 	pmi8998_lsid1: pmic@3 {
-- 
2.35.1

