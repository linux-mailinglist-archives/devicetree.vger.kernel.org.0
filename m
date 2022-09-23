Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92FA85E7C86
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 16:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231906AbiIWOJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 10:09:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230025AbiIWOJf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 10:09:35 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 900F25F5D
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:09:34 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d82so240043pfd.10
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 07:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=qqaXXPlV6Wdvn0q4C8VxTCjIDz9FmR2A+6qQXG2ZJns=;
        b=ghw4AiGCTt3YoSIlpP2DRWx1sBDhNfElahpUohnHBMNG4OiJXDhCC1n3+VaOG0cpys
         N93F94bXWG0BRtE4uHrnXRgEffM41CvTl/gi8qpzDXLUkpIkA3kJd2LVOPOxeZPGdz9r
         XTok6fYQpdZBbyg09TXw4N+LpI4BjsF1LXO/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=qqaXXPlV6Wdvn0q4C8VxTCjIDz9FmR2A+6qQXG2ZJns=;
        b=O29E0KsFSArxNxVf3T4N1oA4cIfKJL4jETTVYbV0fZXu8UaHsV386xA5kEBin6MXYt
         U6QT7OugMsceBp0Zcn4aDIif8hlKDrK7M1tP8EZwEzsWH3TOxdrr9Dr+3mCFNGMwJoES
         mCW7GdwiQjYrEwQ+UeJB5yDLOQe4gKHB7keEpDZwa1mVq1hzu9jtQjmU63Rbrjb7zD24
         M90Eg9gnIUwHaWG5WSlqGv4y3OVo0hBdNN1XfeEt2jlWgSTNr8xdmPdhVcr85BOwqLha
         7CAB9Fix5MlehOkFHi0ZwI5G33JUGFtBE15eGztyHWiPf3LtCylDRp9d4wtjS2yw3bEV
         q/Cg==
X-Gm-Message-State: ACrzQf2J8snbOOS2ob6rSfEFzBuYTK9zyxKcItfB3VmEOzym1+IpVI47
        Rm4eJbOTmxN9GY5VVwOIObRwZg==
X-Google-Smtp-Source: AMsMyM70d9rbvrriOHa2hHbf0JflFVgG8VK2nsmW71Hi/z6QuNpwGU7O+EE8DcamISOAJIlyf4LYAQ==
X-Received: by 2002:a05:6a00:4c91:b0:543:646e:9 with SMTP id eb17-20020a056a004c9100b00543646e0009mr9484943pfb.40.1663942174119;
        Fri, 23 Sep 2022 07:09:34 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id l14-20020a17090a408e00b001fd8316db51sm1645318pjg.7.2022.09.23.07.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 07:09:33 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v5 0/3] Add dtsi for sc7280 boards that using rt5682
Date:   Fri, 23 Sep 2022 14:09:15 +0000
Message-Id: <20220923140918.2825043-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.3.998.g577e59143f-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Put sound node and lpass_cpu node settings for boards that use rt5682
codec in the sc7280-herobrine-audio-rt5682.dtsi as there are different
choices of headset codec for herobrine projects. Common audio setting
for the internal speaker is in sc7280-herobrine.dtsi.

Change Since V4
- Rebase and include sc7280-herobrine-villager-r0.dts change.

Changes Since V3:
- Remove Change-Id in the commit message.
- Add dependency in cover letter.

Changes Since V2:
- Fix sc7280-herobrine-audio-rt5682.dtsi syntax.

Changes Since V1:
- Not to include the herobrine-villager-r0.dts changes in this patch
  series to avoid conflict.

Judy Hsiao (3):
  arm64: dts: qcom: sc7280: herobrine: Add pinconf settings for mi2s1
  arm64: dts: qcom: sc7280: Add sc7280-herobrine-audio-rt5682.dtsi
  arm64: dts: qcom: sc7280: Include sc7280-herobrine-audio-rt5682.dtsi
    in herobrine-r1 and villager-r0

 .../qcom/sc7280-herobrine-audio-rt5682.dtsi   | 122 ++++++++++++++++++
 .../qcom/sc7280-herobrine-herobrine-r1.dts    |   1 +
 .../dts/qcom/sc7280-herobrine-villager-r0.dts |   1 +
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  30 +++++
 4 files changed, 154 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi

-- 
2.37.3.998.g577e59143f-goog

