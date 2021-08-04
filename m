Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6651E3E0196
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 15:04:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238272AbhHDNEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 09:04:21 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:35482 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237040AbhHDNEU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 09:04:20 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1628082248; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=WYND7xh6faUgm457zJVmTZdDozZ5d4IopLtDep46s0o=; b=DL1jotojGey3PH2d16wM48DF3+TnhvzMJzhlUZE2vBZHmJ7uG0GVJwM2/eW9WzUF/suVFYDx
 xO748s2uGjXV/ABuKnuK9uzBXw4fybOmV1AWnNSB+DscID6+VjMRh/JdIO4FGO0QDAmNtz8h
 zaAE776q17RnbLT4SrOf+46muf4=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 610a9036b4dfc4b0efea8f3f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 04 Aug 2021 13:03:50
 GMT
Sender: rnayak=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 9F3BFC433D3; Wed,  4 Aug 2021 13:03:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-173.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: rnayak)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 959A2C433F1;
        Wed,  4 Aug 2021 13:03:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 959A2C433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=rnayak@codeaurora.org
From:   Rajendra Nayak <rnayak@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, skakit@codeaurora.org,
        konrad.dybcio@somainline.org, swboyd@chromium.org,
        dianders@chromium.org, mka@chromium.org,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: [PATCH v2 0/2] Add DT files for sc7280 IDP2 board
Date:   Wed,  4 Aug 2021 18:33:17 +0530
Message-Id: <1628082199-17002-1-git-send-email-rnayak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2:
* Added the google,piglin compatible for the IDP2 board
* Rebased on the recent pmic cleanups [1]
* Moved pmr735a_die_temp into idp dts

The IDP2 board based off sc7280 SoC is derived from the existing
IDP platform, but has some differences like
* on board Embedded controller and H1 secure microprocessor
* PMIC changes (some pmic functionality handled by EC)
* MDP/Display power grid changes
* USB configuration changes

To handle the differences, all common functionality is now moved to
sc7280-idp.dtsi, which is included in both sc7280-idp and sc7280-idp2
dts files.

Additional functionality differences in IDP2 as listed above will be
added by subsequent patches, this series just makes sure we have the
split done to handle the commonalities and differences.

[1] https://lore.kernel.org/patchwork/patch/1471665/

Rajendra Nayak (2):
  dt-bindings: arm: qcom: Document qcom,sc7280-idp2 board
  arm64: dts: qcom: sc7280-idp: Add device tree files for IDP2

 Documentation/devicetree/bindings/arm/qcom.yaml    |   2 +
 arch/arm64/boot/dts/qcom/Makefile                  |   1 +
 arch/arm64/boot/dts/qcom/sc7280-idp.dts            | 328 +--------------------
 .../dts/qcom/{sc7280-idp.dts => sc7280-idp.dtsi}   |  55 +---
 arch/arm64/boot/dts/qcom/sc7280-idp2.dts           |  23 ++
 5 files changed, 29 insertions(+), 380 deletions(-)
 copy arch/arm64/boot/dts/qcom/{sc7280-idp.dts => sc7280-idp.dtsi} (84%)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-idp2.dts

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

