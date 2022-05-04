Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACD0F519979
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 10:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346121AbiEDIVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 04:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241377AbiEDIV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 04:21:28 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5035E205F2
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 01:17:53 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id gh6so1475956ejb.0
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 01:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eLF1ARepucIhgvhr8gDrVGbotIKVAz94dozZ5cdYPK0=;
        b=qgcv0InGTrDPM6MvwEavrSeW8iRz4CUBgvuUNp1vYL99wfTz+ge5/sWJpUHZx2HDIX
         AjOLEft1G6SgCg349vX+izEyxTaW4+rbsiOnP6N/1moT7b+WTT9mgJfckddx28Xlrl9n
         sRVE7aDXjpT/KCvIneHMfcUCG9iYt/fGQG+vTM7OMG+78NkhmhHkmGS/p3izRDwoepPm
         uxOuxtQBAnQJO10yMv6yKyTXAM0T99cy865g3OvoOxAhruCRro2srF5CYYJsk+/rvPL6
         kG6fCba82C63fxqT9yOVlrGrIV2ppaw2Mc7m12OotknZM+bLYqu6doKhYMUFdUiWCF6Z
         YUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eLF1ARepucIhgvhr8gDrVGbotIKVAz94dozZ5cdYPK0=;
        b=vRNmjebFYuY7k8aJt7kFU+t+x+DteAM4XuoOjRh9k21R8eeydKA3OZSQuVtPmWRhL1
         pfmthvgnyKUG4k6a5jMaEaEAke8JC/Q+3w2gMFv35FxWm4ENctqUcf3M3RoFs5hz5JpC
         NwZSQqeCfVmHy/dgLGEoBTePPt5J+fFtyvjqX/QzKb/XojQjUBhpB5fJeDs3s9LUsGwm
         V6SOSZ2jlK0ZGNCTC5/zctU97DEG51D4zpM9xzFZ7i2R4hkcacMf9rnmV/wjL//l+c1r
         n+3LStwmTGdOfMg9DmPN9/DC0R8GivWpCQlOqWeB7/riulic6wrhl/GKFCKflOdeNYp2
         SATw==
X-Gm-Message-State: AOAM532aADnU3RfeOwhJBaSO2x2POAyJegF6J5pBqA33GxvSGcX45F4O
        uPnq6KGO9cbge7lZbVpuwj+8Bg==
X-Google-Smtp-Source: ABdhPJym4N+A2Wj0gibuSGUqY+VO60am20VGoRRfHAbmIQVanWWJcc6jHQoM5LjyH2L0XCFhNOdf9w==
X-Received: by 2002:a17:907:728f:b0:6f4:5d2d:38c8 with SMTP id dt15-20020a170907728f00b006f45d2d38c8mr10845897ejc.345.1651652271868;
        Wed, 04 May 2022 01:17:51 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l21-20020a056402345500b0042617ba6393sm8781322edc.29.2022.05.04.01.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:17:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/5] soc/PM/arm64: qcom: Add initial version of bwmon
Date:   Wed,  4 May 2022 10:17:30 +0200
Message-Id: <20220504081735.26906-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

Hi,

Changes since v1
================
1. Add defconfig change.
2. Fix missing semicolon in MODULE_AUTHOR.
3. Add original downstream (msm-4.9 tree) copyrights to the driver.

Description
===========
BWMON is a data bandwidth monitor providing throughput/bandwidth over certain
interconnect links in a SoC.  It might be used to gather current bus usage and
vote for interconnect bandwidth, thus adjusting the bus speed based on actual
usage.

The work is built on top of Thara Gopinath's patches with several cleanups,
changes and simplifications.

This is "initial version", which means the work is not finished.  The goal is
to add support for further devices (version 5 of bwmon) and usage of devfreq
governors, similarly to tegra30 devfreq driver.

Best regards,
Krzysztof

Krzysztof Kozlowski (5):
  dt-bindings: interconnect: qcom,sdm845-cpu-bwmon: add BWMON device
  opp: Add apis to retrieve opps with interconnect bandwidth
  soc: qcom: icc-bwmon: Add bandwidth monitoring driver
  arm64: defconfig: enable Qualcomm Bandwidth Monitor
  arm64: dts: qcom: sdm845: Add CPU BWMON

 .../interconnect/qcom,sdm845-cpu-bwmon.yaml   | 105 ++++++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  60 ++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/opp/core.c                            | 120 +++++++
 drivers/soc/qcom/Kconfig                      |  10 +
 drivers/soc/qcom/Makefile                     |   1 +
 drivers/soc/qcom/icc-bwmon.c                  | 329 ++++++++++++++++++
 include/linux/pm_opp.h                        |  19 +
 9 files changed, 652 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sdm845-cpu-bwmon.yaml
 create mode 100644 drivers/soc/qcom/icc-bwmon.c

-- 
2.32.0

