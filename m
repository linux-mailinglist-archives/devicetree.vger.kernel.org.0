Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F624E9972
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 10:50:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726538AbfJ3JuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 05:50:16 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:46336 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726530AbfJ3JuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 05:50:16 -0400
Received: by mail-pl1-f196.google.com with SMTP id q21so739378plr.13
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 02:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=dxdq8UVKYIoWezTIVtNtXNzC1j7K03aSUVKZV0KfYRw=;
        b=YnXmlhvmJfVKB0QmBFuEk1Dm6DSXTswd+nqgqBYqzmGyWTUPCNZxiLaZ6OveR3YPSE
         IW2bdz58hEfhH1XY8lrAtgzQa2fz9t7PRS1LVa8dzzm95V2ktPvt4+u7Zsd8pQHkGerw
         6Lx+ce3tDBWdv3koWwURnOQutmFyd+s9QK1OsuJaiTcO7x3Q4ZII363HZpWB2+/O30mM
         SwYaPJ53x/pu5UyACmPBtEsATFQ6TYlmatUqqXiEIK0VOFLxKD4M+O8AjMSnD0+cq/nF
         o33Vv7TjeO+rV/OuPdcUyYEgIuw33LFtFrUkyk6bqnwzC30I3hcbeeOjPBA4wQCfXtGU
         Ch2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dxdq8UVKYIoWezTIVtNtXNzC1j7K03aSUVKZV0KfYRw=;
        b=fb3dLj8g8Tp4KRtUjH3T99zbh/7xtToXxDDTCw4stBp3jyGXwAJalX7R1Mx8nQZS54
         qFGZuKS1lH0X47jnf9OFeJ1p+fJDevi2X4Id85+V7U8vFfK3GHUZvTBxTyfyknOi4BEU
         YCDtQU7lO/SJqpteZlyeLJkIgGlCtVwrVWvhQ9fZLu8Ikn8TmKOKo81HIFwCtjsRPpae
         KyLqrrJgYkFfgDhE5qIgf8sYtUPrcu7nAYkXzu40AUdxIFCZPg8eza9FSrMSnCt2O/1X
         wdhIf4zQ3aK66jkK9O/3ejftRNNyyAEWWxPV+dZufUjrhzZXp3seeUJrHw82X0jQNGrj
         JAdg==
X-Gm-Message-State: APjAAAVcKmC6saLnutBft+2P7sajusAlShgCwgLcyNGSGdtiwc7pANsF
        WqgvExQ9z5LaE7uI9qWkjRIpfj5nKA==
X-Google-Smtp-Source: APXvYqw4kJLQKZSWO1XO57Sx5aIe0oheAiqfVnYm2K1VgupBhhuZBmqESudgkztCyR7WtYQb6nqZTQ==
X-Received: by 2002:a17:902:8d86:: with SMTP id v6mr3621909plo.79.1572429015669;
        Wed, 30 Oct 2019 02:50:15 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
        by smtp.gmail.com with ESMTPSA id n23sm2301329pff.137.2019.10.30.02.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 02:50:15 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org, sakari.ailus@iki.fi
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com, peter.griffin@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 0/2] Add IMX296 CMOS image sensor support
Date:   Wed, 30 Oct 2019 15:19:00 +0530
Message-Id: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds support for IMX296 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. The sensor is
capable of outputting frames in CSI2 format (1 Lane). In the case
of sensor resolution, driver only supports 1440x1088 at 30 FPS.

The driver has been validated using Framos IMX296 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Changes in v4:

* Fixed issues related to gain settings and few misc cleanups in driver
* Documented port node and removed maxItems, default prop from dt binding
  as per the review

Changes in v3:

* Fixed the reference to video-interfaces.txt in binding.

Changes in v2:

* Switched to YAML binding

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
  media: i2c: Add IMX296 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx296.yaml |  94 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx296.c                    | 715 ++++++++++++++++++
 5 files changed, 829 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
 create mode 100644 drivers/media/i2c/imx296.c

-- 
2.17.1

