Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6251B12721
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 07:31:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbfECFbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 01:31:37 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:42560 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725765AbfECFbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 01:31:37 -0400
Received: by mail-pg1-f193.google.com with SMTP id p6so2164071pgh.9
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 22:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vbA+h1SWOeC+A9lxbgQ9nyiTDR7RZSnCD5SEiXc6Chc=;
        b=Lnij2FPqvmSvFcPoNxUkNY/JS83WNPIYA/lZMituG08241YitIDNyfyYAsIOyD2Vh7
         mPJcAWqwUWvDcuiJDnes/xhUyrREUUDjtGk72y8FQISb0WqkF/rLk2Y5TsKzoEM1vnpc
         t78JV1qjKZGg6Bg4HyO2Q+i76zrgSDWvXioq5M5V33GczeXpvgZQjQFnqx3Mlct7t1Tn
         CpexQ+3yESDh8pR647ZS71i1ozQR7ZdPGPXXXGF6WoreVf5pNozrPzsHYgBwzR9Vd17M
         e4+0EOPKodzzCLmTEltxUcckAVPtISrrtbLDxDNUCw3BTjZTOFiqLj7nJUFHyOeL/Ezt
         xztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vbA+h1SWOeC+A9lxbgQ9nyiTDR7RZSnCD5SEiXc6Chc=;
        b=o5/BPqzebt/ZYMlJAe9qKFA97norf7nxWhWRtjSeIX3+Tq1N3iY+WFpCDizBOnPM9U
         jhU4/zKrcnDZd8yptEUZp1rVwiouifH3yzAixDDl/fAQdbUFICrcXlzGyRgMT7ZYww2X
         FBFR5XRgoJuSM4IEvAFMHyyoGaZ6FNs0/EPkh1PDvOvycLZ9fUgUOYcogeDO0jNR99OM
         4LcXp8HrM+g1YflDvP+AEMIraOZzwa7H9dSRwmNXoLk5YjKMaJcLcWtS2QLhAwDqOqRd
         7eB3Hozz5dHpnVVaOTwon8TfK/9oaPlPqWvywIHW8e2BViPYtY0Bt10SdI4sEGTSB2aA
         tXQA==
X-Gm-Message-State: APjAAAXXTQi8pF1ycjh1pFy8pLKGCMR3P4+lpe97j8HonZ6Dx1jwVlxM
        fbuZDEWJFp04+tOc0zRgiMMy
X-Google-Smtp-Source: APXvYqwdnJ1wGysGVAJNxsji+b4A9Fu8qkeqQd4DxFfJGQBIFlAwwOQZoni5fRsBgxCIpFPuLIDZLg==
X-Received: by 2002:a65:5246:: with SMTP id q6mr8137656pgp.296.1556861496796;
        Thu, 02 May 2019 22:31:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72c7:3835:31df:f367:f70b:ed86])
        by smtp.gmail.com with ESMTPSA id l15sm1152226pgb.71.2019.05.02.22.31.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 22:31:36 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add Avenger96 board support
Date:   Fri,  3 May 2019 11:01:20 +0530
Message-Id: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds Avenger96 board support. This board is one of the
Consumer Edition boards of the 96Boards family from Arrow Electronics
featuring STM32MP157A MPU and has the following features:
    
SoC: STM32MP157AAC
PMIC: STPMIC1A
RAM: 1024 Mbyte @ 533MHz
Storage: eMMC v4.51: 8 Gbyte
         microSD Socket: UHS-1 v3.01
Ethernet Port: 10/100/1000 Mbit/s, IEEE 802.3 Compliant
Wireless: WiFi 5 GHz & 2.4GHz IEEE 802.11a/b/g/n/ac
          Bluetooth®v4.2 (BR/EDR/BLE)
USB: 2x Type A (USB 2.0) Host and 1x Micro B (USB 2.0) OTG
Display: HDMI: WXGA (1366x768)@ 60 fps, HDMI 1.4
LED: 4x User LED, 1x WiFi LED, 1x BT LED

More information about this board can be found in 96Boards website:
https://www.96boards.org/product/avenger96/

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: arm: stm32: Document Avenger96 devicetree binding
  ARM: dts: stm32mp157: Add missing pinctrl definitions
  ARM: dts: Add Avenger96 devicetree support based on STM32MP157A

 .../devicetree/bindings/arm/stm32/stm32.txt   |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  62 ++++
 arch/arm/boot/dts/stm32mp157a-avenger96.dts   | 320 ++++++++++++++++++
 4 files changed, 389 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-avenger96.dts

-- 
2.17.1

