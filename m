Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F15E63AAB2E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 07:46:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbhFQFsZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 01:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbhFQFsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 01:48:24 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B344C061760
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 22:46:17 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id h1so2342047plt.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 22:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ryRtK61SYm8PEwrY11LaHJtoPw6grUNXacSgX8/XdGk=;
        b=JyOySvn4xq7TtrN+FSXsQ3XX5BVRq1nskC0TUkM0+94B96ge24dhGRVvmr2XxW4NEb
         zVs5XJaZz++JB3ODhl5V2FUzxSVl1gvN+r+FZxmYcl0ddWrumUUt6KoAupfXBk+6vb7X
         LfyzPLt+Z6qOoS/JVAyWqCGXDW3EMA4tJqmARKKLpb3JxWGnSoFzyrFOZqHe9EkSko5+
         +q9yYEDdY6NNsfyOciEpWmEimUnMO9TyW5cj/OYmiRsaWCHav4yu22YUj9vMWd4SSgGD
         ic7WlW13W0I9B2K32etV5tEaHegGsfMeRRnD2Tspuu4TRR7yivH/IzGaHP3iFNrM8+3T
         Upsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ryRtK61SYm8PEwrY11LaHJtoPw6grUNXacSgX8/XdGk=;
        b=ksgvXj8ctg8+q6mR8+Vk5HLBgZC5zHGdWhzzYqVpitT0H6nk0c7QtWeM7t+ovSPYtg
         NPldZaknx53slWbY/cxDdDbxGGfeMJULxGU8kYpDpgKnqLnmgYHcJgdt4af9c0SVxamM
         BGk9YQQvxRPtnRifOMhBdXoezhF25n+uKpj/HGlTJmOvQjLqYvmbEesF6loAKT2poUVx
         Ff3dYsuxbVSzumWJNIkOdndoWnrHux0EwohqedryDnLsq5CQhQjKWzNZvuJ913UIWKqd
         uVe78d2dJhM1SFQGq8hwVXpCBsGW9ggH179ANMpU30M+hkl8S7HDcGZx4feaavqBPpCm
         t7+Q==
X-Gm-Message-State: AOAM533/iprAYLdF0MOnUh/skJlSDrdwjN/O9TN7mTyZNRmhf4c0y/uf
        ndK8Rj/LRE+xRX+tkZHES7byww==
X-Google-Smtp-Source: ABdhPJybhCmh4U2ZGmx78zsnS156XuPnmscAJ0WSf8+NDyCc4u+8RiFjDLToqb4QldrOdKpgwBY6hg==
X-Received: by 2002:a17:90a:2ac7:: with SMTP id i7mr3882063pjg.139.1623908776486;
        Wed, 16 Jun 2021 22:46:16 -0700 (PDT)
Received: from localhost.name ([122.177.46.2])
        by smtp.gmail.com with ESMTPSA id y27sm3882700pff.202.2021.06.16.22.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 22:46:16 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 0/5] arm64: dts: qcom: Add SA8155p-adp board DTS
Date:   Thu, 17 Jun 2021 11:15:43 +0530
Message-Id: <20210617054548.353293-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v2:
-----------------
- v2 series can be found here: https://lore.kernel.org/linux-arm-msm/20210615074543.26700-1-bhupesh.sharma@linaro.org/T/#m8303d27d561b30133992da88198abb78ea833e21 
- Addressed review comments from Bjorn and Mark.
- As per suggestion from Bjorn, separated the patches in different
  patchsets (specific to each subsystem) to ease review and patch application.

Changes since v1:
-----------------
- v1 series can be found here: https://lore.kernel.org/linux-arm-msm/20210607113840.15435-1-bhupesh.sharma@linaro.org/T/#mc524fe82798d4c4fb75dd0333318955e0406ad18
- Addressed review comments from Bjorn and Vinod received on the v1
  series.

This series adds DTS for SA8155p-adp board which is based on
Qualcomm snapdragon sa8155p SoC which is simiar to sm8150 SoC.

This patchset also includes DTS for the new PMIC PMM8155AU
found on the adp board.

This series is in turn dependent on the pinctrl and regulator
series for the SA8155p-adp board (see [1] and [2]), for the
requisite driver and dt-binding (compatible) changes.

[1]. pinctrl: https://lore.kernel.org/linux-arm-msm/20210617053432.350486-1-bhupesh.sharma@linaro.org/T/#m2b1bf2d32dfdde3196dc5342722e356ee1f87456
[2]. regulator: https://lore.kernel.org/linux-arm-msm/20210617051712.345372-1-bhupesh.sharma@linaro.org/T/#m058e8a6bc33979532779078b31d5c3698eaf25db

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>

Bhupesh Sharma (5):
  dt-bindings: arm: qcom: Add compatible for sm8150-mtp board
  dt-bindings: arm: qcom: Add compatible for SA8155p-adp board
  arm64: dts: qcom: pmm8155au_1: Add base dts file
  arm64: dts: qcom: pmm8155au_2: Add base dts file
  arm64: dts: qcom: sa8155p-adp: Add base dts file

 .../devicetree/bindings/arm/qcom.yaml         |  13 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi     | 134 +++++++
 arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi     | 107 ++++++
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts      | 360 ++++++++++++++++++
 5 files changed, 615 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pmm8155au_2.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sa8155p-adp.dts

-- 
2.31.1

