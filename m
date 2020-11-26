Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 240032C5082
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 09:34:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388922AbgKZIbt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 03:31:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728449AbgKZIbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 03:31:48 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BE3C061A04
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 00:31:48 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id y7so986240pfq.11
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 00:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=syOAkLuee0TeSM89H90JHg1WcbXm69FJQnHLvunIo/I=;
        b=huSYSMjzFb4xBixn46SqroBu0WVZx2f3C0IjXzm2DwzHdFvvD0M7rALu5xR2vdcNfD
         CVaNzd6bEmbcSWgnr94eKtsASrg1icn+rV33MSz0bCsmRWeUt8wQImDS4Eabjq7pOkEj
         u1BRFHKM1sAjHzVvXafRAU+2swfR/zsggcGpTezA/22OrVb9dqJnenY7qT4uK7anHKag
         IDKl2MkhRAA8Bcg1fUCF/KZ1wyWL/JQ+KCAHt4BnsNBZNR0t/qZxJw/eey4PW3hf6Y+R
         YlScTT82uzvS88Ww6CqHuH8vGyTFTddi2/okLiexDCC0+6UQPDZB48/9GJ45HjB33GBJ
         VL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=syOAkLuee0TeSM89H90JHg1WcbXm69FJQnHLvunIo/I=;
        b=VmK1MtJZ6WvGkF0Myxpb7xMP+9lgw2O9t75RoFVZlwDC652l5FJu3UnbojSS89lJcJ
         CQNvq6Gj/6muY5iigH41g2eiuHJCogleussyHqOJC9u/UN3Sxc4AA5DzRNDuG6UAOeNG
         Xaixx+XIVpLcKtLSV6TcO1z1BcS/+Yws5j8mDgCbN/fyhe7j/GlierpuZNgtwdsP5+9o
         E0JRcKD5uPRHC9oeiGX8/zhQ0m3/q3UN5r7H6EArbxTzORW4eZjV8w/EXH2KVxMdsIZd
         vIGejICW1sCOnXwdEAoAmoKfifr7VNYnxVO7MKlLA+mmAVT1smHj/w+x+Td79+21FI4Q
         XkmQ==
X-Gm-Message-State: AOAM531lnzoOxi/TPqnbjLxwqzTbf9zY1bug4GPyxuWcz9Y+3h0GLX+t
        4lxNGUniNQMNdLbufF1vc3/Q
X-Google-Smtp-Source: ABdhPJzVNitntSJav6ZikSuYYJ3NE/1cKeWcI4AOyV21glgyglvotavBpJW2Rp5ZlsTbep5OxpIIvw==
X-Received: by 2002:a63:461b:: with SMTP id t27mr1737778pga.122.1606379507711;
        Thu, 26 Nov 2020 00:31:47 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6e95:f2a:3996:9d7f:e389:7f7d])
        by smtp.gmail.com with ESMTPSA id b21sm5360949pji.24.2020.11.26.00.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 00:31:47 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/2] Add devicetree support for SDX55 Modem and MTP
Date:   Thu, 26 Nov 2020 14:01:36 +0530
Message-Id: <20201126083138.47047-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds devicetree support for Qualcomm SDX55 platform and MTP
board. This series functionally depends on Clock support series [1]
which is under review.

With the current devicetree support, the MTP can boot into initramfs
shell.

Thanks,
Mani

[1] https://lore.kernel.org/linux-arm-msm/20201119072714.14460-1-manivannan.sadhasivam@linaro.org/

Changes in v3:

* Removed pll_test clock and used numbers instead of enums for GCC clock
  so that this series can be applied without gcc patches.

Changes in v2:

* Incorporated review comments from Bjorn. Mostly minor changes.

Manivannan Sadhasivam (1):
  ARM: dts: qcom: Add SDX55 platform and MTP board support

Vinod Koul (1):
  dt-bindings: arm: qcom: Document SDX55 platform and boards

 .../devicetree/bindings/arm/qcom.yaml         |   6 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/qcom-sdx55-mtp.dts          |  27 +++
 arch/arm/boot/dts/qcom-sdx55.dtsi             | 193 ++++++++++++++++++
 4 files changed, 228 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/qcom-sdx55-mtp.dts
 create mode 100644 arch/arm/boot/dts/qcom-sdx55.dtsi

-- 
2.25.1

