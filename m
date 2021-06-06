Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 411CE39D141
	for <lists+devicetree@lfdr.de>; Sun,  6 Jun 2021 22:17:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230212AbhFFUTF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Jun 2021 16:19:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbhFFUTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Jun 2021 16:19:03 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4303C061766
        for <devicetree@vger.kernel.org>; Sun,  6 Jun 2021 13:16:57 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id k7so22985772ejv.12
        for <devicetree@vger.kernel.org>; Sun, 06 Jun 2021 13:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F1ajWql4CT7GltN44BZTpVtySeGp7feO6w70KJ9rPkg=;
        b=RSQniDAoVRqMoghYU76L8KvO+kpaBmuJ0IyLxNOcC05uulL0ykNFvwFpE62Ajcesu1
         ++8fleIvOHUyZlSG4b2pztMMTgPaKDQ9KUDKn2Ai6SIE88EuuzQjb0EZZfpgzeBoBxMV
         B6YU6gcyNmHWZr6Rxc1uHo2GY/7XM3kpnHtKJpedLupvioSEjAHflveOJUxh864EYPIA
         naFkfUAVP73xlrRiZMjtuDIv8TxJaXFlCU7iHChlRckJHsb67ZJKw1LGgi1FpgKmy4e4
         accDbyKRa+Vl8Z6beJPTeMcoWOvcts/dzcPokTZPqz39np//qanftk33WhWrP0VsLico
         Q4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F1ajWql4CT7GltN44BZTpVtySeGp7feO6w70KJ9rPkg=;
        b=ZllkKRd5fHM6/hciwATlZ4acllpLRl+3oOVUpvY5+ebEQUfdr2HywI8WxoJbrXxz2I
         B2XXWNTsIyOi8ypq0FGOzXui53H3yDmPdPyt4xj81fPatdkBf7sKNoQ3L1HMwlvxoYvi
         +9bjJlPMjCevcCkJjyAZDxHG0ablee22ujUERbFjT9AxJN2U0L0Qi6iGfYW4P4liFKCJ
         MuxWRWxnqbmTB0FFL3KkQMl8uk11eCV0sOPL4wsDeFFspcQZFM2coViBt0Z2dD1/vCt6
         m/dPFTfpGtBak/+VkhSiytc7gNlQctUq/FAbhd+7xthog7/iV9DLOMqNROzQtq+ru3xY
         jTyA==
X-Gm-Message-State: AOAM533NGhi3oDSV0PNfFbqgz9IumI7LySWmr9xLAfp2hicPtgFBIJJX
        BYeyT4YZIgYpN6BRuyO7lzei3w==
X-Google-Smtp-Source: ABdhPJxq0IZ7g1T5qzpJ2e+h4gV5GQ4EpZL7g50B0RLHsXDkE7grAADFdIhNZQAXK1XTh+zRQwC/pQ==
X-Received: by 2002:a17:907:9721:: with SMTP id jg33mr5128411ejc.64.1623010616286;
        Sun, 06 Jun 2021 13:16:56 -0700 (PDT)
Received: from PackardBell (192038129059.mbb.telenor.dk. [192.38.129.59])
        by smtp.googlemail.com with ESMTPSA id v8sm2211623edc.59.2021.06.06.13.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 13:16:55 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id b1b38337;
        Sun, 6 Jun 2021 20:16:53 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        Bartosz Dudziak <bartosz.dudziak@snejp.pl>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] arm: qcom: Add SMP support for MSM8226
Date:   Sun,  6 Jun 2021 22:16:10 +0200
Message-Id: <20210606201612.100752-1-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SMP support for a Cortex-A7 CPU in Qualcomm MSM8226 SoC.

Changes in v2:
  - Patches are now MSM8226 SoC specific
  - Properly unmap IO memory with iounmap() after using of_iomap() 

Bartosz Dudziak (2):
  dt-bindings: arm: Add SMP enable-method for MSM8226
  arm: qcom: Add SMP support for MSM8226

 .../devicetree/bindings/arm/cpus.yaml         |  3 +-
 arch/arm/mach-qcom/platsmp.c                  | 71 +++++++++++++++++++
 2 files changed, 73 insertions(+), 1 deletion(-)

-- 
2.25.1

