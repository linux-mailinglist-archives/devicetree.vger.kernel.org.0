Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 093FF607367
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 11:09:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231135AbiJUJJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 05:09:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230518AbiJUJI4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 05:08:56 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CCF11A3E17
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 02:08:53 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id v130-20020a1cac88000000b003bcde03bd44so4537885wme.5
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 02:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vd4kM4iLHeRkVbVm5qnb83YtTvz+Uiv2cMXrmKRaEkw=;
        b=SkJyUMFNsDqLAGyKgQ/sjrrSN+HLQd++XI8/ZkHMxItPDlUVR3ajA3bDGOEeBG0To2
         bV0KHxEzKcpC6gOXrRVW7tDgpBCU0eLP8BKBZoqDI62swfKN8OxClVHRkDdrHmi/fD6U
         eH5wyzyZDgZFIkAzLABhNvmxYrGJvdcBQjVVs+hnyZfrCN3DuIGY9AzT4qWzv8m/jsDa
         JeeKsVSYqWUvMBE6FbW4NxfNLFPyCoQArt9YpLX4WfrBNLp47w882R5pQJfLUDE9mVRl
         CtCxtuYRK+5NAsfJSKDgT2f42xn4cNWAUK3LFd2IJEnJhvPhq8MqITYyWCwQxkWKYX4E
         Hcfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vd4kM4iLHeRkVbVm5qnb83YtTvz+Uiv2cMXrmKRaEkw=;
        b=iYPcfrqPQ87dE831ggewS+Lx4nYRlHApZD42Q5c5wGsY+BfVu2feTZ1yzGKtM4y2AL
         nA44SbBbtTgKPze/THHZfJ0hZnouyxnHNvuY8JefjL19kht60gNfHG1ujxebTiF0W40U
         +2D56rFYziXsOUpiz66WEuVb4WiBlO1IkQjlInAOKop5Uhx+4V1hEPJ1+D57Ze8gxSWi
         eENM0GLbaKe1FTgxt9HOY6i4QZmKKQlY7W08RDzZNQJImk+UfQYg6w17HZ7rtekknjqm
         imlJeivgxAmXPCvKX4HZnpJG+G1IXIqY8tlW0XQYwUJTrvafo+evY6kbTNTqf1Jxx2NW
         Sf/w==
X-Gm-Message-State: ACrzQf2DnSSBS8+D6s6qq/Fj9dcghWsM+nt/USUIYBNfupNPxr1jlc7j
        LcKrtkGwv57i9+ZMnLbKTZlBgw==
X-Google-Smtp-Source: AMsMyM6W4Tv1zSV3ApzexTkV6ChDGf/w4gpuwGXWRHVoNE1V5yDCRebZT8BJEY22Jci730jRA/peRw==
X-Received: by 2002:a05:600c:502c:b0:3c6:f5ff:e089 with SMTP id n44-20020a05600c502c00b003c6f5ffe089mr12156663wmr.108.1666343331390;
        Fri, 21 Oct 2022 02:08:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c444a00b003c6f27d275dsm2230286wmn.33.2022.10.21.02.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 02:08:51 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 21 Oct 2022 11:06:39 +0200
Subject: [PATCH v4 03/11] arm: dts: qcom: mdm9615: add missing reg in cpu@0 node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v4-3-dac2dfaac703@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v4-0-dac2dfaac703@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v4-0-dac2dfaac703@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Gross <agross@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes cpu@0: 'reg' is a required property from dtbs check.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/qcom-mdm9615.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index de36e4545e75..eaa3236f62db 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -27,6 +27,7 @@ cpus {
 
 		cpu0: cpu@0 {
 			compatible = "arm,cortex-a5";
+			reg = <0>;
 			device_type = "cpu";
 			next-level-cache = <&L2>;
 		};

-- 
b4 0.10.1
