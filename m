Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FAD778B843
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 21:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbjH1T15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 15:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233096AbjH1T10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 15:27:26 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11EC0CEC
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 12:27:03 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-31c5a2e8501so3035282f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 12:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693250822; x=1693855622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+I1TnLNwxszbN8M9umRNZG7t7BQhMYgFfgmkLe46H00=;
        b=zL2r5Fa2OvovZvTJsUmtRlvcM7/4bDbHwz/+SAizjrHGB3/bwjeR2RJvwhXrRdpMxb
         RoqIv+AwrqiCQ0a7aQ+HPnVTTq5Qqa8zaWkc16WVSH4vELEvlDQUb/FPRQXBOccEcAgB
         xSDgMDQqG4YF4Bj+o1fsth7TGz8marxRdL1FQaFxCcvfENBHV5DeLdEDKG+lEcSNUXnO
         oT7RIOYq6Z/rRrOINKZUD3uEI7LQ+UyaLZ3nHlYALsxIUeUOgXvUHnYOpx7h1J9phke5
         ByaenlZwxJa0vsq6DZnNhB9Ecind5uYaCRv2r6K88FeuG7Q3wphNehOj5IqZhWcxEB/v
         Dtaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693250822; x=1693855622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+I1TnLNwxszbN8M9umRNZG7t7BQhMYgFfgmkLe46H00=;
        b=a3UM1XwnaTUM6w9J4Gz4XHmTCQNvdg0jhBgV3qmqomJOjPujKQDFrQ3QRKyaiI/ZFz
         0Kt7/au4iL3ILcmVvAKGOMGZ86mnsTfe+xysmlIGeSt16U196h/YgF2afJG1gkifYpQm
         mogI3ZeaeCLUvu7Ooh5F7vruXS4FgSmInrohbEz6HfpfcGRPHL0sMWVGo48745t50nEG
         dmgD12pCULisbOF57GA21qgr4okiJFEVVzymwsrv36lyZY63pw3CbMp8wbFlEPVdzBSM
         ggDL9no6oxtS4NLgGvOieAZx905tjEE27SkR986mQ3kopgolsDVDt9HAz6CywTnZwRbP
         ZDbQ==
X-Gm-Message-State: AOJu0YypsAp7vVLr8DlSKPQHY/wKZ8VzAtW4V7NsQ6DI42bDkwx844bd
        LlLQW78OAwFsvWM2A52qua/AqsF1RBBoGzqZPwA=
X-Google-Smtp-Source: AGHT+IFRafmDLjtEsJDP5s4bwx95AqWgutFAhLrZ8P//xmtwHnCubkYIeaz/6yYQH4/b3yQUfIZ6EQ==
X-Received: by 2002:adf:f112:0:b0:317:5e91:5588 with SMTP id r18-20020adff112000000b003175e915588mr21843348wro.3.1693250822360;
        Mon, 28 Aug 2023 12:27:02 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:8bd:7f16:d368:115f])
        by smtp.gmail.com with ESMTPSA id i20-20020a5d5234000000b003141f96ed36sm11435319wra.0.2023.08.28.12.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 12:27:01 -0700 (PDT)
From:   Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 00/11] arm64: qcom: add and enable SHM Bridge support
Date:   Mon, 28 Aug 2023 21:24:56 +0200
Message-Id: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SHM Bridge is a mechanism allowing to map limited areas of kernel's
virtual memory to physical addresses and share those with the
trustzone in order to not expose the entire RAM for SMC calls.

This series adds support for Qualcomm SHM Bridge in form of a platform
driver and library functions available to users. It enables SHM Bridge
support for three platforms and contains a bunch of cleanups for
qcom-scm.

Bartosz Golaszewski (11):
  firmware: qcom-scm: drop unneeded 'extern' specifiers
  firmware: qcom-scm: order includes alphabetically
  firmware: qcom-scm: atomically assign and read the global __scm
    pointer
  firmware: qcom-scm: add support for SHM bridge operations
  dt-bindings: document the Qualcomm TEE Shared Memory Bridge
  firmware: qcom-shm-bridge: new driver
  firmware: qcom-scm: use SHM bridge if available
  arm64: defconfig: enable Qualcomm SHM bridge module
  arm64: dts: qcom: sm8450: enable SHM bridge
  arm64: dts: qcom: sa8775p: enable SHM bridge
  arm64: dts: qcom: sm8150: enable SHM bridge

 .../bindings/firmware/qcom,shm-bridge.yaml    |  36 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   4 +
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |   4 +
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |   4 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/firmware/Kconfig                      |   8 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/qcom-shm-bridge.c            | 452 ++++++++++++++++++
 drivers/firmware/qcom_scm-smc.c               |  20 +-
 drivers/firmware/qcom_scm.c                   | 106 +++-
 drivers/firmware/qcom_scm.h                   |   3 +
 include/linux/firmware/qcom/qcom_scm.h        | 109 +++--
 include/linux/firmware/qcom/shm-bridge.h      |  32 ++
 13 files changed, 712 insertions(+), 68 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/firmware/qcom,shm-bridge.yaml
 create mode 100644 drivers/firmware/qcom-shm-bridge.c
 create mode 100644 include/linux/firmware/qcom/shm-bridge.h

-- 
2.39.2

