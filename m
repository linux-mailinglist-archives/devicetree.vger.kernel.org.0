Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 336A960E9B8
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 22:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234510AbiJZUEF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 16:04:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233815AbiJZUEE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 16:04:04 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E43710B79A
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 13:04:02 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id hh9so10819396qtb.13
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 13:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EbNR/dH/UvEk8OZajZc3Xj3CD2WxJowSsk/m1lg+P+o=;
        b=e3zEePpdfvCLXRLEOCuYY4rAeIt8oEtelWU5oS/fSYlJQqjy86t01wAPqb7rI25X2K
         j01LEdfdAaEl6cCv70scgg8p/tjN4072ExJpgL8+ipFIVqC1qxnk0TtZixyK5qI/tLFW
         JHkHiLbozTvl4aVTFq/DNcnHHb3IohNmHMmVttBtzFn08VWwqNZtbvLnDyHLK9daPnNi
         hySbIfKjcDW+p6RcaW8yVMmIaAdtPBc9Ick98rJvpcZpsGyqAz24CBBwlJ+RU5A4AERT
         5LH4TNMAQJ065gbuzldcvHb5kjptNdNAH8GeeJfhcOSF3H/OI9Lgq7WcDo5Jy0z3LNpp
         9ruA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EbNR/dH/UvEk8OZajZc3Xj3CD2WxJowSsk/m1lg+P+o=;
        b=hidsejtwupQZvl1nxkrynpBWjjRoZV7SXO6hEEaxLyTQPpMG1E/fsgnmZF9BuuL0Z0
         uAH7Ix30qO5HZUlHiytQMpivAX986Pijrte+aicGNrvBAhn4CE9cYENbOtvZqanmXZRP
         jfMq8WFPh6OWwVWrt/VDCDJHf6R7UtBsDcmaQbK38E+9TLCLp9IP6UJlBkvsLb0ZAT+f
         yJ4EiwpmzhHHq9HbZi2Q86hJ02rr49HhpcEVrfSWIOzlRFS90zFwPWM0R5Vp3VyWhpgs
         oC/Dvpz9m0uCpW0K0ojdHevjPUp0v5v5uBPkzettoH2icJECfI275BsoySk4qw6B2LlQ
         fH2Q==
X-Gm-Message-State: ACrzQf35tcyCewn3w64dOelms7wcsjRsU/7iuOVGaxy68IioZKr86Ge5
        x5XiRkCwXRkfNeL2p9AKpNrEwA==
X-Google-Smtp-Source: AMsMyM6C5AlIVSN95ncUeCbiVObuIzE73kQdtNULsiZVdtzJGtI+decG2fMGpyLOL+g11tTtrwL8+Q==
X-Received: by 2002:ac8:7f07:0:b0:39c:c64d:852e with SMTP id f7-20020ac87f07000000b0039cc64d852emr36974258qtk.21.1666814641805;
        Wed, 26 Oct 2022 13:04:01 -0700 (PDT)
Received: from krzk-bin.. ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id de30-20020a05620a371e00b006e99290e83fsm2942089qkb.107.2022.10.26.13.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 13:04:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: sm8450: add SDHCI
Date:   Wed, 26 Oct 2022 16:03:53 -0400
Message-Id: <20221026200357.391635-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Depends on:
https://lore.kernel.org/all/20220410205127.1670705-2-dmitry.baryshkov@linaro.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  arm64: dts: qcom: sm8450: move SDHCI pin configuration to DTSI
  arm64: dts: qcom: sm8450: disable SDHCI SDR104/SDR50 on all boards
  arm64: dts: qcom: sm8450-hdk: add SDHCI for microSD
  arm64: dts: qcom: sm8450-qrd: add SDHCI for microSD

 arch/arm64/boot/dts/qcom/sm8450-hdk.dts       | 19 +++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts       | 19 +++++++++++++++
 .../qcom/sm8450-sony-xperia-nagara-pdx223.dts | 22 ------------------
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 23 +++++++++++++++++++
 4 files changed, 61 insertions(+), 22 deletions(-)

-- 
2.34.1

