Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9036F506185
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 03:09:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244793AbiDSBLt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 21:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237506AbiDSBLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 21:11:48 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C702C64E
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 18:09:07 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id q3so19770949wrj.7
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 18:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GmpnlnXiabbCuL2JoS5FmYSX790/z1KDUW433qN4L/M=;
        b=fdAedFAf8l7TrsOUMuMQYhCGPg+pBU4OoZiW7fp/zeRrltbjEJHQVHA7pHmbYrDDHo
         hK8/ORVIc5DvTolSDQ6OW4jiIJRWpl+JITkv9nkrksuwidQa7wmHKh8VlJomfrPaoNZE
         sfhtPM+9Lkzj6uycGfnwRb+tNMiSHU7VW4qzR6Abx3gMZ8DcCCMjY/pu3aFzT2l61NHY
         FAAdCV4NYFbqR7qaDt2vNOyQ1LmiH554LV55/T3x6gR36+NQPzPDPM0F+77yIDcXfKjS
         /J3HkNuOVh/eYwrdgZT8HKIBHAxqMw3TMOuYATEyPKOINRzgV8YIJdOvjKgIWF7g5Tto
         k67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GmpnlnXiabbCuL2JoS5FmYSX790/z1KDUW433qN4L/M=;
        b=UTde4WNkRsRoizjmmz/tnX3hRRt6dGWl9JBH6uXdoLSvPKnyRHTovK64zIltn9/3UF
         oHAooArbe+RaB3u+f5BSZ73Crh1vdYuyLK952gn88l8EPpodYK8qeVYypiNZjnQ48hLk
         INOtomFaT5F7gAKQKqpkGcoqBI8r2nM3kP56hCRn3SichhPIQcq+WPPzLuUO81W+/f/4
         hbap2cRWhTpnohGubeZlJES5TCLlCRP2LXrd4dqL6GVgcxrHpHstsF14iXLUHOSbo01s
         GDyc1XfktVP8mG1IwA3ijAg3ojoQRCLMpn907zIPcL1dc4Ln1RxN2hqdcrSMMNsb+hZO
         plrQ==
X-Gm-Message-State: AOAM530DngyfyUJ6hP00zFJA5ucT8IiEycyhG9qAMKz38mLgwZqFVXhm
        xYYvp2HFGMv1ai6TLGaVa8xwfw==
X-Google-Smtp-Source: ABdhPJyOdMsCA96qSG6IZg3f81A/9UzUeKL68iykatPIWDRT2BMxb0rEYjPhr3Pv0MdzX3yeBYDh5g==
X-Received: by 2002:a5d:654a:0:b0:20a:8d85:abd9 with SMTP id z10-20020a5d654a000000b0020a8d85abd9mr7525928wrv.419.1650330545994;
        Mon, 18 Apr 2022 18:09:05 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m6-20020a05600c4f4600b003918d69b334sm12030732wmq.42.2022.04.18.18.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 18:09:05 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     shawn.guo@linaro.org, jun.nie@linaro.org, benl@squareup.com,
        jwillcox@squareup.com, jgates@squareup.com, mchen@squareup.com,
        zac@squareup.com, bryan.odonoghue@linaro.org
Subject: [PATCH v1 0/4] Add MSM8939 SoC support with two devices
Date:   Tue, 19 Apr 2022 02:08:59 +0100
Message-Id: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This series adds in MSM8939 SoC support with two supported devices.

- CPU
  MSM8939 is a non-PSCI compliant device. As such in the downstreaming
  shipped image custom code is used to bring non-boot cores out of reset.

  This drop specifies the boot-method as spin-table instead and is
  completely standard. To accomplish this, we rely on lk2nd.

  https://github.com/msm8916-mainline/lk2nd/pull/142

- Serial
- i2c
- USB
- eMMC
- MDP/DSI
- WiFi
- Bluetooth

What's not included 

- CPR
  We have CPR working in a 4.19 kernel quite well but for now it feels like
  putting the cart before the horse to gate the SoC and boards on CPR.

- Venus
  I've been told this works but I haven't tried it myself and right now
  consider it maybe working but probably not 100%.

- Sound
  We have a copy-exactly from the 4.19 kernel here in the DTS.
  I haven't run the sound through any sort of reasonable test.
  Vincent Knecht has some PostmarketOS kernels which use a 5.17 version of
  this DTS to get sound up so, I think sound is in good shape.

- CAMSS
  There are slight differences between msm8916 and msm8939 for CAMSS. It
  doesn't feel like tons of work but, right now it is work we haven't even
  started.

- Devices
  I've booted on the Square device obviously and this is my regular
  hardware for upstream development. I've also booted on the Sony Xperia M4
  Aqua including mutli-core bring-up, WiFi and ADB.

Dependencies for this drop:

qcom-cpufreq-nvmem: Add msm8939 with some fixups
link: https://lore.kernel.org/linux-arm-msm/20220418162226.2983117-1-bryan.odonoghue@linaro.org/T/#t

Fix apq8016 compat string
link: https://lore.kernel.org/linux-arm-msm/20220418230956.3059563-1-bryan.odonoghue@linaro.org/T/#t

dt-bindings: soc: qcom: smd-rpm: Fix missing MSM8936 compatible
link: https://lore.kernel.org/linux-arm-msm/20220418231857.3061053-1-bryan.odonoghue@linaro.org/T/#u

Bootable tree here:
https://git.linaro.org/people/bryan.odonoghue/kernel.git/log/?h=v5.18-rc2%2bapq8039-without-cpr

Bryan O'Donoghue (4):
  dt-bindings: arm: qcom: Document MSM8939 SoC binding
  arm64: dts: Add msm8939 SoC
  arm64: dts: Add aqp8039-t2 board
  arm64: dts: Add msm8939 Sony Xperia M4 Aqua

 .../devicetree/bindings/arm/qcom.yaml         |    7 +
 arch/arm64/boot/dts/qcom/Makefile             |    3 +
 .../boot/dts/qcom/apq8039-t2-pinctl.dtsi      |  277 +++
 arch/arm64/boot/dts/qcom/apq8039-t2.dts       |  326 +++
 .../qcom/msm8939-sony-xperia-kanuti-tulip.dts |  489 ++++
 arch/arm64/boot/dts/qcom/msm8939.dtsi         | 2017 +++++++++++++++++
 6 files changed, 3119 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/apq8039-t2-pinctl.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/apq8039-t2.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8939-sony-xperia-kanuti-tulip.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8939.dtsi

-- 
2.35.1

