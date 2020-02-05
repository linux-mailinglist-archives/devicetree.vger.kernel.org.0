Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FE5F152690
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2020 08:02:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727861AbgBEHB6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Feb 2020 02:01:58 -0500
Received: from mail26.static.mailgun.info ([104.130.122.26]:34774 "EHLO
        mail26.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727504AbgBEHB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Feb 2020 02:01:58 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1580886117; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=KBgrq18X/unHwzcEQjxUJ1qgq9OWyPupMMdfoEVNsSA=; b=PG3ICmG1x9eose3Lmjg84YGmKfiMTAZN0OSZR9wp21nXNjBVe8b5KlrRLFaEd93psKVkhnq/
 29uW60FQgkt9fQn0++jzHgi2Q4PKGyy/mi7ZSagz7zJiW/IpkXeI0n2o5AORdYr+L4tkMJhj
 B9tyRUxcuMsldXEp+upQQKuXYbE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3a685c.7f8d59180f80-smtp-out-n02;
 Wed, 05 Feb 2020 07:01:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 6E011C4479C; Wed,  5 Feb 2020 07:01:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from smasetty-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: smasetty)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 853D1C433CB;
        Wed,  5 Feb 2020 07:01:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 853D1C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=smasetty@codeaurora.org
From:   Sharat Masetty <smasetty@codeaurora.org>
To:     freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     dri-devel@freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        jcrouse@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        Sharat Masetty <smasetty@codeaurora.org>
Subject: [PATCH v4 0/3] sc7180: Add A618 GPU bindings
Date:   Wed,  5 Feb 2020 12:31:34 +0530
Message-Id: <1580886097-6312-1-git-send-email-smasetty@codeaurora.org>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I used this branch qcom/arm64-for-5.6-to-be-rebased as suggested by Matthias.
This patch needs the clock patches and the clock patches have not yet landed, so

please apply the following series and patches in order
a) All patches from https://patchwork.kernel.org/project/linux-clk/list/?series=203517&state=%2a&archive=both
b) Patches 1 and 2 from https://patchwork.kernel.org/project/linux-clk/list/?series=203527&archive=both&state=%2a
c) All patches from https://patchwork.kernel.org/project/linux-clk/list/?series=221739&archive=both&state=%2a
d) https://lore.kernel.org/linux-arm-msm/20200124144154.v2.10.I1a4b93fb005791e29a9dcf288fc8bd459a555a59%40changeid/raw
e) This patch "arm64: dts: qcom: sc7180: Add A618 gpu dt blob"

v3: Addressed review comments from previous submits. Also removed the
interconnect bindings from this patch and I will submit as a new patch with its
dependencies listed. Also I will be sending a new patch for updating the
bindings documentation.

v4: Add GX_GDSC power domain binding for GMU

Sharat Masetty (1):
  arm64: dts: qcom: sc7180: Add A618 gpu dt blob

Taniya Das (2):
  dt-bindings: clk: qcom: Add support for GPU GX GDSCR
  clk: qcom: gpucc: Add support for GX GDSC for SC7180

 arch/arm64/boot/dts/qcom/sc7180.dtsi          | 102 ++++++++++++++++++++++++++
 drivers/clk/qcom/gpucc-sc7180.c               |  37 ++++++++++
 include/dt-bindings/clock/qcom,gpucc-sc7180.h |   3 +-
 3 files changed, 141 insertions(+), 1 deletion(-)

--
1.9.1
