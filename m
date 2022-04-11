Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1488D4FBB43
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 13:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344148AbiDKLvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 07:51:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345087AbiDKLvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 07:51:44 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A1DB1CF
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:49:29 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id r2so4413264ljd.10
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GbP4wFO6U2YlYAqrT0rofVl8iN2ZLjsgRHVQuuJCNM0=;
        b=ZnCkrpv0JadXbjS4/1B1OSQFtbm5jTQMorYstBasdFn31j3aDXy5V29/zT/3v6FEpi
         LL7qwBnmXOSdQvj9Rtjd1xnvdfrlDqyd7pcG9h9wsHwrAacN4wp3hRrUY4QMm/6qNzPZ
         ecdt0ekMAIP9W69YGTamswZDWICQVZh0lNAdu5xUgMBwHZnvEbirJN0daq9FQTh5A5Ot
         Vv1H3/aTYJEF0cwS6wywjvYgFFELRI7nMR7LcPpqWUgz9LLaDyc9AWO2ASfIacTSES9d
         PB0/7jcIQyLN/M/Yi7IVLJ0soXKpWjRQb4yvbyOYqu/agaRmOlC83sFMF7Q7wgXtPrPW
         9LCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GbP4wFO6U2YlYAqrT0rofVl8iN2ZLjsgRHVQuuJCNM0=;
        b=CCkYo0/6ZHkDK7aEpAdOEeE5v0R+6SX25wqaodVsUQEbolPnrKlERi4yk+prdFRlGc
         ua6SKjhnrEiUjl5g5TmICiZ8QYfCC+FPGs9Yt4IrsyIVnM9ROE9M6rV/yXsaKr6svttR
         FveBL3GB0x3ZHU+k8aqgkwxq2fctkiLE53vTSDicC+5nqm5MzT2dbSiNwGIH+6qb1G91
         Ht2183mQBXapPberfIG3xNTiAtjCeknJdyNr1OxpUcbGj5bLVSHCSA3nDW8g66mtrKFP
         IBYPWEwyZcC/k/qqTONQYQoJ4OqgUs0CDGAKJeZTNK9Pyc95WLe0qmmHxOtlWrffLajf
         RRNQ==
X-Gm-Message-State: AOAM5312m5qia2SNkuJXdyNvKSmJJFxb6mK9rOElsuZijyLJ4WnDSy9E
        ukoKr4YSV/sqAWT/aCOEs45EbQ==
X-Google-Smtp-Source: ABdhPJwEwmHLg4vAhn+GcFJEqZPvSfOxW7lHS38Pvi0ygBv3xF6LWdDupVpcfcmZQ45DQqOgPDsNwQ==
X-Received: by 2002:a2e:a169:0:b0:24a:fed8:d1f4 with SMTP id u9-20020a2ea169000000b0024afed8d1f4mr19890053ljl.348.1649677767652;
        Mon, 11 Apr 2022 04:49:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y21-20020a05651c021500b0024b5d56484dsm587973ljn.83.2022.04.11.04.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 04:49:27 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH 0/4] PCI: qcom: Fix higher MSI vectors handling
Date:   Mon, 11 Apr 2022 14:49:22 +0300
Message-Id: <20220411114926.1975363-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I have replied with my Tested-by to the commit 8ae0117418f3 ("PCI: qcom:
Add support for handling MSIs from 8 endpoints"). However lately I
noticed that during the tests I still had 'pcie_pme=nomsi', so the
device was not forced to use higher MSI vectors.

After removing this option I noticed that hight MSI vectors are not
delivered on tested platforms. After additional research I stumbled upon
a patch in msm-4.14 ([1]), which describes that each group of MSI
vectors is mapped to the separate interrupt. Implement corresponding
mapping.

[1] https://git.codelinaro.org/clo/la/kernel/msm-4.14/-/commit/671a3d5f129f4bfe477152292ada2194c8440d22

Dmitry Baryshkov (4):
  PCI: qcom: Handle MSI IRQs properly
  dt-bindings: pci: qcom: Document additional PCI MSI interrupts
  arm64: dts: qcom: sm8250: remove snps,dw-pcie compatibles
  arm64: dts: qcom: sm8250: provide additional MSI interrupts

 .../devicetree/bindings/pci/qcom,pcie.txt     |  4 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 17 ++++--
 drivers/pci/controller/dwc/pci-dra7xx.c       |  2 +-
 drivers/pci/controller/dwc/pci-exynos.c       |  2 +-
 .../pci/controller/dwc/pcie-designware-host.c | 54 ++++++++++++++-----
 drivers/pci/controller/dwc/pcie-designware.h  |  3 +-
 drivers/pci/controller/dwc/pcie-keembay.c     |  2 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  1 +
 drivers/pci/controller/dwc/pcie-spear13xx.c   |  2 +-
 drivers/pci/controller/dwc/pcie-tegra194.c    |  2 +-
 10 files changed, 65 insertions(+), 24 deletions(-)

-- 
2.35.1

