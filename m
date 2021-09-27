Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9929F418F46
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 08:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233077AbhI0GuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 02:50:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233058AbhI0GuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 02:50:24 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3503C061575
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 23:48:46 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id d13-20020a17090ad3cd00b0019e746f7bd4so9376465pjw.0
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 23:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=JGgK1pP0+awojk4y6sIFF5gFJNXp8xBI/eToel7KJRI=;
        b=D03xhEMQoE8HCYK3EP8igCx+K+PxXLn2YcVBNqcaYPIJkVlwe6lPvral43lBANxnq7
         429TOCF5KNb1VmC/zwx7295eDjjPG1v2lKJnnTziuRVrvrI9DWBFRsyIE+rswctqbMbu
         A3H8urXOhWwKzPRmkMOID2ojKlQOXhlJo9/35mRM0b3VXwnIj/Gc6yQbLgB44DQAX89f
         uIPH0Hs8dZqDQqiM+UwHM4T8Gi9+IrZPgUOyJQKPcfEmYFslJpptCMF8xX5QNb6i/LfN
         HcPEOOTKFcmicZJ+I8Lw7s4hI5rO1UidUT2O/NkQQtEgr4JE8nbS2I3RC/zK/ZrSde9l
         PXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JGgK1pP0+awojk4y6sIFF5gFJNXp8xBI/eToel7KJRI=;
        b=mFzJJFHPfbXVRwDzL6us0YJ44MKO3vJ0Mz6iWWdZsvrjVojDBdz5d7526AvlGwUEsX
         8JTc9e+i0Q1Q3iLdGzYLqd8NQfcJJIRMeaWzdhNr9uUMCXcWdbnKOjOtjm6sgjDYmyrN
         tZVTLqYWXBSEZilCqd6vlLqpUOdQFCQBZTqof0wX1GQqdueom4w1QG7fyLKinpxtdB4X
         AOqHljw/uq3gosLGYU4FV4sUtkgprq0c8v5aCyWdbmFCBYyh0O2MgI/CV/9HW0f1IYhD
         hVjHtoFu0S7SP2y8T5GzKRTYUpg/V1O8/13pmGbZDmuflPvXyD8xxPXN4A43EyY9XVFk
         6iSg==
X-Gm-Message-State: AOAM5329clhDdAPrT0/bJI6aF7qJI/Ve+xRVAS9jP85Ijegw8F7N/LX2
        sHCJeHczRmS//cTEGj/1CstJWQ==
X-Google-Smtp-Source: ABdhPJx1HcMXkW5t/LysfiEuICq6FfiPRjiYjTxRvAWl/yGWqirR5BPbcfMGwyg6TftdVkNLfFAA4Q==
X-Received: by 2002:a17:90b:4d08:: with SMTP id mw8mr17640366pjb.97.1632725326394;
        Sun, 26 Sep 2021 23:48:46 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id o16sm17169910pgv.29.2021.09.26.23.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Sep 2021 23:48:45 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add QCM2290 USB3 PHY support
Date:   Mon, 27 Sep 2021 14:48:27 +0800
Message-Id: <20210927064829.5752-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds support for USB3 PHY found on QCM2290 SoC.

Shawn Guo (2):
  dt-bindings: phy: qcom,qmp: Add QCM2290 USB3 PHY
  phy: qcom-qmp: Add QCM2290 USB3 PHY support

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  27 ++++
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 143 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
 3 files changed, 172 insertions(+)

-- 
2.17.1

