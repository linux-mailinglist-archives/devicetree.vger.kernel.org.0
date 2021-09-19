Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C596410979
	for <lists+devicetree@lfdr.de>; Sun, 19 Sep 2021 05:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234275AbhISDMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Sep 2021 23:12:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231812AbhISDMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Sep 2021 23:12:45 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EEA5C06175F
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 20:11:20 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id t4so8858682plo.0
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 20:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=G6BucwPaZnnmqaLd4fYBveJkURWi7kDjQMGIY7cMKK0=;
        b=r554Mpl0BWcOt8Cj0gmLagxeJwfxwlc/lRfhLTiC/U10hq1fm02juk0DBXOnlhO7mZ
         eFTtK4sU4KRhV9WL5ip37UxxO2DIOlGG1CWc+fEtBkxnM0vOrZnczvUShnT4pX0ukXLH
         1UcS09Gs5zyYd1hMxAhh9Dv+grhC2FjI1cR2NnP1eLXmXFSFKgX0gSpa6AU5ZbFABRxb
         CuvgcLJ8iFhsYUHLFmzz84762YJSYQBiLmFOEOV2z1b9dh0389DftNeiT5knN0Q2m2HI
         mrXP940pu86rSEjg1TCwE80SUQT89FltRfKCNuNqczD3ELv2yj/pBvuNVsg+Q8EUOZvI
         SZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=G6BucwPaZnnmqaLd4fYBveJkURWi7kDjQMGIY7cMKK0=;
        b=2bccFTw80io/BADxX6VbA2xdmFW5w8UIZ0v/WMWSJO7+vVhotUO1aGgIF//8Omdhxt
         FbAyN6GBu2tkJywCkSf0CIhz6UBZxnbAsu2oC97i+SpEy9sNrc3SvGjxa1tg2VHZyMWm
         PYUN7U1pln1UupZg4wxhxBRJd5ZAcHtnTg9jMnvo+EfITXg5Lp6ud1eXWJ8Dr0YdQ8x2
         rdptaVEaQAzclM3TocddpsH5jD2vTQmWBRXLIO6mePHNQ3D1lDWJRYD9y74Bs5eAML/G
         yAQxRvkZiv+ffeS67hscG5KsvYXdgzAuYXaEEf/mwrP4SaeQHAaprA62hBYGmEHRX0Z/
         zJxw==
X-Gm-Message-State: AOAM533pjiWGoa+A7sdqMSaTKBMgEMSY7G2cO84+xeq5rvStFRcwRsgD
        1gCO6tQLBQTLP2x01yM4anzcXQ==
X-Google-Smtp-Source: ABdhPJyD0FI4fnI4/dC47KuFVzltQiWcHwub0OlDiE8wqzPFlaUZqzP3X0SR2VsCBK4dWHaKdSVv4Q==
X-Received: by 2002:a17:903:1208:b0:13a:8c8:8a33 with SMTP id l8-20020a170903120800b0013a08c88a33mr16701433plh.89.1632021079903;
        Sat, 18 Sep 2021 20:11:19 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id 132sm10224931pfy.190.2021.09.18.20.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Sep 2021 20:11:19 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add QUSB2 PHY support for QCM2290
Date:   Sun, 19 Sep 2021 11:11:08 +0800
Message-Id: <20210919031110.25064-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds QUSB2 PHY support for QCM2290 platform, by documenting
the compatible and it into driver match table.

Shawn Guo (2):
  dt-bindings: phy: qcom,qusb2: Add compatible for QCM2290
  phy: qcom-qusb2: Add compatible for QCM2290

 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c                     | 3 +++
 2 files changed, 4 insertions(+)

-- 
2.17.1

