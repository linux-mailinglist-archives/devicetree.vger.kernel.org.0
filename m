Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C3B45598E4
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 13:59:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230058AbiFXL7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 07:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiFXL7n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 07:59:43 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C2386F79A
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 04:59:40 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t24so4092310lfr.4
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 04:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZNKYYA6Un2lNN/EE5pAKYiS9ss57FNF2jAk/Iqf9+CQ=;
        b=JNdSlxahamASraxxuOalUnRK0Tp9+98zf9WFPmQ0GKXu1R5scPeGNdOwPihuyTtAeE
         vNecO/htHCLnJ1VfYJdCJg86FESfnpslh3udbPuAuPyys+69ESBmYRSnJ8alPH8XzroK
         nC2yCmDb6tBwvVAxF8UT/QPEf2TPeVzDDsWsk6fV9ACzQ1k9wNwhm8E+XvkRsMu5Gg1t
         o90RjRCzm3SprXbdmXByWzU7tbfQaVpF6bAj6qozECBOhjBgCe0FurXue9nYNG6kyrWn
         bUDSebznQXXCE94Cew+l7afmah0Nogw9SUmeNMubp3ncAFIcYn71JSGvIvnkzUWaK7Xw
         IQOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZNKYYA6Un2lNN/EE5pAKYiS9ss57FNF2jAk/Iqf9+CQ=;
        b=L4co5E89N/QKaFZIalCw+9JcZtlRWbDaGimbi2+OBV0yvAhoIj2j3NBpp2LJgdMJQj
         PlPsxUa3/y09Pm55zieZ2bFHil9axsBs0jhNNPRsSoKl3JhL6Zu0imx0gUT12Bt4ZWnp
         hyjTj9P3vapG+LCuCzYoxLDVD35XJd63YFn9ytNsnGm7Hmqg9D6eGJ/jBGfdlcvzuVjt
         CUU8+rabEOX5TjyRgVEpmsCp6q/KRCzSHwIAdfEcKXGiiN3Ix4u3+X8L/xskmNkn+AUp
         nMiTJsj3ktObAPLLsLWrzP1a5uugO8wdrUT2IY/NuZfEeH0WwqCXql406JraqEL8h5Do
         2ffw==
X-Gm-Message-State: AJIora/k4w1L4D8e4dFb7xfDH9o3H5jv3DJNbEi8pOB32IUT6NWfsqFX
        mdngPn7F3Bb8Ih95PSHhNkj/Fw==
X-Google-Smtp-Source: AGRyM1u2CFrwdiFhVHEBPsClbiJMVHCQhyn7tcpLEtk7rA3drKbNP4woChZkXZG5orfJOOZwBmL0cw==
X-Received: by 2002:a05:6512:3403:b0:475:afe3:740b with SMTP id i3-20020a056512340300b00475afe3740bmr8837681lfr.436.1656071978387;
        Fri, 24 Jun 2022 04:59:38 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id w10-20020a2e9bca000000b0025a65ed7aa4sm262345ljj.51.2022.06.24.04.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jun 2022 04:59:38 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH v8 0/7] clk: qcom: add camera clock controller driver for SM8450 SoC
Date:   Fri, 24 Jun 2022 14:59:15 +0300
Message-Id: <20220624115917.2524868-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
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

The patchset adds support of a camera clock controller found on
QCOM SM8450 SoC, noticeably a camcc pll2 is a new "rivian evo"
type of pll, its generic support is added in the series.

Note that SM8450 ES variant has a slightly different configurtion,
the published version is intended to support SM8450 CS SoC.

Changes from v7 to v8:
* rebased on top of v5.19-rc2,
* added Stephen's tags,
* improved an example found in added yaml file,
* improved some of the commit messages,
* narrowed down a list of included headers,
* constified .hw.init anonymous structs.

Changes from v6 to v7:
* rebased on top of v5.19-rc1,
* fixed a warning in a usage example found in yaml file.

Changes from v5 to v6:
* rebased on top of linux-next,
* added Rob's tag,
* fixed a topology of power domains around titan_top.

Changes from v4 to v5:
* fixed the same typo in a usage example found in yaml file as in v3
  change.

Changes from v3 to v4:
* fixed a changed path in the yaml file.

Changes from v2 to v3:
* fixed a typo in a usage example found in yaml file,
* renamed dt related files to match the compatible "qcom,sm8450-camcc",
* minor fixes in the driver per review requests from Bjorn,
* added Bjorn's tag to a change of exported symbols namespace.

Changes from v1 to v2:
* updated qcom,camcc-sm8450.yaml according to review comments from Rob,
* changed qcom,camcc-sm8450.h licence to dual one,
* disabled camcc device tree node by default,
* added Stephen's tag,
* rebased the series on top of clk-for-5.18

Vladimir Zapolskiy (7):
  dt-bindings: clock: add QCOM SM8450 camera clock bindings
  arm64: dts: qcom: sm8450: Add description of camera clock controller
  clk: qcom: clk-alpha-pll: fix clk_trion_pll_configure description
  clk: qcom: clk-alpha-pll: limit exported symbols to GPL licensed code
  clk: qcom: clk-alpha-pll: add Lucid EVO PLL configuration interfaces
  clk: qcom: clk-alpha-pll: add Rivian EVO PLL configuration interfaces
  clk: qcom: add camera clock controller driver for SM8450 SoC

 .../bindings/clock/qcom,sm8450-camcc.yaml     |   89 +
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |   20 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/camcc-sm8450.c               | 2865 +++++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.c              |  144 +-
 drivers/clk/qcom/clk-alpha-pll.h              |   11 +-
 include/dt-bindings/clock/qcom,sm8450-camcc.h |  159 +
 8 files changed, 3290 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
 create mode 100644 drivers/clk/qcom/camcc-sm8450.c
 create mode 100644 include/dt-bindings/clock/qcom,sm8450-camcc.h

-- 
2.33.0

