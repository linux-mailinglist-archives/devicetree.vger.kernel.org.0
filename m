Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C8C53A784A
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 09:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbhFOHvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 03:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhFOHvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 03:51:16 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CDB8C0613A2
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 00:49:12 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id x73so12615628pfc.8
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 00:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yi7OHXhBXq95N0WFRTZ77wBUGgmmCYv0yiDj8kMTwxI=;
        b=srRY54M2c2VSFFaofvFl/3SRQy3o440qDy79ayxphODg+jGWZ33IW502mKUIsI6ps9
         b5/x827Q652MFdtKL9tuVAgO1dJ7H8JYXc3hrhEOb1AEga8XOx4fzBA0HPQUpmuk3EDV
         c9P0erJq+2YHvarzjxyAWvA327ghRlhuJsUCwUbSgH2H/nw6wnMvuYEmezZKQ4aGLlyZ
         p1ih2KJvew9itY2x7TRkciJI7qp3Z/UCho3pU6QcY2SMaJ39QJd9f0mJ846ty5Ai/egI
         PyQa1nrISbBDL5akhHXRdDe0q0GDgCn9AySB6sREn48EAEtCV1gZ4Fg6FqxQFOj0mHp4
         gJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yi7OHXhBXq95N0WFRTZ77wBUGgmmCYv0yiDj8kMTwxI=;
        b=J25tTZ9Ucmdu1r4JLI14nYGrenBDGfUfQpQxkxfsoIjTscU7bQXVHYfWeNKL3N/dlM
         rMsU4zfk6+JQv8UVSQxerxP+4EeZpdWMfXDXDGKFh/Bk/2ZRP4zFMLBw0GbQ5K81P1K4
         HoeK3EWoHPjy/6gHMwha/ErNSpmBdcKkihzW6IvoJ2cWaCzNXhECE6ragJPkF6D8HIhm
         Y2yke0RJewRhwVkn6xAPI4W01ZP9ZR3GckqtBE/zDUqK7NTZ8Dwr0vQxG/vF+Id8ZCaS
         mXtWB+XHPY7RvbBKtkpwJUcu7a+by67PjEwjrXVgcwvrDMgQHXEX8T0Q+5bQCX/s1Cp9
         PatQ==
X-Gm-Message-State: AOAM530so2ii4i6rtRHj/gliyBHXT/BYUjt25f7eTMzIQZ61bkgAyG+y
        zcDUObE+w4xt/6CwQ8OGyfOjpw==
X-Google-Smtp-Source: ABdhPJx7Y3NwVfBiOxQbbaqIBe71EtZOEtumAmDrx4dKBJ3dWj41D/oBytNabZb9f5v1haw0rLxAhA==
X-Received: by 2002:a63:d053:: with SMTP id s19mr11713395pgi.326.1623743351592;
        Tue, 15 Jun 2021 00:49:11 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.197.114])
        by smtp.gmail.com with ESMTPSA id c25sm14273097pfo.130.2021.06.15.00.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 00:49:11 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>
Subject: [PATCH v2 00/10] arm64: dts: qcom: Add SA8155p-adp board DTS
Date:   Tue, 15 Jun 2021 13:15:33 +0530
Message-Id: <20210615074543.26700-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds DTS for SA8155p-adp board which is based on
Qualcomm snapdragon sa8155p SoC which is simiar to sm8150 SoC. 

This patchset also includes DTS for the new PMIC PMM8155AU
found on the adp board.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>

Bhupesh Sharma (10):
  dt-bindings: qcom: rpmh-regulator: Add compatible for SA8155p-adp
    board pmic
  dt-bindings: pinctrl: qcom,pmic-gpio: Add compatible for SA8155p-adp
  dt-bindings: arm: qcom: Add compatible for sm8150-mtp board
  dt-bindings: arm: qcom: Add compatible for SA8155p-adp board
  regulator: qcom-rpmh: Cleanup terminator line commas
  regulator: qcom-rpmh: Add new regulator found on SA8155p adp board
  pinctrl: qcom/pinctrl-spmi-gpio: Add compatible for pmic-gpio on
    SA8155p-adp
  arm64: dts: qcom: pmm8155au_1: Add base dts file
  arm64: dts: qcom: pmm8155au_2: Add base dts file
  arm64: dts: qcom: sa8155p-adp: Add base dts file

 .../devicetree/bindings/arm/qcom.yaml         |  13 +
 .../bindings/pinctrl/qcom,pmic-gpio.txt       |   2 +
 .../regulator/qcom,rpmh-regulator.yaml        |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi     | 134 +++++++
 arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi     | 107 ++++++
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts      | 355 ++++++++++++++++++
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c      |   1 +
 drivers/regulator/qcom-rpmh-regulator.c       |  62 ++-
 9 files changed, 664 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sa8155p-adp.dts

-- 
2.31.1

