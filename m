Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C89B927E377
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 10:17:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728622AbgI3IRJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 04:17:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728235AbgI3IRI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 04:17:08 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 661A0C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 01:17:08 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id t18so567172plo.1
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 01:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=/cvEEeM/Z0ruOyi2iZix2HZSBL+TU1UmTGUs1ZgCyb0=;
        b=JCEThkzLTx4ooLRLiBbmFPfIsWDAfs5Lm6Wr+sO7vDFbjgeA7+dvgsGcDvbmukrfj1
         VML8KgePgNcp+0EhJeDpNdZsmigMk6O5ZLFgYxlcTRTDDthNCCBRB9goQ9kJmIQb0xKj
         4VgPMljdHIDfcSeYeuhJdQx79LnjTuqu6+HFjWeq+3krfjgrZhy1uwMXDICa1Co4ZjlS
         Xe+Vn3jLjqRsKfHtlLaM01AhqMEtHqHsI0phr9hELf6C25SEEds6Ank5DqKwtMKi8JFu
         ioZClvoh3+xcoT0nS2FVcwpYfAX0zM0yDeuULhfDLjo8hln5dHhL9y6hX5bVCTHKkKtP
         K+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/cvEEeM/Z0ruOyi2iZix2HZSBL+TU1UmTGUs1ZgCyb0=;
        b=HaFr1G+bcI8Nv0EiYmPwMO82TbvGY8OVmPg/pDAw5SzNwJZUwr3cJbp6/Jfn8d++K6
         bVz/mXX3MEh7qjWnZcGiw5IDMmgmmgycVfVjWXQHn9hZ9iV/ggl94WDbMoQoUIOO0m+2
         jglv3Lw6CtwkHGcQh143WeZ72hQPWKmXKF2CpanVSnfTMLhSyU6Ro4WbFP7WQrXcc9FK
         Q09M6o15jb+duZ8hfKfi1x5P5dBew3JIuUBWX5seVM7/T6AIREL0FWsEkCyWm2eNpz8c
         B1J/v6RGOPBGtibkUUuImTcgqzpdhrETmg181hf5aiuxligDo5/BKisUtN33FaegUc9v
         1tqg==
X-Gm-Message-State: AOAM5305n6KFHgq63bCGQckysxvtpttU6ijwpHa219qVtvrHDMdxiACM
        IdrFx3AERPk9wDFty8LWV3fybkCTs8WvSdqD
X-Google-Smtp-Source: ABdhPJw6zqfzW5NM53QibTPT4D+nBqiYb2YZ7SPWAWrKED2U+JVnR9RY/gc0qz2xe57Gx3sileGsCQ==
X-Received: by 2002:a17:902:768a:b029:d2:ac2f:8945 with SMTP id m10-20020a170902768ab02900d2ac2f8945mr1261857pll.61.1601453827631;
        Wed, 30 Sep 2020 01:17:07 -0700 (PDT)
Received: from localhost.localdomain (li519-153.members.linode.com. [66.175.222.153])
        by smtp.gmail.com with ESMTPSA id q15sm1385345pje.29.2020.09.30.01.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 01:17:07 -0700 (PDT)
From:   Jun Nie <jun.nie@linaro.org>
To:     devicetree@vger.kernel.org, georgi.djakov@linaro.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org
Cc:     shawn.guo@linaro.org, Jun Nie <jun.nie@linaro.org>
Subject: [PATCH 0/5] Consolidate RPM interconnect and support to MSM8939
Date:   Wed, 30 Sep 2020 16:16:40 +0800
Message-Id: <20200930081645.3434-1-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set split shared RPM based interconnect operation code and add
support to MSM8939 interconnect.

Jun Nie (5):
  interconnect: qcom: Consolidate interconnect RPM support
  interconnect: qcom: qcs404: use shared code
  dt-bindings: interconnect: single yaml file for RPM interconnect
    drivers
  dt-bindings: interconnect: Add Qualcomm MSM8939 DT bindings
  interconnect: qcom: Add MSM8939 interconnect provider driver

 .../bindings/interconnect/qcom,qcs404.yaml    |  77 ----
 .../{qcom,msm8916.yaml => qcom,rpm.yaml}      |  28 +-
 drivers/interconnect/qcom/Kconfig             |   9 +
 drivers/interconnect/qcom/Makefile            |   5 +-
 drivers/interconnect/qcom/icc-rpm.c           | 194 ++++++++++
 drivers/interconnect/qcom/icc-rpm.h           |  73 ++++
 drivers/interconnect/qcom/msm8916.c           | 241 +-----------
 drivers/interconnect/qcom/msm8939.c           | 355 ++++++++++++++++++
 drivers/interconnect/qcom/qcs404.c            | 242 +-----------
 .../dt-bindings/interconnect/qcom,msm8939.h   | 105 ++++++
 10 files changed, 776 insertions(+), 553 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interconnect/qcom,qcs404.yaml
 rename Documentation/devicetree/bindings/interconnect/{qcom,msm8916.yaml => qcom,rpm.yaml} (72%)
 create mode 100644 drivers/interconnect/qcom/icc-rpm.c
 create mode 100644 drivers/interconnect/qcom/icc-rpm.h
 create mode 100644 drivers/interconnect/qcom/msm8939.c
 create mode 100644 include/dt-bindings/interconnect/qcom,msm8939.h

-- 
2.17.1

