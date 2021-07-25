Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05BBE3D4B40
	for <lists+devicetree@lfdr.de>; Sun, 25 Jul 2021 06:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYDVz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jul 2021 23:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbhGYDVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jul 2021 23:21:55 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEC9EC061757
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 21:02:25 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id t1-20020a4a54010000b02902638ef0f883so1411813ooa.11
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 21:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TSKQIS1eXHkXAAiSsxbJmy25M4G9M0+9BKL+NlEs6yQ=;
        b=lOGiCRJZFY30dtNS9yNCiGC76kgyvvX87Vw5dUDuXbXEGqlhJiOC5fYFX5QMxV0YLR
         Hn6ZNfB8hRF5ePLZc3lueHbwVAT19MKi1Hxhkv0guSLTa17V9t48BwDoKuIXuYwkOBN1
         k8DzhYI1YnUW8LbXV17+be/uzL0mKLF6SID9kr3G4o6PjVNCLOC0ag2yRvcArbxFaIwS
         BLh1YE2LvBs/Pi7R9cbWz9zFero8TsPYqEaUYUvT9XPbuhe7TmIrrIiAoG0MRFAuI8FH
         kBktGgfmJpcERrk/Gaqz/IpsuY+78jZzhNnS4ZGtMFLxve9ZPpF0HXG0lRRG/vp9R7LO
         s96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TSKQIS1eXHkXAAiSsxbJmy25M4G9M0+9BKL+NlEs6yQ=;
        b=V+SUzZgTdo69PhIqhs6HCkZQ9ECn3boOH5H4E/nEYsSKTrY/C5HQrJ/PcCw6ODd9N0
         nahFGV1fSwL0fx+LwIzVNU3Ce2V8LogXKoQEL71D4Zo06vvDKktOaOGWiLZAXj2fkgmS
         seTe8SXPEIxcWaXpf/4EWwjWcrWsLqa7dcI30BBbq433RKq8kr7vEOiXqBsvfhazFiRa
         74wcqjeLqQe823LIDJk2VpjbmV0phDRSprSeWJ3tCW/k/m0APG4QYvTB0vvIOkyZvSxw
         S50yiBkyhdPFYr9itGUmdv59STeLQ1NranZIag/fypKHZw/wEZkxIEcyUvwt3o4mXdpk
         0izA==
X-Gm-Message-State: AOAM532KOgHtcTxrZdHNkORItB6mfDwrGOGXjlnBHKHE4elvvFcQvruO
        rBRO11T1lNmRsN40NLL+2218vw==
X-Google-Smtp-Source: ABdhPJx2HUDLQrOLavGF/TIF+2KoSRtMvzbA6aYnA7qBQVSfe8FqWCX6VIgTP2MBPBOZBPTxPMKqbw==
X-Received: by 2002:a4a:4fca:: with SMTP id c193mr6882870oob.33.1627185745129;
        Sat, 24 Jul 2021 21:02:25 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q20sm872910otv.50.2021.07.24.21.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jul 2021 21:02:24 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] PCI: qcom: Add sc8180x support
Date:   Sat, 24 Jul 2021 21:00:35 -0700
Message-Id: <20210725040038.3966348-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SC8180x (8cx) platform is used primarily in Windows laptops, the platform
comes with 4 PCIe controllers so far seen being used for NVME storage and SDX55
5G modem. With the PHY already landed in the QMP driver, this adds the
controller support.

Bjorn Andersson (3):
  PCI: qcom: Introduce enable/disable resource ops
  PCI: qcom: Split init and enable for 1.9.0 and 2.7.0
  PCI: qcom: Add sc8180x compatible

 .../devicetree/bindings/pci/qcom,pcie.txt     |  5 +-
 drivers/pci/controller/dwc/pcie-qcom.c        | 74 +++++++++++++++----
 2 files changed, 62 insertions(+), 17 deletions(-)

-- 
2.29.2

