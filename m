Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38A0164A4F3
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 17:36:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231817AbiLLQgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 11:36:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232467AbiLLQf4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 11:35:56 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5167DBC00
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 08:35:48 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id bp15so266271lfb.13
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 08:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xZCcGzwjZEh/0UcBeGrjzix0/VO6WByPAd2VCOlum9w=;
        b=WvYrA03FF95v1G9SNSTYiC8ZlRcRTDGnYUQPgsWpz3vYEax/ZFQ1fj1jJu/4v74ztZ
         kwyn21C0Fl6vQ6tHc2Ypciwr/ov7D7nLNk5Of+FO3llsNFwa6m3GtY9p/15cb/sB6YYa
         udjt0zvekOKU8oLsWhJd2hlONGSamzlGBHb2VyBPqwFegxvN+qK19muyrL1wsd5sAiHs
         eT5Zx3scAm3iM1ZWehzIH6Bnng/f1khuCtW3D7j6netgzHzjEALmqpWQAjOiBXunjs5R
         A/hVHSBLRE3wtluUCYSEH5byMga42xUUxMjXoVmuHBzjZjPynJqyhc+SAnJZIA4KgN+N
         Nv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xZCcGzwjZEh/0UcBeGrjzix0/VO6WByPAd2VCOlum9w=;
        b=DthxPvJR+4DPHunfqsNWZGn61N3iAI+dm0buMDkcxdbNOnnzWKiseJzjj5Tv8f25yk
         X79o57VMgED/jvajhsZg6XBsESsyuYfxixdc5hvKKVASxdYMuOxhRLfKL7ow/uwhZ2rD
         QZxk9jYI2lbV5cCrizV/jYJIRA60guFoBDee77kyZgOb9gsLagkoV2xLx4r4qAYpR1S9
         d2NRIhtjdYwoha6BLoZksg7VPTM3mL/OTl0FFk+Z8u9C4+eXTAVcyYWfQqKBA4EUFUjy
         CEuXxGp340kGimctJY+XIfqOuXpwxd+jkP3BRKbCT6XWrbJnKxJeN8WkyPFXeAu/eRLL
         BHSA==
X-Gm-Message-State: ANoB5pk1rvtLhwi2khnCrMlcLhw/UPXASZVVWqOEZgQl36QQumvwdvr0
        anMzyGZQepluYqlbIHbqRkWMNw==
X-Google-Smtp-Source: AA0mqf4Iw9MELI3ICiXJzpnwa0kYDmP8mkyR7Co2hzrLfgn0SgKmsYFaXhJbTpzCdCCpSGx2kB62IQ==
X-Received: by 2002:a05:6512:252c:b0:4a4:68b8:9c1e with SMTP id be44-20020a056512252c00b004a468b89c1emr5285898lfb.6.1670862946517;
        Mon, 12 Dec 2022 08:35:46 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v16-20020ac25b10000000b004acff58a951sm29209lfn.133.2022.12.12.08.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 08:35:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 08/12] ARM: dts: qcom: apq8064: drop second clock frequency from timer
Date:   Mon, 12 Dec 2022 17:35:28 +0100
Message-Id: <20221212163532.142533-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221212163532.142533-1-krzysztof.kozlowski@linaro.org>
References: <20221212163532.142533-1-krzysztof.kozlowski@linaro.org>
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

Keep only one clock frequency for timer, because:
1. DT schema does not allow multiple frequencies in such property,
2. The Linux timer driver reads only first frequency.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 79575d6b3a81..9da6459c9f67 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -381,8 +381,7 @@ timer@200a000 {
 				     <1 2 0x301>,
 				     <1 3 0x301>;
 			reg = <0x0200a000 0x100>;
-			clock-frequency = <27000000>,
-					  <32768>;
+			clock-frequency = <27000000>;
 			cpu-offset = <0x80000>;
 		};
 
-- 
2.34.1

