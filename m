Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E975308B6
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 08:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726668AbfEaGjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 02:39:14 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:44083 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726634AbfEaGjO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 02:39:14 -0400
Received: by mail-pg1-f194.google.com with SMTP id n2so3458402pgp.11
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 23:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SXBhhNmLSZ7SfSIDocpcP+tG+VZK/npThfwPX+RXL68=;
        b=DPebLeDbFNVD5P67tqP0E6NbXfo0GqBg57A5cpk0ASEU2EHf6awCPba6G4D+1PwlRj
         YhsRX/gA0mlYVXED8lkdcJV8bWS2fB9I4CqPcbawD/e2P+1RPta6Kb/8y4DQXjWw9gm0
         +H3zmCDCa3KW537AnnuScG0NEae48ULqRfGYODDp2u4Pv7GdHb+4t17s+Dqj77brlAs5
         JDJRlvf4tsykSLgQU84EyPwqQ6OgsG4flhnrJVBbMlBoDARGLJqIHwj5DbmUPcpAYjKg
         AVCnE0ukyuWLUZelupQ7fL261pnfoDdFWrj6/KLqGfTT8PkZjxmKb5c9viU0i+Qn/TMl
         O4ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SXBhhNmLSZ7SfSIDocpcP+tG+VZK/npThfwPX+RXL68=;
        b=OtrSPQXPHK0p8CignbHoyknAOPPM/APGhbVDGIvhf/2Ud0Oqvjct14Qkq/0QWv6Ua0
         MtoUMhI1ezdA6WNQe6xGpJ06NNCNHAteJLvLfVfQbpTr9tfavRJcdOFcFrk85QXawoMX
         tUfMLz0Bp9jPMJXI7YxauKFfp8EV2fUs4bN+MFmiDV2rcMPtJ4quQ2gLbbawVSAbhCMd
         AxHRkJu+WCc2dF+susBUXnn+f3A7cayWX/WEmqnHHPPBq8hDIsXiBZfuPxF+SD4PKnnQ
         M58WRjuopJEON/MxGZebEiL67OkWkRMMX2Pr9IoVdKVP3Zk8lL5E7FBofLp2URF64316
         mfQQ==
X-Gm-Message-State: APjAAAV9JcUZN/e49pDfU0e8kNhzbCRs/gvkfkexYPJLRiBg6bAMc7Rs
        mMdbZ6YoP1it8kw8P7Lukm+4
X-Google-Smtp-Source: APXvYqxSXSKcfJHZzFiDp9JVK/XspKz74WHAtcBbnHiEhOKXCoHZ3JHNNC2pEpI0Wj0IJGDLpMcR/g==
X-Received: by 2002:a63:ff52:: with SMTP id s18mr3535804pgk.187.1559284753339;
        Thu, 30 May 2019 23:39:13 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
        by smtp.gmail.com with ESMTPSA id y12sm4644158pgp.63.2019.05.30.23.39.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 23:39:12 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/4] Add Avenger96 board support
Date:   Fri, 31 May 2019 12:08:45 +0530
Message-Id: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
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

Changes in v3:

* Converted STM32 platform bindings to DT schema

Changes in v2:

As per Alex's review:

* Fixed I2C2 pinctrl node
* Sorted the avenger96 dtb in alphabetical order
* Added device-type property to memory node

Manivannan Sadhasivam (4):
  ARM: dts: stm32mp157: Add missing pinctrl definitions
  dt-bindings: arm: stm32: Convert STM32 SoC bindings to DT schema
  dt-bindings: arm: stm32: Document Avenger96 devicetree binding
  ARM: dts: Add Avenger96 devicetree support based on STM32MP157A

 .../devicetree/bindings/arm/stm32/stm32.yaml  |  31 ++
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  75 ++++
 arch/arm/boot/dts/stm32mp157a-avenger96.dts   | 321 ++++++++++++++++++
 4 files changed, 428 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml
 create mode 100644 arch/arm/boot/dts/stm32mp157a-avenger96.dts

-- 
2.17.1

