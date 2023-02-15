Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCA806976E7
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 08:04:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233269AbjBOHEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 02:04:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232959AbjBOHEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 02:04:16 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E298723643
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 23:04:12 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id be8so19389266plb.7
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 23:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dSwftWU2F5+UTSHoENK8S8rRksgligsrF8ZnqH0Z/+c=;
        b=xw3/WRq4ksYn4+KjHibG+jFHzEFv9vvksIDHUEId/SKl5rEZB9mQu7iMZyguZbZcfn
         z/pQ13ViWNpz7pfSS8GrsUqMRxcIdLTI9ldm1RM71UvqhkD4TGaDelLcxKNf4u/8h3KR
         eXAnkHdiiHl99scHhi1Zey4tfeiPWK9j/ccg8LcLWAPx3OoefQg8Ouckq8AqJKfsNGwu
         BivWJiAThGaMPzvdmwY8A7McOZJ0NnZ9Ogak2mZ0RD0G0sGvAJfYmwoMT6d9qYRRMwoZ
         NaU2Qy48/tTuelg8TNJWg5ZeeHIRBviwlMg8LV2Jq54AtolYUKLSbGy6PhbvdmTzV5Ck
         UfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dSwftWU2F5+UTSHoENK8S8rRksgligsrF8ZnqH0Z/+c=;
        b=AY0LE3beS0RqDTdJT7ZRP3wFiAd9fJET0/GpVFHKuAP2EGhyo5Q7mlP4ldInQM26eq
         VwXsWHn7TfYeK3dDp4UNHswtLS9RoQQT1gS6Q1SnbVoc0jWqlCsQhwPTL0U8YFTyQChg
         xZ/n7vX3ieGGYEOCPLgNzveoP7rjVMzHoBOEDgwVwtnKhreHVktReKjv3qE1tYEBUJt6
         mID7F8kZLLrVLl0vgGmOacCkO2PwRkTozlZM6spyI4q3wKi3FwBOC7P0Sj5VAYT1TqDP
         jheAdcnECoC0TdS8eEyFyo2gcMHFz3Jdi2Y6ANL6/8SiXKyOeuECNugxBzfKdRegBJzy
         ++BA==
X-Gm-Message-State: AO0yUKW50GIXnBUltudZ84Z5uwsjr6DGISCWkNixwDN4Q62kBvHtpUe9
        L3IwTpV/nrJsE/VoHOjT9SqW
X-Google-Smtp-Source: AK7set9eiVSTAEYNuI+v+GGG6D4c2nh12FOt1d2hVkSxs6wNdRjAX8EyGozOE27ZKGxtIFtDyaOFOg==
X-Received: by 2002:a05:6a20:7fa3:b0:b9:46a1:7f14 with SMTP id d35-20020a056a207fa300b000b946a17f14mr1085241pzj.56.1676444652322;
        Tue, 14 Feb 2023 23:04:12 -0800 (PST)
Received: from localhost.localdomain ([117.217.179.87])
        by smtp.gmail.com with ESMTPSA id e23-20020a63db17000000b004fb26a80875sm9953795pgg.22.2023.02.14.23.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 23:04:11 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        viresh.kumar@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [RESEND PATCH 00/12] arm64: dts: qcom: Supply clock from cpufreq node to CPUs
Date:   Wed, 15 Feb 2023 12:33:48 +0530
Message-Id: <20230215070400.5901-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
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

Hi,

As a follow-up of [1], this series adds support for supplying clock from
cpufreq node to CPUs for rest of the SoCs.

This series has been tested on SDM845, SM8450 and SC8280XP based boards.

Thanks,
Mani

[1] https://lore.kernel.org/linux-arm-msm/20221117053145.10409-1-manivannan.sadhasivam@linaro.org/

Manivannan Sadhasivam (12):
  arm64: dts: qcom: sdm845: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sc7280: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm6350: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm8550: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm8250: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: qdu1000: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sc7180: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm8150: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm8350: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sc8280xp: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm6375: Supply clock from cpufreq node to CPUs
  arm64: dts: qcom: sm6115: Supply clock from cpufreq node to CPUs

 arch/arm64/boot/dts/qcom/qdu1000.dtsi  | 5 +++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 9 +++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm6350.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm6375.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm8150.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm8350.dtsi   | 9 +++++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi   | 9 +++++++++
 12 files changed, 104 insertions(+)

-- 
2.25.1

