Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 283C25EC18
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726656AbfGCTCp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:02:45 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:44059 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726430AbfGCTCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 15:02:45 -0400
Received: by mail-pf1-f196.google.com with SMTP id t16so1708745pfe.11
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 12:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=aooip+kWJxLFJyvTQdfnMiqXuVARSg/BQD76gFdkiao=;
        b=wx/uWhK5+yfTepystjQ2YkC6otrYPFbC/x/pda4pFsEQBh3iaTxVjp86GM7kjW6z/4
         bNhTE1Pm8RdGVPFzJo+a3a7IExJHK3dr0OWCIPw/27PzoepOl32N5zAwpk3fR+j2VUhL
         DjZGMUIj/PWPkvxTJm8cYVmnf1dX+JGNJawAv9UyFLo3mUF8SaWty+r2YGkGODd4MZBR
         hyh9XvCnVMgIbA5C1ty35B8i7RdYOHI25fE3+wE3o93BXESmlPkIdKowVi5zkzKqG3Lx
         tKt+2v3sPvxFOeLSBnCOo2Tp5GM2fMk6yZKs7vxtyOxejk7sXGVOH/U68GQSXhen2wrl
         tI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aooip+kWJxLFJyvTQdfnMiqXuVARSg/BQD76gFdkiao=;
        b=UFr2GF8js50kzLexVdsdrXSxom2H2sXAE/YokAyoJiYusftWtlui9MN0cVgxWURRq1
         VKjzOL5X+4R+k0m6/w3tNmdhdoasnI87WG1IBG0Cntp7wkKPGkGSJV/PUD+nYrYtZ0Qu
         z2WIq/uWIbFTzOANxj0dvPag35zan6k07g+Uy9PSL+1K9zp6hy7UUx2ab8+PBeugebFe
         AeK1QQrOw7FIdPFzyFKl57DmFjmPIJj2KlqzROxtoEILIRxeHQl2Q4wCVhAeeXGmuiqa
         jqRupgsZSGchqpRwQR/JdUd6DsRLrB6dwinCPoQNKtJYxzBw4yQ/9u6//A3pazn1nwc0
         u/0A==
X-Gm-Message-State: APjAAAV5Uc5OaKYXUjpE7j35d9pg+anozQ+u///RY1wPL1oR5/1JWSx7
        DFiEmnjve0adZ0YJIOfJUrbi
X-Google-Smtp-Source: APXvYqxqgH24xGX/KDx7bfh7omWTueZWvVekD9k694CbKHhIt6GaoeEScEcolwsrGHYfYSfUKvrc4A==
X-Received: by 2002:a63:5d45:: with SMTP id o5mr39174199pgm.40.1562180564114;
        Wed, 03 Jul 2019 12:02:44 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:117:d72f:1d34:d0bb:bb4e:3065])
        by smtp.gmail.com with ESMTPSA id j14sm3631503pfn.120.2019.07.03.12.02.37
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 03 Jul 2019 12:02:42 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add IMX290 CMOS image sensor support
Date:   Thu,  4 Jul 2019 00:32:27 +0530
Message-Id: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds support for IMX290 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. Also, the sensor is
capable of outputting frames in following 3 interfaces:

* CMOS logic parallel SDR output
* Low voltage LVDS serial DDR output
* CSI-2 serial data output

But the current driver only supports CSI-2 output available from 4 lanes.
In the case of sensor resolution, driver only supports 1920x1080 and
1280x720 at mid data rate of 445.5 Mpbs.

The driver has been validated using Framos IMX290 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
  media: i2c: Add IMX290 CMOS image sensor driver
  MAINTAINERS: Add entry for IMX290 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx290.txt  |  51 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx290.c                    | 845 ++++++++++++++++++
 5 files changed, 916 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
 create mode 100644 drivers/media/i2c/imx290.c

-- 
2.17.1

