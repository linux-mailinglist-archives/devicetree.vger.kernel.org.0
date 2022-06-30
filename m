Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D295614B4
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 10:20:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233411AbiF3ITa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 04:19:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233471AbiF3ITH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 04:19:07 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E804B23
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 01:17:48 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id u14so8702298ljh.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 01:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iwgwXCkgqhWhsAYcDwBGLHI9mFw90gt72ulhS68U2Tk=;
        b=MngPsYYp9yTp+LiWi6ew/M9vK4DeUiYv2hq/teOhHL9u2Y2nqC6dMWQdsqcXqGIODw
         5tMduKfmxgvq6EO4slP/MOuEhJ/WvLvwZotvNohXUK99MuXA0lQ3a1xEkb4EDqkR0W5c
         8kbBmk9EL5S2NMCd2ExsuIU3tTL9EqkRwuX/nggVOQ5vc6ClSG9xdxDChYJi9i6HjR+J
         +L+HRmDhZgsSiNW91MuMe/Nqi5uRaBAIxBTqknL5q0fRd9m8cC9MbShyVurX4faqetor
         KlWrThKAjCog5/QDKZZoX4QqiYCm6mEv5CvTTntXJ0UtWOwcrMFN9+E0VCrOhrs8PNhb
         K46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iwgwXCkgqhWhsAYcDwBGLHI9mFw90gt72ulhS68U2Tk=;
        b=5fltdSYGLDqliB91tA7rHI9bb2RynWg+XsSiTXTAnuYQ3qsI4YI4FhSE8F5Qg7hjR7
         l3jkpjNofUj2EnupXHSau8JHKq9cecemFvpQxOIRq/pz0GiR0dibjY4afzaV2wdNRPMO
         93KfwMMQT5/cfD1sBRHprVsJxwQg67Ng+Eylu05y3/0brY0JQbxuchceBzNAuQpr37N/
         SR8W+mK9fvd8jAn6u7C3P8Ty3fv1bSz8xTRVbFjCi4SP2MpJXmorKPNVnIMxC9MqF9iK
         7tLyLC+KyIY3TJTbGNXB5gudjeHIuFIiTpMAM708jZlSMd2iW1f2X3MOfuxiJ4iMhdC7
         X1BA==
X-Gm-Message-State: AJIora/gUJf0cQ4Mq3TP+4Mmikp6B9J/MLCCXT78OPdgrHrZhtX9sSSh
        YO58wrbAFS3GYxb+zunbv0Hfxg==
X-Google-Smtp-Source: AGRyM1vG5Bcu+l/FIdi7zPxP8vjkhzHPb/yFlAt0h9EmzNtCM6r+XXga3thU/FLotGxVtQDRs9fYkg==
X-Received: by 2002:a2e:b049:0:b0:25a:89a2:df44 with SMTP id d9-20020a2eb049000000b0025a89a2df44mr4456080ljl.207.1656577066598;
        Thu, 30 Jun 2022 01:17:46 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id p18-20020a2eb992000000b0025bda317bdcsm913623ljp.88.2022.06.30.01.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 01:17:44 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH v9 0/7] clk: qcom: add camera clock controller driver for SM8450 SoC
Date:   Thu, 30 Jun 2022 11:17:40 +0300
Message-Id: <20220630081742.2554006-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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

Changes from v8 to v9:
* removed clock-names property per request from Bjorn,
* corrected a path in the yaml file to the added include file,
* put status property as the last one in the list of properties,
* non-functional changes in the clock provider driver code.

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

 .../bindings/clock/qcom,sm8450-camcc.yaml     |   80 +
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |   16 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/camcc-sm8450.c               | 2856 +++++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.c              |  144 +-
 drivers/clk/qcom/clk-alpha-pll.h              |   11 +-
 include/dt-bindings/clock/qcom,sm8450-camcc.h |  159 +
 8 files changed, 3268 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
 create mode 100644 drivers/clk/qcom/camcc-sm8450.c
 create mode 100644 include/dt-bindings/clock/qcom,sm8450-camcc.h

-- 
2.33.0

