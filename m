Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4BF036BF7A
	for <lists+devicetree@lfdr.de>; Tue, 27 Apr 2021 08:54:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232855AbhD0Gyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Apr 2021 02:54:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230008AbhD0Gyx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Apr 2021 02:54:53 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 575CDC061574
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 23:54:11 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d124so40672026pfa.13
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 23:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4ErHb2UxiQfgQZ/ewBfhdnjrWohZ6K0IW4TbbehTLjM=;
        b=z8FINm7JzZ7mOIY207onvpiJiRHsqMx3cgxfVTWFDeYAOxZD6NZTiZfNuQix4h8GLq
         qlfQgRxGlV2amtvUxeWhQ0lHKR5URWBq8eqpgm5cyFoEtqf7Nh+rzxnZbDKIZYDSuP66
         CKMf5TD6+OJSY4aNvZZ731quzwXWBRiFM86YtIcUB2e6CkwBrr+oRvBOaMt8vAO8MZji
         xY32Ycz9ab6mEgcPt41aTA9jsCYBLi8BX5ga/iX31JNY+5zsaBKvGji9YyGLS/wLlt7D
         g2l0++gQ4vE6m2CpYIPl8mGdocH7D8hyfXxmvGdmKkix51Dx/LXaFx8mY4oWgm/Z11mg
         zG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4ErHb2UxiQfgQZ/ewBfhdnjrWohZ6K0IW4TbbehTLjM=;
        b=NwNbl0FDvy35GaWpQTbxRhltiwYrUOOhsRaBhLNAO4v4WQGbxfsr0yZQB0+f5taIy2
         yrid8UUaWS6X5PmAP4nLKxmWAcP0ROtgjBLCyPg2akn5pAtAHltv/nNTIVVh1CPJrCLI
         4J9VjiwWb0lYqzVRaebFVhqizzE1tZsItTl5zPin0YJWgw7A70WuOLcGJkK9Vh3GLa8n
         hPI+Zq/lYJ1pBWABZ6wX4xnJ1rjL8rmhTmJJb/Z6ek/dpWeavto6VzKDZjbKxDS+D8f+
         6SPkm+s9aTuXeOQJF1Dtm1xqT1U8W9/mJeE4ox59yYNsPeWs3gTouw9V5le+ac6IQ1t+
         RdNw==
X-Gm-Message-State: AOAM533olBfJ0wrqowEZVC0XdmYgPznCR8hpIL4/op2xVeAaiSCLAdO0
        IJ3/acexag0bqxVw8QqeacW7
X-Google-Smtp-Source: ABdhPJyN/iMyGzYhoKtt2AZ6j9sSZ2wGju5d+9jIOuwLSOVH+gsKreOKWYuwn/wxUXipbt6BkIXA+g==
X-Received: by 2002:a62:2cb:0:b029:259:feaa:75e7 with SMTP id 194-20020a6202cb0000b0290259feaa75e7mr21289983pfc.24.1619506450351;
        Mon, 26 Apr 2021 23:54:10 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6d89:3c72:ece6:56fb:d9ac:583c])
        by smtp.gmail.com with ESMTPSA id x22sm13391986pgx.19.2021.04.26.23.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 23:54:09 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     vkoul@kernel.org, kishon@ti.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add support for PCIe PHY in SDX55
Date:   Tue, 27 Apr 2021 12:23:57 +0530
Message-Id: <20210427065400.18958-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series adds support for PCIe PHY found in Qualcomm SDX55 platform.
The PHY version is v4.20 which has different register offsets compared with
previous v4.0x versions. So separate defines are introducted to handle the
differences.

This series has been tested on Telit FN980 EVB with an out of tree PCIe Endpoint
driver.

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: phy: qcom,qmp: Add binding for SDX55 PCIe PHY
  phy: qcom-qmp: Use phy_status field for the status bit offset
  phy: qcom-qmp: Add support for SDX55 QMP PCIe PHY

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 160 +++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  64 ++++++-
 3 files changed, 224 insertions(+), 2 deletions(-)

-- 
2.25.1

