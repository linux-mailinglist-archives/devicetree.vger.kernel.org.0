Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20C6283248
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:09:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729506AbfHFNJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:09:51 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:38488 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727259AbfHFNJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:09:51 -0400
Received: by mail-pf1-f195.google.com with SMTP id y15so41504492pfn.5
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=N8P6BFsOop1K4eWiuZrjN6EJTn34oYRRKch8Go11cDo=;
        b=RGwMVnpzulBrHLjEt9tPbu30lO62P4BcdDb4BrorNxVv35JMEiyj1sYFXsulCS11wn
         wh9a3MUDL1nrPNHp2L8+Ap8UGJ+TIHjUuQQPlCfYP/k3lppoAEuA/M2W1DyCTGhHbYya
         RBVQz7S+zXj0cFqcEC9C3vK7rk+pyl5Bp4VTF7SU2F5x56UdDHWUcAhXR/2jE/q/iBVf
         eOaR/HdFKRT8gtJj8mJhgu5Uuee8Np2kXwt/TeGU57t6LnR+Joy10dK7RtVm0uJUG7kl
         z1N4VnY9Ik6DtLO9AzXz9vjhuyzpCPcu8X8rUnMOIhFIh6dNPZNcrgmMpH/LMc+TZWps
         Xi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=N8P6BFsOop1K4eWiuZrjN6EJTn34oYRRKch8Go11cDo=;
        b=ECFsqEbnpwqvOFMdgwswXnoWjxieSoECXH/t+ZjllmVWQG6S2T8/C4wYRKDSbqHP2A
         odJ6egMs9fyABMV3Weg4eJC6PK+9N7oJ0gR2pZWGFVa9IWXRZoQB7/V+x87G4j6CGddN
         Wd6sNQNAo5UdBQ6zDu8y4NbwPGAjHR9KQWKmC8X6U1jMKM28JGMn39YenLfMZ8ef760u
         Q87+1S6f7/H6MfwIkh8zW6lmmXUbve3SBcFcjI5RCpi70p8jv3YCy38zKOfnAXINmSgt
         NZUpPBQ14ErpOpXUDCwBMEhtetHDEu+RPTPPCfkcWQ9s1LBZ5Gmajl8am6cUQ2OeI0Fn
         1NEg==
X-Gm-Message-State: APjAAAUu59iF1W5qE4BORUMIjBB37ik3HARRdSwbCG3y9VXQaquyC2Qf
        8yFhhoO2piJe3Qp2CmECN0RM
X-Google-Smtp-Source: APXvYqypPfh5IkZ43BoV4ds6TppwLwnLqunFBQ3Z44724sReR5l6o8QdGcy0mOfyeaQtjvbkuF9hhg==
X-Received: by 2002:a63:c64b:: with SMTP id x11mr2960012pgg.319.1565096990514;
        Tue, 06 Aug 2019 06:09:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7180:928a:153d:caa0:477e:f9fd])
        by smtp.gmail.com with ESMTPSA id v8sm73715371pgs.82.2019.08.06.06.09.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:09:49 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/3] Add IMX290 CMOS image sensor support
Date:   Tue,  6 Aug 2019 18:39:35 +0530
Message-Id: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
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

Changes in v2:

* Added Reviewed-by tag from Rob for bindings patch

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

