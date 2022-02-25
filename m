Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7504C4EA6
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 20:23:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230479AbiBYTX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 14:23:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232108AbiBYTX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 14:23:57 -0500
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id 7FD651C945A
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 11:23:24 -0800 (PST)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1645817004; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=tZD1ax3jsnPy6TzQA2DQRsI4QX4jijvlAnNWj4gYHnE=; b=GGzKXR+0ibVFCYUMuyxVKveOOO4wmYaEpHKHvpV6L1+8BzbkZa8nb/HCzA5mtUaU+94InyFz
 bnXUjIIRUEIwgH6GS3OnjABPZ9rxFs4px8WFiq6eHxDJQBkeBppFJkX7NDW9gscLz+W0udn9
 EI5wHQ9SM4UGYNjS2TdioqfhQgw=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 62192c4ce1c212bb9c4ab204 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 25 Feb 2022 19:21:48
 GMT
Sender: quic_akhilpo=quicinc.com@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id DF1D3C43637; Fri, 25 Feb 2022 19:21:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
Received: from hyd-lnxbld559.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: akhilpo)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 152C0C4338F;
        Fri, 25 Feb 2022 19:21:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 152C0C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=fail (p=none dis=none) header.from=quicinc.com
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=quicinc.com
From:   Akhil P Oommen <quic_akhilpo@quicinc.com>
To:     freedreno <freedreno@lists.freedesktop.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>,
        OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS 
        <devicetree@vger.kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Douglas Anderson <dianders@chromium.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>,
        Stephen Boyd <swboyd@chromium.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Yangtao Li <tiny.windzz@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Support 7c3 gpu SKUs
Date:   Sat, 26 Feb 2022 00:51:27 +0530
Message-Id: <1645816893-22815-1-git-send-email-quic_akhilpo@quicinc.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series supercedes [1]. Major change in this series is that it is now
optional to include a gpu name in the gpu-list. This helps to avoid the
confusion when we have different SKUs with different gpu names. And also
I am pretty happy that the overall changes are smaller now.

[1] https://patchwork.freedesktop.org/series/99048/

Changes in v2:
- use devm_kasprintf() to generate gpu name (Rob)

Akhil P Oommen (5):
  drm/msm: Use generic name for gpu resources
  drm/msm/adreno: Generate name from chipid for 7c3
  drm/msm/a6xx: Add support for 7c3 SKUs
  drm/msm/adreno: Expose speedbin to userspace
  arm64: dts: qcom: sc7280: Support gpu speedbin

 arch/arm64/boot/dts/qcom/sc7280.dtsi       | 46 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 18 ++++++++++--
 drivers/gpu/drm/msm/adreno/adreno_device.c |  1 -
 drivers/gpu/drm/msm/adreno/adreno_gpu.c    | 36 +++++++++++++++++++----
 drivers/gpu/drm/msm/adreno/adreno_gpu.h    |  3 ++
 drivers/gpu/drm/msm/msm_gpu.c              |  4 +--
 6 files changed, 97 insertions(+), 11 deletions(-)

-- 
2.7.4

