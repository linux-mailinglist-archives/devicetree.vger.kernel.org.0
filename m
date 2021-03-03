Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE0D132C09E
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234072AbhCCSUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1443534AbhCCDb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 22:31:59 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D8A1C06178A
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 19:31:19 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id q204so14216577pfq.10
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 19:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=TrHkNSQOlv9q7R5nxD4jC1j0AhQTtaA5dulHYHyT0QY=;
        b=xNJRL2a0L8fBrIqOtmCsK+xaAtG9Gt0rdLOf65kHV/qYD1hEvdC+g47J10vpq/3k7N
         mWqD27IiAxxdLq7x0r5fCLjnwWnM//8JeQCM530k4vRyOSqPN9Xm1z07HGEK0FVTsfPj
         U5IrrfqFxCmWj8f+QkA8k+xDnqROqY4fTJLerUjF7Cnsdh92OCpZWIhSNa+vftYTyY3R
         TrL9NowCAiJO3elN+8IkMwfTxH+H670tTPOYF3RXOqRBn59eYqqNJNQcp/OKFOJCQC3V
         8PuC41xkKvCXk5O1X9EbOpjwW5p0ftcLHhlyj4XbVBcifwMqDj/h39xr6lSZjBjYRyGh
         M+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TrHkNSQOlv9q7R5nxD4jC1j0AhQTtaA5dulHYHyT0QY=;
        b=mu5iltJEKBVuHJl7vRjch7oWIQr6iR/1BSHlPW7ImPrV3R3fi9v9chczixpollxGWs
         EwQwbdsh0ioGUxolV+xKz1oLKsZQfRJmbNVhVfb6jk2RjvGe69kgcHh34k6moCz+y5FF
         WjNj+AeEpfYVd7+Cn8hWjmsA8U9d7A7zYfE+owuNB98FQrlKh8t3UPvqB/Zq9/4FKvz4
         xLVo3fR3J5DN3iZCHMZIbi8wOPyxIngI4ULt+PD6kcxwj2fNjJTXxPAsgiShdOiqUDIZ
         QL/A65l8vx4DeoXrUo+dDLNXuGLQ9PY38rT1Q4XO5HPwqyGC+6AIof8cu8KoDhy2rX40
         iN2Q==
X-Gm-Message-State: AOAM533Bu4UO9NcEoK/Puyc4YtNRYsbQE9mrVkG0813IeIOjHWUGdXO4
        ZA7smQ/ToEhxNvo8oySybzjeCQ==
X-Google-Smtp-Source: ABdhPJydIDlN6PNzjowMAxMaAY+IMqwEQg8fRaW9q9JhURzhd1S/bRZJ8vm1K8BgSU8foIkC5WLwiQ==
X-Received: by 2002:a65:5a09:: with SMTP id y9mr20435981pgs.243.1614742278508;
        Tue, 02 Mar 2021 19:31:18 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c4sm16057511pfo.2.2021.03.02.19.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 19:31:17 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/4] Fix number of pins in 'gpio-ranges'
Date:   Wed,  3 Mar 2021 11:31:02 +0800
Message-Id: <20210303033106.549-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fixes are split per SoC to ease the stable kernel pick-up.

Shawn Guo (4):
  arm64: dts: qcom: sdm845: fix number of pins in 'gpio-ranges'
  arm64: dts: qcom: sm8150: fix number of pins in 'gpio-ranges'
  arm64: dts: qcom: sm8250: fix number of pins in 'gpio-ranges'
  arm64: dts: qcom: sm8350: fix number of pins in 'gpio-ranges'

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.17.1

