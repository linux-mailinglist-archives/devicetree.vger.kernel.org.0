Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A2155E7F5E
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 18:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbiIWQQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 12:16:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbiIWQQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 12:16:11 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8656412E407
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 09:16:08 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id a2so1054634lfb.6
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 09:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=4ZxFhAtlkmVi+zyjgne0H/PaIcc4S2ELDkPdgjxjFQI=;
        b=qqV26RwCK1Rl2eHTO4j/EIi2hWLVPqcd6bL061LH0aVd0FEdQOjsCOPHBaiBLaEXv7
         f18WO40/a17eQX9Z2uvUZkpbqN5j0q5B5Nixg5PokmYn9Dy4JeIy/YXUEu5FzX92L/9f
         qwGg+jamXznw56s4ta4p1k3j0F7pElYUNcbQDO7IdCoWCqGGLvGtKAYRBVqziF7jGn7f
         jVtGVC6XktFQnD0IuFB7xLzp4eja/6GuaHgrrFM6aWxihT3VhPrD+YjUlPkmXnI3sxJD
         V4UJZLVkZJCHth2oq0doFxfFBxLErNzGuipIYBnm/uHqrhB63Ysy64xmFr9ZEF2/iBmV
         V5WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=4ZxFhAtlkmVi+zyjgne0H/PaIcc4S2ELDkPdgjxjFQI=;
        b=AHU9GL0gZyxZ/exjRRou2IoAkpvbTTGPCd9+T6Nrt/Q8MZw+h9rVv/ToC0YiBzu8wE
         eMlNk96m1hx2dRdSESUbxrOB6UwTuzBJsWUIuqHM9ncuEAQ1j5WID5TEQ9i+K4qpS0YU
         qFhaAQkclfbn7OPf9s3msvly99n0G4EweAkjNhPBGntUSrQHS0Zng927o7V+iblbDi/u
         lg3UeS9Pd+A79OOpa98hAcCpw5F7DM2H74P5WqMsNK36J9ROA09c8jj/xXkDewMGHF0x
         yq+HDaXg4Gz/MXXSySDqw/74NCkyRlZ6htJ/5uK4GBqiu1TOosWNS3GZl2zdjO0GRqRW
         Rv3A==
X-Gm-Message-State: ACrzQf30Gv9iRoIZBDmKVIAwOW7q+taEi24W8NhL09JHZo86CGqNiETK
        CT8nI5ZRoGcJjUmk8KDxlYlt5g==
X-Google-Smtp-Source: AMsMyM6RJAQLHoe8yznAY7iJUvmbip9ShKX8pvPR2ghx8rYTi8cfMFRZI5+EFgBrkzxtHjbVox0GXw==
X-Received: by 2002:ac2:5469:0:b0:497:ed1:97c6 with SMTP id e9-20020ac25469000000b004970ed197c6mr3344005lfn.248.1663949766969;
        Fri, 23 Sep 2022 09:16:06 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f9-20020ac25cc9000000b00492f45cbbfcsm1493491lfq.302.2022.09.23.09.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:16:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/11] arm64/slimbus/dt-bindings: convert to DT Schema, minor cleanups
Date:   Fri, 23 Sep 2022 18:14:42 +0200
Message-Id: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Shall slimbus.yaml go to dtschema repo?

Dependencies
============
1. Binding patches are independent from DTS.

Best regards,
Krzysztof

Krzysztof Kozlowski (11):
  arm64: dts: qcom: sdm845: drop unused slimbus properties
  arm64: dts: qcom: msm8996: drop unused slimbus reg-mames
  arm64: dts: qcom: sdm845: correct slimbus children unit addresses
  arm64: dts: qcom: mms8996: correct slimbus children unit addresses
  arm64: dts: qcom: sdm845: drop unused slimbus dmas
  arm64: dts: qcom: msm8996: drop unused slimbus dmas
  arm64: dts: qcom: sdm8458: align node names with DT schema
  arm64: dts: qcom: msm8996: align node names with DT schema
  dt-bindings: slimbus: convert bus description to DT schema
  dt-bindings: slimbus: qcom,slim: convert to DT schema
  dt-bindings: slimbus: qcom,slim-ngd: convert to DT schema

 .../devicetree/bindings/slimbus/bus.txt       |  60 ---------
 .../bindings/slimbus/qcom,slim-ngd.yaml       | 120 ++++++++++++++++++
 .../bindings/slimbus/qcom,slim.yaml           |  86 +++++++++++++
 .../bindings/slimbus/slim-ngd-qcom-ctrl.txt   |  84 ------------
 .../bindings/slimbus/slim-qcom-ctrl.txt       |  39 ------
 .../devicetree/bindings/slimbus/slimbus.yaml  |  95 ++++++++++++++
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  18 ++-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  16 +--
 8 files changed, 315 insertions(+), 203 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/slimbus/bus.txt
 create mode 100644 Documentation/devicetree/bindings/slimbus/qcom,slim-ngd.yaml
 create mode 100644 Documentation/devicetree/bindings/slimbus/qcom,slim.yaml
 delete mode 100644 Documentation/devicetree/bindings/slimbus/slim-ngd-qcom-ctrl.txt
 delete mode 100644 Documentation/devicetree/bindings/slimbus/slim-qcom-ctrl.txt
 create mode 100644 Documentation/devicetree/bindings/slimbus/slimbus.yaml

-- 
2.34.1

