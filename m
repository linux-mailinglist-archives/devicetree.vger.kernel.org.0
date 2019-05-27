Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E27C92B019
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 10:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726494AbfE0IXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 04:23:06 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33333 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726394AbfE0IXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 04:23:06 -0400
Received: by mail-wm1-f67.google.com with SMTP id v19so5878496wmh.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 01:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M1HoTg11CiJSEjSyfyiy7/iq8y5KaaqCfsxPsdKYjw8=;
        b=SurNPXVNqG3MD6k/IbxKijckX/KQpH0i865vfJvUR4F33jMDcZcJTOP++T+VxU7S72
         +/64GbUB4mjTZSI7lMJLp0vqVF85Km0w9iYYbjYScIT5AVLIuQpRCROcsO1ozXWTI3H4
         V7GxNjJsvsA/UiihdCpizY2dRRgJKkZx4FIw1D8gxkXYqxEFjGHq9mwiFfEWf9z0zmdW
         TfKEmanefRTayv8ppg3yxGppqaU5lxGDmOk+z9g6B4uQYoH83tu554De3JOKH1JxulEq
         68M1PtWdiFDd5pzBe+0qJriwqnTl7KDECPGRABQvDyeS5fYMYrgogepV4K1Ya8yC76u2
         Lsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M1HoTg11CiJSEjSyfyiy7/iq8y5KaaqCfsxPsdKYjw8=;
        b=WArS4GpppMol3gGilzdR6Wpcqpr5kHE5aWc1DRcD2ARaJyRWzl/nwO1cBCPjj/CzR/
         V0r4mjvAlMXqPmWiBNvAJAQsLiVlklCHREUNeV3ypusfggjCH1zVZRooLB8/iul2c4os
         4baH/JMq5yHf3kRCuQ2XIji5g1oNZf561+M9p9Cj6WjTg/qagMQRCjaQGIxBM1Kb3V+N
         7DsRJV111GIjetvdQwAcDP3wH1jRiIJnj8TkUNli4tJdhZK9m/yA7DEZvtvc7usLVRyH
         dCyNGvqsJif3S6FuxlVkSCHjHno1PR7kn3u+DyfHRFLGAMrjZ0G2RKhpJiuNTEVR/FJ3
         xhUQ==
X-Gm-Message-State: APjAAAX6cDphu5mkoid2X5ZyTI+dyW4omqBl+DrEasPG1hYDM4K16WMX
        PQK3NrKUrOvA9800YSq8+tcVsg==
X-Google-Smtp-Source: APXvYqz5G9osnUZUYi4yhJKpYIwouvHJ855I3B3nClb2YmknYiniuVlhjaFoR9HDfUiAM1uTJoNDBQ==
X-Received: by 2002:a05:600c:1109:: with SMTP id b9mr4076225wma.107.1558945383865;
        Mon, 27 May 2019 01:23:03 -0700 (PDT)
Received: from localhost.localdomain (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
        by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 May 2019 01:23:03 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        David Lechner <david@lechnology.com>,
        Adam Ford <aford173@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [RESEND PATCH v5 0/5] ARM: da850: enable cpufreq in DT mode
Date:   Mon, 27 May 2019 10:22:54 +0200
Message-Id: <20190527082259.29237-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Note: resending rebased on top of v5.2-rc2

===

This series adds cpufreq-dt operating points for da850 boards supported
with device tree (da850-lcdk, da850-lego-ev3, da850-evm).

Last patch enables CPUFREQ_DT in davinci_all_defconfig.

v1 -> v2:
- use the VDCDC3_1.2V regulator as cpu-supply on da850-evm

v2 -> v3:
- drop patch 1, as the revision tag is in fact correctly passed to the kernel
  by u-boot
- only enable the 375 operating point for da850-evm as this is the standard
  frequency for this board

v3 -> v4:
- split the first patch into three separate changesets: one adding the
  operating points to the main dtsi and two enabling cpufreq on da850-lego-ev3
  and da850-lcdk
- remove the operating point not mentioned in the datasheet (415 MHz)
- fix commit message in patch 4/5

v4 -> v5:
- only enable a single OPP for da850-lcdk due to the problem with the OHCI
  controller becoming unresponsive after cpufreq transitions
- fix the name of the pmic on da850-evm

Bartosz Golaszewski (1):
  ARM: dts: da850-evm: enable cpufreq

David Lechner (4):
  ARM: dts: da850: add cpu node and operating points to DT
  ARM: dts: da850-lego-ev3: enable cpufreq
  ARM: dts: da850-lcdk: enable cpufreq
  ARM: davinci_all_defconfig: Enable CPUFREQ_DT

 arch/arm/boot/dts/da850-evm.dts        | 13 +++++++
 arch/arm/boot/dts/da850-lcdk.dts       | 36 +++++++++++++++++++
 arch/arm/boot/dts/da850-lego-ev3.dts   | 30 ++++++++++++++++
 arch/arm/boot/dts/da850.dtsi           | 50 ++++++++++++++++++++++++++
 arch/arm/configs/davinci_all_defconfig |  1 +
 5 files changed, 130 insertions(+)

-- 
2.21.0

