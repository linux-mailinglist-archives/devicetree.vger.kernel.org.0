Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85AB468697A
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:03:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbjBAPDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:03:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232761AbjBAPDU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:03:20 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF38721CD
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:00:54 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so1676052wms.1
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 07:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/K9COTcFlAS0U4RierMnuwuOF33gGwaSy7WkKbceLio=;
        b=p/mIW+z9sZEhKWaw1AJkTS2Zu7BhIw/LmqOCegv7o+hkHLMwxdO0ttGB735ElQUiP6
         OvDw5qlRmURo5VxVWJouTgJNAg/256p2jHe+RWbexnDLiexuDxYG66z8/gmqbacg16+E
         c7R7famAiPFfWTZIG43OUmCUmX1IluN/2c4frI54D+iP9aXOevp7rnJQM6cXHBCrvpD5
         oZg5Uw5jO8J3BN1cfp8HjchnjjQSB1rZaZQgv6YRNT4+S/xEotguQKe6ydILMjQ9DtAS
         kKRehybrLXynjzJrEu2Mv/UJ6zrKVwrblkPV1WSQ99YCxtSwPw3+huBfee8MQqfNPMof
         6flg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/K9COTcFlAS0U4RierMnuwuOF33gGwaSy7WkKbceLio=;
        b=G1Pb9NL5apnJtkmINFdnSop7EpLsIbk+ntIgD3f1cObIjuTVNpkmGqYWlmLXCLGOmd
         eeUMogBrJTXk0vXLkmiYqxG2xk9rZxJRxjpHivmrYrmMkkq1GYxpULxiJWTZusxG0xiE
         nAaJsBna2kAImAy0MDvKIWQpsAp9XYtGiAyVp9SZNXZl9cTm51w67JpyKlsB7d80fFZL
         iNCzQDgPYfUVH6n1YWZwr2N5uw3+UHrmxekDdzRysYLz2rvBj9eOwbsSgYqPlDap9OYM
         Gt2roEcMyh7KrL/ecsLlUUAXJxtDikVSnsLvM0Hs/YDrP2NURvtyrKEL24FqJDPtY7vh
         DbPw==
X-Gm-Message-State: AO0yUKVM5+pI4KnFEXf32mNSd+d31ReTKiLtQgK2UsvlRPiH8JfOYDgk
        SnGnoX1XQSW9ezHqQs2pgLn2Cw==
X-Google-Smtp-Source: AK7set+cvxx+A6u/0XIDpmD66fIdcV03aPZBVGL7pbpgTOBCfVDRoPJBj2UYfsJh0iTd/FCBVR28dQ==
X-Received: by 2002:a7b:cd17:0:b0:3db:14d0:65be with SMTP id f23-20020a7bcd17000000b003db14d065bemr2277347wmj.34.1675263617793;
        Wed, 01 Feb 2023 07:00:17 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d64:a4e6:40a8:8e69])
        by smtp.gmail.com with ESMTPSA id f28-20020a5d58fc000000b002be5401ef5fsm18063754wrd.39.2023.02.01.07.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:00:17 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 0/2] pinctrl: qcom: add dt-bindings and driver for sa8775p-tlmm
Date:   Wed,  1 Feb 2023 16:00:09 +0100
Message-Id: <20230201150011.200613-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This series contains the device-tree bindings and the pinctrl driver for the
SA8775P platforms.

v2 -> v3 (Changes in DT bindings only)
- fix the gpio pattern property (platform has 148 GPIOs)
- add blank lines for better readability

v1 -> v2:
- squash several functions into bigger groups
- fixed the emacX_ptp functions (they were generated automatically and the
  script made two separate functions into one)
- fixed the compatible and DT bindings examples
- added missing DT properties
- made sure the bindings pass tests
- coding style fixes in the driver

Bartosz Golaszewski (1):
  dt-bindings: pinctrl: describe sa8775p-tlmm

Yadu MG (1):
  pinctrl: qcom: add the tlmm driver sa8775p platforms

 .../bindings/pinctrl/qcom,sa8775p-tlmm.yaml   |  138 ++
 drivers/pinctrl/qcom/Kconfig                  |    9 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-sa8775p.c        | 1537 +++++++++++++++++
 4 files changed, 1685 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sa8775p.c

-- 
2.37.2

