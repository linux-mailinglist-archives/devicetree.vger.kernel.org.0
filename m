Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1991114819
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 12:05:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726220AbfEFKFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 06:05:47 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:44124 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725856AbfEFKFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 06:05:47 -0400
Received: by mail-pf1-f193.google.com with SMTP id y13so6485793pfm.11
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 03:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PzJC2cGnv4guPyK0TH8rxdCNy91Y2MqZHMVt0Hj1UZg=;
        b=NL1GyKgbriLVakxOq1jPwdxkfiGtpgzEVVNcaaGHD2TRfHVkTxbpCyNV/1ywD9Jw5w
         yfbKzH10+nSa4f1w868NzXQMhVjbjmb9hcWAJs2OIuuLBlApd7pU5kTD2U/5l0YSzSBm
         T2si2DEKppfFDmics//fwthVrvWKMnT78xAG1Wvz/uAfRWN9q7+0TPNvG6ZTgCFIVNae
         Iwc+ttvFGJj/N6XC7LZdcgBXrXblJ+kJdiJ4ZQo3uxX+qz7h956lAdwSK8YtWglHxHVs
         eRA9iqWc8ouN3gnGRhDk9I0VAD/2YnJbslPtEv+zv0seh2Oryf5aakf1VOhaRLdQp6Bf
         /BXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PzJC2cGnv4guPyK0TH8rxdCNy91Y2MqZHMVt0Hj1UZg=;
        b=d2Yrjxm9QYdQK5EckRayte7S1+FtHNpOhxkylFhjT05ybNffT6gS53jiEWUb7BJnm1
         IA/pnV80nFVpM5UDoLtzinoKFVfIkIoj14iLh648oLPxNXhdoNz5vm48mGa3PZO0CeZ6
         RQ1ZjufQ+eONqsdDgJpAEnA3znsJBsMpKrrPLYgjAppxiNkaYHowlfULlCSHCTq8SdUU
         tL8YHeAMiYWvWHNjidRTpyBHVEQcrZqH+3y/fJ6lDOysZiBB4X5C50WoM/Wqkl58XOiy
         JC82r+9g4wwz+llxzBeJvjsO3HPQZSn6mHJ3yNvwBwcjK702i7U6RumYoM3G3on3egOy
         Z9Hw==
X-Gm-Message-State: APjAAAVrq1aKjiek7WzmCLXkJZ3E7ohkKkJ/yaJBI+bF5y7yTXC9qyqg
        4Ckg2ZyAQoys74sm4SDipEGr
X-Google-Smtp-Source: APXvYqz0D0CtKqL3bIVtaE3Zyo+/xiVoozF07VaHqELDfSxUqbd9yW66ihVnrA16JSi02lR98iLN2Q==
X-Received: by 2002:a62:3684:: with SMTP id d126mr31872502pfa.70.1557137146052;
        Mon, 06 May 2019 03:05:46 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
        by smtp.gmail.com with ESMTPSA id c137sm16229653pfb.154.2019.05.06.03.05.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2019 03:05:45 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/3] Add Avenger96 board support
Date:   Mon,  6 May 2019 15:35:31 +0530
Message-Id: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
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

Changes in v2:

As per Alex's review:

* Fixed I2C2 pinctrl node
* Sorted the avenger96 dtb in alphabetical order
* Added device-type property to memory node

Manivannan Sadhasivam (3):
  dt-bindings: arm: stm32: Document Avenger96 devicetree binding
  ARM: dts: stm32mp157: Add missing pinctrl definitions
  ARM: dts: Add Avenger96 devicetree support based on STM32MP157A

 .../devicetree/bindings/arm/stm32/stm32.txt   |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  75 ++++
 arch/arm/boot/dts/stm32mp157a-avenger96.dts   | 321 ++++++++++++++++++
 4 files changed, 403 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-avenger96.dts

-- 
2.17.1

