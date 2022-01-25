Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 486A849BEBE
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 23:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233994AbiAYWop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 17:44:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233982AbiAYWoo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 17:44:44 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76A3CC061744
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:44:44 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id my12-20020a17090b4c8c00b001b528ba1cd7so4304220pjb.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/jIHPkrcrg/IX2G8MpgrNtMCWPOHXvyJQgcNyeiBzgg=;
        b=hqGa/1H/YFFeZlS2duI7roo3l7kV0LUBbRbfIibdEh1t7ar2y0BXQJ1iYK5eN2pxC8
         1OMyfZubXjRwN63SJDxg/GcvIfk7gExpCbhUy4IoAIoYXAeXkFGKCdh1SoKE9e4JXFc6
         O7aeq+LWh7DsBF8EdSjoX8ZdPmsJQhXsTe3QM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/jIHPkrcrg/IX2G8MpgrNtMCWPOHXvyJQgcNyeiBzgg=;
        b=gGeK3Yv/elZRlQVOzrBsyo6spyoxFYCtvePmVTbvrUUMYzi3n9EcoXuguz8M+2PAl3
         46NKA4Q/445LN+xihf/SdDSJIXgGPSDAtBYEt5URYWcgsPs+81Zb+L1qJccEHY9NmPMR
         wPZ6PNqR5uJjP085jmNgOMub64FzmtSK67N1zvPOUsPwcqPk2KDp0K2HKlUtWX2aWmb1
         RbXEEHofLaitOnihIYyN7hd59hA6kWZVEyR/JU6z3l54mVTO2BHVRjpdKHI73lrPAxYD
         WYs3HqgJXUCLAp5k8HNJK529Fmr+95SvVMVYXzxVNQgnkVi4M/mn2T58ZiGtCbVcDHvU
         5mdQ==
X-Gm-Message-State: AOAM533tuzrvXLjmARlea672Qju6T+Lj2XlyimnGzUTXdV/TCQeGCD1m
        PJ5AoirUPr4O4NNyz6tZs+thGA==
X-Google-Smtp-Source: ABdhPJyw98JlLo0u38m6MexsIV00zoTGfSot0lsI6pshuX/BDi9PRqIp9GUkpLhsZN4LY7zH2UDYMw==
X-Received: by 2002:a17:902:db10:b0:14b:588d:e0ff with SMTP id m16-20020a170902db1000b0014b588de0ffmr9548850plx.92.1643150683949;
        Tue, 25 Jan 2022 14:44:43 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f313:ff03:9fc5:6152])
        by smtp.gmail.com with ESMTPSA id p12sm1322335pjj.55.2022.01.25.14.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 14:44:43 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     konrad.dybcio@somainline.org, swboyd@chromium.org,
        kgodara@codeaurora.org, mka@chromium.org, sibis@codeaurora.org,
        pmaliset@codeaurora.org, quic_rjendra@quicinc.com,
        Douglas Anderson <dianders@chromium.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: dts: qcom: sc7280: Introduce herobrine-rev1
Date:   Tue, 25 Jan 2022 14:44:17 -0800
Message-Id: <20220125224422.544381-1-dianders@chromium.org>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds support for herobrine-rev1. Note that it's likely
that with the introduction of -rev1 we can drop -rev0 support, but
we'll keep it for now (though we won't try to "fit it in" and share
code with it).

This series is confirmed to boot herobrine-rev1 atop mainline, commit
0280e3c58f92 ("Merge tag 'nfs-for-5.17-1' of
git://git.linux-nfs.org/projects/anna/linux-nfs"), though it requires
a hack to work around a misconfigured DMA for i2c14
(https://crrev.com/c/3378660)

Changes in v2:
- memory-region syntax change as per Stephen.
- ("Factor gpio.h include to sc7280.dtsi") new for v2
- Herobrine compatible on one line, not two
- Wording change in comments for components enabled per-board
- Always sort "bias" above "drive-strength" in pinctrl.
- Properly sort "hub_en" pinctrl.
- Two comments moved from multiline to single line.
- Space after "/delete-property/"

Douglas Anderson (5):
  arm64: dts: qcom: sc7280: Fix gmu unit address
  arm64: dts: qcom: sc7280: Move herobrine-r0 to its own dts
  arm64: dts: qcom: sc7280: Factor out Chrome common fragment
  arm64: dts: qcom: sc7280: Factor gpio.h include to sc7280.dtsi
  arm64: dts: qcom: sc7280: Add herobrine-r1

 arch/arm64/boot/dts/qcom/Makefile             |    3 +-
 .../boot/dts/qcom/sc7280-chrome-common.dtsi   |   97 ++
 .../qcom/sc7280-herobrine-herobrine-r0.dts    | 1350 +++++++++++++++++
 .../qcom/sc7280-herobrine-herobrine-r1.dts    |  313 ++++
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dts |   14 -
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1056 +++----------
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |   76 +-
 arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi    |  553 +++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |    3 +-
 9 files changed, 2530 insertions(+), 935 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi

-- 
2.35.0.rc0.227.g00780c9af4-goog

