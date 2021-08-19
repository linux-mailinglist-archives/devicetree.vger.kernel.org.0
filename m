Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DE223F10EB
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 05:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235974AbhHSDDr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 23:03:47 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:56147 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235792AbhHSDDo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 23:03:44 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1629342188; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=X9c47q9KsAKLzObcQi9T06HPNpn6+cA5pyUoKac/UKw=; b=H6Q8gIGppPKo8YHXFnDcethxH1OsE8haYcfj7H0q84EOdxIcnLgZUfCzRluJTDVmxqO1eHDR
 gtNsgI6Vgav/xn+LN2oEMMfYgat8stMmzuGQvbLHm/RqW0hCw/rU09ip2ZjTGX89WQfGI9QX
 +9ZZzsB50rra1EFB+8lDEJyC2hY=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 611dc9ec66ff1079042743ae (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 19 Aug 2021 03:03:08
 GMT
Sender: sibis=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 62906C43617; Thu, 19 Aug 2021 03:03:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-87.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: sibis)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id E7D0FC4338F;
        Thu, 19 Aug 2021 03:03:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org E7D0FC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=codeaurora.org
From:   Sibi Sankar <sibis@codeaurora.org>
To:     mka@chromium.org, swboyd@chromium.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org
Cc:     ulf.hansson@linaro.org, rjw@rjwysocki.net, agross@kernel.org,
        ohad@wizery.com, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
Subject: [PATCH v5 00/13] Use qmp_send to update co-processor load state
Date:   Thu, 19 Aug 2021 08:32:03 +0530
Message-Id: <1629342136-3667-1-git-send-email-sibis@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The power domains exposed by the AOSS QMP driver control the load state
resources linked to modem, adsp, cdsp remoteprocs. These are used to
notify the Always on Subsystem (AOSS) that a particular co-processor is
up/down. AOSS uses this information to wait for the co-processors to
suspend before starting its sleep sequence. These co-processors enter
low-power modes independent to that of the application processor and
the load state resources linked to them are expected to remain unaltered
across system suspend/resume cycles. To achieve this behavior let's stop
modeling them as power-domains and replace them with generic qmp_send
interface instead.

https://lore.kernel.org/lkml/20200913034603.GV3715@yoga/
Previous discussion on dropping power-domain support from AOSS QMP driver

Depends on:
qmp_send: https://patchwork.kernel.org/project/linux-arm-msm/cover/1629113954-14084-1-git-send-email-deesin@codeaurora.org/

V5:
 * Fixup power-domain count (patch 2). [Matthias]
 * Add WARN_ON on truncation, remove redundant initialization
   code, use dev_err_probe (patch 4). [Stephen]
 * Use devm_kstrdup, handle kstrdup failure due to
   no memory and set qmp to NULL when not available
   (patch 4). [Bjorn]

V4:
 * Rebase patch 1 due to the aoss-qmp yaml conversion (Dropping Rb).
 * Commit message change and sc8180x co-processor addition
   to patch 2. [Rob/Bjorn]
 * Drop unused pdev and kfree the load state string in q6v5_deinit
   /probe path for patch 4. [Matthias]
 * Replaced "binding" with "property" across the series. [Matthias]
 * Commit message change and drop incorrect cleanup on cooling
   device probe failures. [Matthias]

V3:
 * Misc. documentation fixes [patch 2]:
  - Reduce power-domain maxItems due to load_state pd removal
  - Combine compatibles where possible with the load_state pd removal
  - Fixup the qcom,qmp ref to phandle type

V2:
 * load_state is currently broken on mainline so be safely dropped
   without side-effects.
 * Rebased on top of qmp_send v3 series.
 * Dropped R-b from Stephen and Rob on patch 3 due to the yaml
   conversion.
 * New patch [12] to drop unused aoss-qmp header.
 * Commit message update [patch 1] [Rob]
 * Reorder the series [Stephen]

Sibi Sankar (13):
  dt-bindings: soc: qcom: aoss: Drop the load state power-domain
  dt-bindings: remoteproc: qcom: pas: Add QMP property
  dt-bindings: remoteproc: qcom: Add QMP property
  remoteproc: qcom: q6v5: Use qmp_send to update co-processor load state
  arm64: dts: qcom: sc7180: Use QMP property to control load state
  arm64: dts: qcom: sc7280: Use QMP property to control load state
  arm64: dts: qcom: sdm845: Use QMP property to control load state
  arm64: dts: qcom: sm8150: Use QMP property to control load state
  arm64: dts: qcom: sm8250: Use QMP property to control load state
  arm64: dts: qcom: sm8350: Use QMP property to control load state
  soc: qcom: aoss: Drop power domain support
  dt-bindings: msm/dp: Remove aoss-qmp header
  dt-bindings: soc: qcom: aoss: Delete unused power-domain definitions

 .../bindings/display/msm/dp-controller.yaml        |   1 -
 .../devicetree/bindings/remoteproc/qcom,adsp.yaml  |  61 ++++++------
 .../devicetree/bindings/remoteproc/qcom,q6v5.txt   |   7 +-
 .../bindings/soc/qcom/qcom,aoss-qmp.yaml           |  11 +--
 arch/arm64/boot/dts/qcom/sc7180.dtsi               |   9 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   2 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |   8 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi               |  28 +++---
 arch/arm64/boot/dts/qcom/sm8250.dtsi               |  22 ++---
 arch/arm64/boot/dts/qcom/sm8350.dtsi               |  30 +++---
 drivers/remoteproc/qcom_q6v5.c                     |  57 ++++++++++-
 drivers/remoteproc/qcom_q6v5.h                     |   7 +-
 drivers/remoteproc/qcom_q6v5_adsp.c                |   7 +-
 drivers/remoteproc/qcom_q6v5_mss.c                 |  44 ++-------
 drivers/remoteproc/qcom_q6v5_pas.c                 |  85 ++++------------
 drivers/remoteproc/qcom_q6v5_wcss.c                |   4 +-
 drivers/soc/qcom/qcom_aoss.c                       | 107 ---------------------
 include/dt-bindings/power/qcom-aoss-qmp.h          |  14 ---
 18 files changed, 183 insertions(+), 321 deletions(-)
 delete mode 100644 include/dt-bindings/power/qcom-aoss-qmp.h

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

