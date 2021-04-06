Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A530355F53
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 01:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244298AbhDFXTX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 19:19:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242895AbhDFXTW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 19:19:22 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1728C06175F
        for <devicetree@vger.kernel.org>; Tue,  6 Apr 2021 16:19:12 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id y1so18386099ljm.10
        for <devicetree@vger.kernel.org>; Tue, 06 Apr 2021 16:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=An90/BURB2tY8YsEOev/snpm4gJka+Hd4KI5AsNMlV0=;
        b=oQLU6JtI8mNCEZztqetDwYwjWY5yp9ByIeK4o9mrNGce+JWZk3uXkeR1XVxFYW0rTI
         fa8SFTzpeHykIvQ3+xREmkxSa9dKHg3nK2KpOAxsXInnef4sNo/I+nTl2hDUQAdCecRz
         TubCDfT9ynpzZCo6Mb9hE1wurSO9pa7anIXe5yZkkC6umCoc5vJ40nlyxjKXgjBs1/p0
         XZ2ST1bkdNWMzY4Zoz/RMYMMz2f7rYM6FBy6O2eiVqMvY6ItIsgnRxCeCjlCGGGVF8qt
         rbs76zEaSuIDEl0JE6x4Dh5+cELDUs9fO5XjhvQhnbhLt92RJIRjiOO8L50uuvY5WTkT
         2LlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=An90/BURB2tY8YsEOev/snpm4gJka+Hd4KI5AsNMlV0=;
        b=U7F6e6QVABFRnRbj8y/saavdHK9Eisvfe0uOAf15jcXn/toWZQBww3DslTKfIJsRPM
         jwipXCsijqGUxncIj89w8Fr3ITMdlWcs1dqy7JPRQbfq7CXBI3TBxHtrNbxRy10vAnTl
         5mDKZ1ethFKI8dgPEct3UPnkwFyDYWETRMjiWawPyFhl5W5Jd6mCnIsn/c349fGbCnDw
         Baeols0XzMzcDK7yziabOu5bAfon2O2hSdee4rXiTfK/r7MZmMxBUti56HLMR+l/EJhY
         8syA22fN5BTHaGPbP4UaGCxl6dFjWDHWiqhUJN5t2rWWdZH4qsMb6tazKf5fdTuFj4y/
         SjIg==
X-Gm-Message-State: AOAM530o0nv3Em7WhEY8U4VTS8waNaAxkW+Ry27uYaztr6/t7PXRLV1B
        M4MmlZBSjl+5YkOOq260KIIH1Q==
X-Google-Smtp-Source: ABdhPJxrpa6b95eqXP/iajdAAU9Z2q1f2rWLyw1HYsKGwCN6BTaPlOAPo7l5mSTld9MLM9LyemSadA==
X-Received: by 2002:a2e:9017:: with SMTP id h23mr244674ljg.473.1617751151284;
        Tue, 06 Apr 2021 16:19:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16sm2366565lja.48.2021.04.06.16.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 16:19:10 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH v2 0/4] clk: qcom: convert gcc-sdm845 to use platform data
Date:   Wed,  7 Apr 2021 02:19:05 +0300
Message-Id: <20210406231909.3035267-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert sdm845 global clock controller driver to use parent_data and
parent_hws.

Changes since v1:
 - Use ARRAY_SIZE() for num_parents and parent_hws instead of
   parent_data where applicable as suggested by Marijn Suijten.

The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:

  Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)

are available in the Git repository at:

  https://git.linaro.org/people/dmitry.baryshkov/kernel.git qcom-clk-gcc-sdm845

for you to fetch changes up to de97ca3ae44f478ea16a72de3c1dcec486ba2e45:

  arm64: dts: qcom: sdm845: add required clocks on the gcc (2021-04-05 21:39:29 +0300)

----------------------------------------------------------------
Dmitry Baryshkov (4):
      dt-bindings: clock: separate SDM845 GCC clock bindings
      clk: qcom: convert SDM845 Global Clock Controller to parent_data
      clk: qcom: gcc-sdm845: get rid of the test clock
      arm64: dts: qcom: sdm845: add required clocks on the gcc

 .../devicetree/bindings/clock/qcom,gcc-sdm845.yaml |  84 +++
 .../devicetree/bindings/clock/qcom,gcc.yaml        |   2 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |  12 +
 drivers/clk/qcom/gcc-sdm845.c                      | 650 ++++++++++-----------
 4 files changed, 419 insertions(+), 329 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml

