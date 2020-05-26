Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9824E1DADE7
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 10:49:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726691AbgETItF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 May 2020 04:49:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726546AbgETItF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 May 2020 04:49:05 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EEB7C05BD43
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 01:49:05 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id b190so1225692pfg.6
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 01:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mUXoHCk9YjTWtIe6lbZRmuzsCBfcD819p2whO3KZzec=;
        b=V5P8TwdKayVbTIZwm1h3TmhwoplB3ufnXPirbcvqxIZEaxZVWo0JRlVQXvn8r/K9gs
         4RCoyH9TJpBmE8kcM8SF1Pri5yYNd/oHodStSUbHGHkVSz6HoibzfFJ1V8C6qAr2rdlA
         gF1hsua1hK1WBDyQjqDBj3rPex1e8ZH7Wtt1XGHM76n13q9hSyWaiCsdTMRjFGTIGeOL
         q6bTFWs4FODgiQLavsdRlt2teB+gCiMl+V58t7MsCN2HkyJMn17q9jhBEgB/BZHNsDed
         wN5elR8SYIg3OOyqNlmAHfTXdA8I6mGY0s+tSsP0WDOHVScKLX87TVdsjjA82uKJqzrQ
         ItTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mUXoHCk9YjTWtIe6lbZRmuzsCBfcD819p2whO3KZzec=;
        b=hTb91I5lBMCYc2FgZnd5XxrPhXOAwADDuDu9bNM22Lj0uS2QglxbGU2pcPL10juiQx
         9L8ZCgF6yiDnLXwh7XW5/v7ECfRW0erjQjsd9IMBa3g6jsGd/IrGpIorJDfb//pVJC6o
         nRXWPPa7pN3dMunx/FNDRImh/7OjJsajTemzgU2v2O7wmHY67g5YpUf1w19ilUlUJJMp
         wgPpLr4GrVerw2wKZCQpEqaY1agm2mBAgJznEM1/oq0IWqrsvAnNVfLUoRMXVwOkSXQz
         vomb4zoVmre+BkTe6gu/b1+47FoH6ygtYBuGxRBOpfsG7J2TR0OAp+wRounxTbkgeR+c
         aSHA==
X-Gm-Message-State: AOAM533VEQLOQfmvQCfP4fagF7ZY+OjufTx+NmUzt8tThk+4o/GUpp6O
        9B6aWeauCjN6qrEXH3xbHWoC
X-Google-Smtp-Source: ABdhPJyq90ZITiiPWo8tMvFxVbmDXvkTW65XmUrhBPoNPkXK2t+uMDsUzjGi4u3kCRRn4t6FSPQIhQ==
X-Received: by 2002:aa7:9e92:: with SMTP id p18mr3257038pfq.195.1589964544634;
        Wed, 20 May 2020 01:49:04 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:91e:dd0a:7c30:1f7e:ebdb:aa2a])
        by smtp.gmail.com with ESMTPSA id a5sm1629332pfk.210.2020.05.20.01.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 01:49:03 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     jassisinghbrar@gmail.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/3] Add Qualcomm IPCC driver support
Date:   Wed, 20 May 2020 14:18:51 +0530
Message-Id: <20200520084854.19729-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.26.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds mailbox driver support for Qualcomm Inter Processor
Communications Controller (IPCC) block found in MSM chipsets. This block
is used to route interrupts between modems, DSPs and APSS (Application
Processor Subsystem).

The driver is modeled as a mailbox+irqchip driver. The irqchip part helps
in receiving the interrupts from the IPCC clients such as modems, DSPs,
PCI-E etc... and forwards them to respective entities in APSS.
    
On the other hand, the mailbox part is used to send interrupts to the IPCC
clients from the entities of APSS.

This series is tested on SM8250-MTP board.

Thanks,
Mani

Changes in v3:

* Added Bjorn's review tags
* Few changes to DT binding as suggested by Rob

Changes in v2:

* Moved from soc/ to mailbox/
* Switched to static mbox channels
* Some misc cleanups

Manivannan Sadhasivam (3):
  dt-bindings: mailbox: Add devicetree binding for Qcom IPCC
  mailbox: Add support for Qualcomm IPCC
  MAINTAINERS: Add entry for Qualcomm IPCC driver

 .../bindings/mailbox/qcom-ipcc.yaml           |  80 +++++
 MAINTAINERS                                   |   8 +
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/qcom-ipcc.c                   | 286 ++++++++++++++++++
 include/dt-bindings/mailbox/qcom-ipcc.h       |  33 ++
 6 files changed, 419 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
 create mode 100644 drivers/mailbox/qcom-ipcc.c
 create mode 100644 include/dt-bindings/mailbox/qcom-ipcc.h

-- 
2.26.GIT

