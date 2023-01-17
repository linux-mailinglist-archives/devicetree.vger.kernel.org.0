Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DE28670BDD
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:44:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjAQWoL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:44:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbjAQWmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:42:46 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3788B5D920
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 14:30:16 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id bk15so21404968ejb.9
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 14:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ti+F59dwmnBVoTf/TrsKke+wcsbpbxaJrIFqVhERiI0=;
        b=C5TrC53PHhrt4Vb6IDm8yVvw8vSb8dmZy4pvQkwkA2HIgN0L0wf4u35P9oiqei3XBk
         D8heP9Hjk3gfrhSeeK9a0p8cFc7HWdlOANH2mmUj5LB0wqTSSyvxP0fDEXqRAEmXzsHr
         VP6R0CXufDBjiCMHFczquqXTDrCiWS/nWhpCm+jOrmyVHa5CH/V9rl8V6Gmq0goGMKE/
         AizBwooxHuUJ2y+Vy/L8+w8OGuhdxar31ubnVow33JlHxzoYCut6SR5AqJawnN97plWM
         LYiWXd8zsrhVv9/j0K4boWKG6urumT0Igv5slT0I1hVt8ytq/0VLHtUIyncn8XU7T0xH
         bgtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ti+F59dwmnBVoTf/TrsKke+wcsbpbxaJrIFqVhERiI0=;
        b=7YeRk+FbY4Z929yDxqTYWjIo0q20fIh1pFOplxOrpN/mxMEhhRTA0WYvifXbsg0NMc
         ISc5V0lxJJ5ET47uIFCT8gphg5qk4K2UrG3jvSrtWKUs3ExWuAWjS5M5qs3cdS5BZnXT
         FFRbQCGB26qCH+nxugautqEdnouw2Y+kvBbj/9uHaYh0kAS5WWIsvPSGiBUUq9h/AStP
         L9Whm8rI+V8Gxlp5VLpFbH7uZhIZC6ZRE8y891Xt6HAGGD6XNvdS9hQsshQPNYmsMCea
         MZdZEuJPZe1dBU1bcbKIAwwpaijGLIVthpQlM2hOXp0qeTKsOOshiNNCqBFj0zfOtuQU
         2Msw==
X-Gm-Message-State: AFqh2kqqf1PZQQeqJPiYyHAK3C5rt9F6BFH2bd0vHb/svyi6SVirHyKu
        /beyT/oQn/JBaX8R6NrUfvxpmg==
X-Google-Smtp-Source: AMrXdXvSrv2OQ9UaAFQLdEBJeB8/jVPapHDhn3u9mCTsQiiU2bq+TQfCjA4YIXMkxapfLx9sS40ARA==
X-Received: by 2002:a17:907:bb92:b0:871:89d:75e with SMTP id xo18-20020a170907bb9200b00871089d075emr4961117ejc.16.1673994614735;
        Tue, 17 Jan 2023 14:30:14 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id ec20-20020a170906b6d400b007c0f5d6f754sm13835189ejb.79.2023.01.17.14.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:30:14 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/6] clk: qcom: msm8996: add APCS clock driver
Date:   Wed, 18 Jan 2023 00:30:07 +0200
Message-Id: <20230117223013.1545026-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The sys_apcs_aux clock can be used by CPU and CBF clock drivers to drive
those clocks from GPLL0 while doing initial setup. Add simple driver to
setup and export this clock.

Changes since v2:
- Added the conditional clause to schema forbidding usage of clocks and
  clock-names on platforms which do not pass additional clocks to the
  APCS device node (Krzysztof)
- Added SDX55 compat string
- Moved MSM8976 compat to the list of platforms using syscon.

Changes since v1:
- Removed the clk.h header inclusion (Stephen)
- Changed the module license from GPL v2 to bare GPL.

Dmitry Baryshkov (6):
  dt-bindings: mailbox: qcom: add SDX55 compatible
  dt-bindings: mailbox: qcom: enable syscon compatible for msm8976
  dt-bindings: mailbox: qcom: correct the list of platforms using clocks
  dt-bindings: mailbox: qcom: add #clock-cells to msm8996 example
  mailbox: qcom-apcs-ipc: enable APCS clock device for MSM8996
  clk: qcom: add the driver for the MSM8996 APCS clocks

 .../mailbox/qcom,apcs-kpss-global.yaml        | 37 ++++++---
 drivers/clk/qcom/Makefile                     |  2 +-
 drivers/clk/qcom/apcs-msm8996.c               | 76 +++++++++++++++++++
 drivers/mailbox/qcom-apcs-ipc-mailbox.c       |  2 +-
 4 files changed, 106 insertions(+), 11 deletions(-)
 create mode 100644 drivers/clk/qcom/apcs-msm8996.c

-- 
2.39.0

