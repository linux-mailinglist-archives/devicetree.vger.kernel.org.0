Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE88548E1A7
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 01:44:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238490AbiANAnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 19:43:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235727AbiANAnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 19:43:42 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B53DC06161C
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 16:43:42 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id l6-20020a17090a4d4600b001b44bb75a8bso386816pjh.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 16:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DqtNSv4Z9kBGU0LDr3xUR2auo+7Gq8uLx1kqkAz4XQU=;
        b=RVtu2nkywJa1g8nghYyFXFlqS2ka2yS41LPeb0r+UL2+Mau+fRiMQgjl1ZWmktWK4y
         xdZ1VAfEb9AX3ASwGhd+FzHzo2uwK/7sylMJPGopEWzw3K/nfG3AgU3Pu8grSG+E9xo0
         62QXp71/16M7PIjGUbXYT/ovvDFr8gPcsOWJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DqtNSv4Z9kBGU0LDr3xUR2auo+7Gq8uLx1kqkAz4XQU=;
        b=5ABHSS7a40cuM1r8dBxWEOYJ9wEnbXn5IB2TRaGJGtA3S7J4CeHz8RlABvJb9NHmIU
         H6pTFIuLnt8A5vFN13+YTpHLiRnvrWPkMtnsLD8VRIUUZEbG9LiaidD7v6CBDwAb9oNi
         7lbYlabBcWrCcU3piSByf3pURyY1TkrPfCZVTk0U9dlGK8S2bkKrfFoKx22TJR8PTsEN
         9oRjeDLzUcWeSbXM6eTFLuacmppPEPSenlEhY4pREIAYO9TFFD9NwPL658v/4rHQgBPD
         bYoHXa+WZDnASU/eBOZD10kdPdZGzLFQgvOgf+rLYTM1Jq/VKGmUUuDLaoO6Z8vBST6O
         jFrA==
X-Gm-Message-State: AOAM533R2v51RN6nm1k+fBtJLoep5FszGyK6au6aJnLB8G96iW9sX2z4
        S1FbrcKpSm1tcOlYhtRQCVpcmA==
X-Google-Smtp-Source: ABdhPJxnMElkBrGw7QVbbAwDkb4QfPHO+cq87oWf9ffcSvJcQwgmbzNMLztmzh/Kpif1rE0Q/Rle1g==
X-Received: by 2002:a17:903:245:b0:149:d2a3:ddbf with SMTP id j5-20020a170903024500b00149d2a3ddbfmr6839564plh.3.1642121022107;
        Thu, 13 Jan 2022 16:43:42 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:cf6e:9fa9:a398:4c9])
        by smtp.gmail.com with ESMTPSA id j4sm4061498pfj.217.2022.01.13.16.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 16:43:41 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     quic_rjendra@quicinc.com, sibis@codeaurora.org,
        kgodara1@codeaurora.org, mka@chromium.org, swboyd@chromium.org,
        pmaliset@codeaurora.org, Douglas Anderson <dianders@chromium.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: qcom: sc7280: Introduce herobrine-rev1
Date:   Thu, 13 Jan 2022 16:42:59 -0800
Message-Id: <20220114004303.905808-1-dianders@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
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
fb3b0673b7d5 ("Merge tag 'mailbox-v5.17' of
git://git.linaro.org/landing-teams/working/fujitsu/integration"),
though it requires a hack to work around a misconfigured DMA for
i2c14 (https://crrev.com/c/3378660)


Douglas Anderson (4):
  arm64: dts: qcom: sc7280: Fix gmu unit address
  arm64: dts: qcom: sc7280: Move herobrine-r0 to its own dts
  arm64: dts: qcom: sc7280: Factor out Chrome common fragment
  arm64: dts: qcom: sc7280: Add herobrine-r1

 arch/arm64/boot/dts/qcom/Makefile             |    3 +-
 .../boot/dts/qcom/sc7280-chrome-common.dtsi   |   97 ++
 .../qcom/sc7280-herobrine-herobrine-r0.dts    | 1352 +++++++++++++++++
 .../qcom/sc7280-herobrine-herobrine-r1.dts    |  314 ++++
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dts |   14 -
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1045 +++----------
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |   75 +-
 arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi    |  557 +++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |    2 +-
 9 files changed, 2532 insertions(+), 927 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi

-- 
2.34.1.703.g22d0c6ccf7-goog

