Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 289D93B4A61
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 00:03:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbhFYWFs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 18:05:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhFYWFs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 18:05:48 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC417C061767
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 15:03:25 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id bb10-20020a17090b008ab029016eef083425so8763088pjb.5
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 15:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l1RnRkRZpqgaaMNcuAwV2p52P2QAGdOgzYxbw1QRorI=;
        b=GZcaTHtQ5jxsRPK9zYSwUL0Uy6N2XwFBwgoXb4ILppc6/R+0Sh7hVs/xdf4ULlHQrb
         AD7U+jZSjUyi1TpGAoucCU6uFdj3tgVejRn7LpaJEcWlHknZeG8unRMOcGYsB0O/0eSb
         tml0eoRiuePCAmFpXy/cytYZSR6oQJmKdHudP4EpV3xNe4/ZvG8thpOTpgHQ0p2LdOJw
         WXl0CcSY2w1fAtwVP/mX4WhEhyww0C0qmv3itNc8Xz9vfqzQNvVmorNXQD1sQ5EPnOnK
         lu8Sn3ZL2l0eU149E2Ud7d0ZMwve9qxOiL4fUDgeR1zgGLqh1t8m8TtJKIutxT6h/5y9
         hXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l1RnRkRZpqgaaMNcuAwV2p52P2QAGdOgzYxbw1QRorI=;
        b=joYltTj6H5aSIwZGIR9AtJfdTEqSyZzLxNE/whSRWR2FmH9YewXi1R+9p3o/Dce12I
         05ltV0Xqm5+ttIgXeC6usVS3yyRVmtygyAruFD/0mMv/rpKP59DiXs2uS1Jyx5yzhaQa
         el5CF4vPZue/OQKRxdHqqT/gFqmNghWxvwDOOA3Bd2UQmLdsvIpYcOqXzJgW8sKtWY7E
         YWkKdY4l/MTiWd9bTOTJxb9pfvoe1h4WvTRkuGcCaHyoS8WiVXX5KtVsj7wcHa276/XS
         E7Na0p10ePonC11o9W3QuTaa3WkWpgi1o2jGIDcBMBF1IftMUbDl14RxOF4SXm2mrgF6
         kTLg==
X-Gm-Message-State: AOAM531JLQ1zlLee1xFmAp3rMZgIknhOUbUvRI2lhmRnq50t3VuLY2aM
        xWNg9ARl9jRz+e6SzI1s2qfEcw==
X-Google-Smtp-Source: ABdhPJy/yIkRxBX8RRlakoK1p3LDTXdw84kxPUgI7I+XCC/0U/NrsRbOEGZJLb9I9D6U0hPWp5xt9Q==
X-Received: by 2002:a17:90a:7e18:: with SMTP id i24mr12939843pjl.130.1624658604920;
        Fri, 25 Jun 2021 15:03:24 -0700 (PDT)
Received: from localhost.name ([122.177.20.255])
        by smtp.gmail.com with ESMTPSA id d9sm6374040pjx.13.2021.06.25.15.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 15:03:24 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        balbi@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: Fix usb entries for SA8155p-adp board
Date:   Sat, 26 Jun 2021 03:33:09 +0530
Message-Id: <20210625220311.527549-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series enables the support for two USB ports (named portB and
portC) found on the SA8155p-adp board which are connected to USB Type A
connectors.

It also contains a minor naming related fix for dwc3 usb nodes found
on sm8150 SoC.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>

Bhupesh Sharma (2):
  arm64: dts: qcom: Use consistent naming for dwc3 usb nodes for sm8150
  arm64: dts: qcom: Fix usb entries for SA8155p adp board

 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 60 ++++++++++++++++++++----
 arch/arm64/boot/dts/qcom/sm8150.dtsi     | 30 ++++++------
 2 files changed, 66 insertions(+), 24 deletions(-)

-- 
2.31.1

