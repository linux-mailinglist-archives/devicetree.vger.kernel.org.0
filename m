Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B08915A92D8
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 11:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232065AbiIAJOv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 05:14:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232008AbiIAJOu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 05:14:50 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC398F61
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 02:14:46 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y141so16931606pfb.7
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 02:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=8IfSzmiZsdcI+yTlyegdVCWD8HBiubsP99qV9h/WaOE=;
        b=oKUXlv1k93rL8Wdi6dst3eAny2sPjwk2pbkMsPp6JFi82eEJ13427I4sOlDxfHnwcd
         Yot6mfKnMfPPU3xQ7c9mXU4rmLwK88f+llZd+GzS416l8SRvayXtl8hVgSLyfK6GPPj8
         IBYxiLcdPCn5lGADFotgAtnjTbZ9l+vYlb1mJb/Vwohwc5dzlS2H8F83WLMzTh6qwIby
         SaSQEeRQPN454NA6s55CpLfDC0JOaxWAaw/9Rf3NLFpJ6hBAor+w3uFUiA1P/SQDhhSN
         vf3lcSYF2Q3k68+LNWyR4VMV0DHJazMNS+JTnM98FqD87z7gBLF9G3HwJvihAKvbaohn
         mVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=8IfSzmiZsdcI+yTlyegdVCWD8HBiubsP99qV9h/WaOE=;
        b=EiIRTuuw1WGJuXY54O3Yhg1Hf/N9AKEr/vt50eNCu5fsOxkJIXxxRODVo4ijliXesz
         vReqRgincE1CrPEupu57kze42JuiAiTszvYqcrolzWC8ZvN0MVVsP4zkRYQi0S5Av7+D
         vWFhglH0GbsduyQ5N8FPZ0sBGxW9vhfxW0PvQBZT5BYiMjakG4XsiSIoRj252YFYnsN6
         V1JFNhwefbvBjRMNEWVQlibozVm9UMUGodP3nXb41tMyvM4UolYS1N829bGk1a7UuSMk
         yVVfPYFQOyyPjlxPOhz06CrhSbeh7AWTkhVzsGfjRbtkkoyHBBiC9Z1ylimDekyZzE1m
         0dIA==
X-Gm-Message-State: ACgBeo1k7kc0xE+dXjq9WoeX8hl3kaRuzM63/l3nA3dfNbuIP9kFOA+p
        qrwqu7eMW1xDLDSh2bPU+Z/wrA==
X-Google-Smtp-Source: AA6agR5JdtulPYC5gnKEs0/xqMCuO8UrTGslnk605DAPI/be289eKpXZEgsbGneRj343/4hOBWNj5w==
X-Received: by 2002:a62:5ac6:0:b0:537:f0fa:4ae1 with SMTP id o189-20020a625ac6000000b00537f0fa4ae1mr24499964pfb.70.1662023686133;
        Thu, 01 Sep 2022 02:14:46 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id n12-20020a170902e54c00b0016efad0a63csm13553284plf.100.2022.09.01.02.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 02:14:45 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     mka@chromium.org, dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 0/2] Add a new board device tree named 'evoker' for herobrine variant.
Date:   Thu,  1 Sep 2022 17:12:51 +0800
Message-Id: <20220901091253.93333-1-sheng-liang.pan@quanta.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add the initial dts file for new board 'evoker'.

Changes in v2:
- document sc7280 and evoker board


Sheng-Liang Pan (2):
  arm64: dts: qcom: sc7280: Add device tree for herobrine evoker
  dt-bindings: arm: qcom: document sc7280 and evoker board

 .../devicetree/bindings/arm/qcom.yaml         |   5 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../dts/qcom/sc7280-herobrine-evoker-r0.dts   | 333 ++++++++++++++++++
 3 files changed, 339 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts

-- 
2.34.1

