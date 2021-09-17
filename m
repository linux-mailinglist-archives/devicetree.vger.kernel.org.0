Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53C3540F03D
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 05:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243707AbhIQDSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 23:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243655AbhIQDSJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 23:18:09 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E520C061756
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:16:48 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id k24so8233768pgh.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=7BY6GAW+QciQRv2f0PndNLV4rTDCdK0pMSIc7MDy+1U=;
        b=xTa7Jf08C4/Fhfwu4paWj6ejKNIvaG2KLo3IaWuzwCouqzwWvd55Ur8T+A7ROIv0s2
         SBVRCVv9JFH3rpmWeXDG+MW0Py6JQusNx9+PPiBs1LMotsBw5+BLCSEJdiWKdL8sibuf
         ecUxGZaesZBoJEtTphdBET6qone5x8brEwb3imImTrAwiaSUq1MBCY6KQ1s1tMVfmWCW
         M4ar6VnEDVohrkz75URrWDY0B2c2AFHyakswobf8ZLkras6OpYHd4el+AF07Hvq9vDnK
         CbztDBWe22kOLBF330+cTqOu05RmdZxGaEG/HyWXxrWviNocyttUghZYWZ6TNYcFpsza
         09bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7BY6GAW+QciQRv2f0PndNLV4rTDCdK0pMSIc7MDy+1U=;
        b=awi58MuIxR1DhlN5MMmu+klpX+LpGCLYFj5FsKOAp29s8zgzPkGgCufYK6JP8A6FJu
         QJCxzf4nEER/cVEqaVJwgVmNDEwjiiUL6u23TQVwf+cY1PaPTPsBI8MJw0+T0oCHvT/J
         3mKkY+e29ea8HsENqEC5cbRqe8pl58Zwb7zdvVwc+TWji3fotWqk9RmOktUcIh4eC/Gf
         XIMk5iY7Ysi1h8eKsB33f0kAdNIouKmbBQ6EZYf1zHJ8Z0xFfz7EI4U4GY5OZP8nsLdD
         vO/67qhphT0s4/canpZhY7wNruVrQe9yABFYyyKACV5LR4mMwyJ+OOjfKpNZZh2VdNzs
         7sdg==
X-Gm-Message-State: AOAM533aB8H34be03n8n9vBLtU3z5f4p4JGgquYeMHput2dBW6CSQsqJ
        Tt5/73mZtm0HXjsF9IzQfcvTVw==
X-Google-Smtp-Source: ABdhPJz3X/v/JRKl5BN4Gi5XjV/JLEJnPdNMRsUKVZ3hrSTCplvZZjs2oNZUzJHewNb2Qs7KM6SUuA==
X-Received: by 2002:a62:55c2:0:b0:438:f9ea:ac46 with SMTP id j185-20020a6255c2000000b00438f9eaac46mr8836747pfb.25.1631848608108;
        Thu, 16 Sep 2021 20:16:48 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id k3sm8823034pjg.43.2021.09.16.20.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 20:16:47 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 0/2] Add QCM2290 Global Clock Controller driver
Date:   Fri, 17 Sep 2021 11:16:36 +0800
Message-Id: <20210917031638.27679-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds QCM2290 Global Clock Controller driver support.

Changes for v2:
- Drop unused gcc_parent_map and gcc_parents to avoid clang
  unused-const-variable warnings.

Shawn Guo (2):
  dt-bindings: clk: qcom: Add QCM2290 Global Clock Controller bindings
  clk: qcom: Add Global Clock Controller driver for QCM2290

 .../bindings/clock/qcom,gcc-qcm2290.yaml      |   72 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/gcc-qcm2290.c                | 2965 +++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-qcm2290.h  |  178 +
 5 files changed, 3223 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml
 create mode 100644 drivers/clk/qcom/gcc-qcm2290.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-qcm2290.h

-- 
2.17.1

