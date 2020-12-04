Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52F722CE8ED
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 08:55:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387415AbgLDHyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 02:54:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728837AbgLDHyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 02:54:49 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B862C061A55
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 23:54:09 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id f1so2646914plt.12
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 23:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Ued29EV1nTUCA0vnMZ9y9R5tRPXZpQokqluVCOGrs9Q=;
        b=Gi1x84AiKYzz2uYPnNmVGEBldtz1e4NAmNV1Ua7JmyI5JRMrFLW48nYm/3fcDLaY5d
         Y2XlhxcpjeitkYCtkCRUe5DdG81nSaHHccp4UXpSK1VA2awYelDXsUO+f4SODxeqFWXC
         BlssjTG7CldtMLjjV5i2SO6UbuFV4zZrisJgMELc6/I5AwG/xf4wH0FNfakZ/BfzsK4j
         C9Cz52cteImiKVl/+4i81sfMfupjILGEKpHULDYaDyzkkqYbjkc9e4Vtu67eiwFjhvcx
         T0fJdcL/CiFRZFnK+8jlktca2mbSB+EHJrxb/5NGVjd4gxb2plfbrKTlZ4rmZPSVH5mm
         FtMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ued29EV1nTUCA0vnMZ9y9R5tRPXZpQokqluVCOGrs9Q=;
        b=pmPq+304xWuIQpe7zqLar5gJDKRD+4TsB3VK7dLedSnYHORDB40JAQCfK/aepdBOmw
         OKuO3HwCrhFY154HZgVlBXN2W/JupUzG2m47p8YkNt6Jbf/TPqLEvf34e8Fr7b05P+jH
         sFGYsuUSB6C7D+ka3q4eHj7NDIJgDhtuTXmHBuXrEqSZl0ZLoxM+XcJLyiVc7T79Qdgp
         2eBsmkIUTmC4pS8Asdr8r3utegGBlZVUTHJD7EsaeugK38vWK1gSdhTG3e5qDDZCqinB
         ++CVUPVZ/tBtpJOvzv/e7Y+N1ka3hQcXdVJvq6+qBaXlH0vCy4s29IeiolFGzIc5KrAu
         tSCg==
X-Gm-Message-State: AOAM530DFGep2pqcuaEUJL6l1uUITeC5cIyZnpk/TKioTQ4Un/jFWqWS
        /2Mni9hdMH+pxVhGwqtdUqRY5RNKjDxaYg==
X-Google-Smtp-Source: ABdhPJwy5r5C5Rl8P1LQCzdGCGJsWwccYscUVfGuyYi6NiFxwZdRqm1xVeG6j7/0iiFqxjMC3STljg==
X-Received: by 2002:a17:90a:c17:: with SMTP id 23mr2951818pjs.199.1607068448396;
        Thu, 03 Dec 2020 23:54:08 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com. [66.175.222.153])
        by smtp.gmail.com with ESMTPSA id l190sm3822262pfl.205.2020.12.03.23.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 23:54:07 -0800 (PST)
From:   Jun Nie <jun.nie@linaro.org>
To:     devicetree@vger.kernel.org, georgi.djakov@linaro.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org
Cc:     vincent.knecht@mailoo.org, shawn.guo@linaro.org,
        Jun Nie <jun.nie@linaro.org>
Subject: [PATCH v2 0/5] Consolidate RPM interconnect and support to MSM8939
Date:   Fri,  4 Dec 2020 15:53:40 +0800
Message-Id: <20201204075345.5161-1-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set split shared RPM based interconnect operation code and add
support to MSM8939 interconnect.

Changes vs V1:
  - Rebase to latest icc code.
  - Remove unnecessary comment and info.
  - Fix some format issues.

Jun Nie (5):
  interconnect: qcom: Consolidate interconnect RPM support
  interconnect: qcom: qcs404: use shared code
  dt-bindings: interconnect: single yaml file for RPM interconnect
    drivers
  dt-bindings: interconnect: Add Qualcomm MSM8939 DT bindings
  interconnect: qcom: Add MSM8939 interconnect provider driver

 .../bindings/interconnect/qcom,qcs404.yaml    |  77 ----
 .../{qcom,msm8916.yaml => qcom,rpm.yaml}      |  22 +-
 drivers/interconnect/qcom/Kconfig             |   9 +
 drivers/interconnect/qcom/Makefile            |   4 +-
 drivers/interconnect/qcom/icc-rpm.c           | 191 ++++++++++
 drivers/interconnect/qcom/icc-rpm.h           |  73 ++++
 drivers/interconnect/qcom/msm8916.c           | 241 +-----------
 drivers/interconnect/qcom/msm8939.c           | 355 ++++++++++++++++++
 drivers/interconnect/qcom/qcs404.c            | 242 +-----------
 .../dt-bindings/interconnect/qcom,msm8939.h   | 105 ++++++
 10 files changed, 769 insertions(+), 550 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interconnect/qcom,qcs404.yaml
 rename Documentation/devicetree/bindings/interconnect/{qcom,msm8916.yaml => qcom,rpm.yaml} (77%)
 create mode 100644 drivers/interconnect/qcom/icc-rpm.c
 create mode 100644 drivers/interconnect/qcom/icc-rpm.h
 create mode 100644 drivers/interconnect/qcom/msm8939.c
 create mode 100644 include/dt-bindings/interconnect/qcom,msm8939.h


base-commit: bfd521e1af519bb7096efc845f6a64a7de28c472
-- 
2.17.1

