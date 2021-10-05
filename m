Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7063422B32
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 16:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234669AbhJEOkH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 10:40:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235306AbhJEOkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 10:40:06 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A584FC061749
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 07:38:15 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g41so86961009lfv.1
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 07:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=msJiBzyUeKV8FpoS/TYzjgGtnwD3uWYer6ogIVTmynQ=;
        b=A9uNkZL1Zeuo7Tspc6oQR2fBKHxSVRHx+WgNkJwJfw83LPMlNQQjYSsYKu6+1NGJ8O
         NB2CeH19fARPh9GsfBeEH/spe+gxRk3cY9v2/C+vlB4S4nEvS1XhNbMTMskxuATQrB5C
         U07yEvNOLUjOYFkrynNrUwD0iRyAOydH56W+ZvnHPe960sqryoPlAH3D81I71O4iGbOh
         c/8EkoNjOn1xAsDtaWTwSoxm9ya4RsuhlfokputHxqq1Aef21AepJiG+xFCCblgHEZ4C
         3Bv1uCy7CsYQNmCRngk4/PcoMYBF42wAZRtgAJbaRhxNsc42FMIM5ALwp/+8UsEtUZRA
         2/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=msJiBzyUeKV8FpoS/TYzjgGtnwD3uWYer6ogIVTmynQ=;
        b=JrTmAAhbNloOa8tS+KxYbzS77l4R7v1QYOuXM/mWpe2rt0PiaZUwBgWSf+Bxyo2Cpi
         tCZZTbQV2WvRgNtkSXcmnxjrF6JWV8MIlYGS/TiJrahoMa4zZNP61X2Dsxf7cS2d8oa9
         cNi3SeHUieYaWALq6VDozCLk+KCua59cwnj4V/+nI+sss+JKKQfAnrEys9AYO5hKMdjs
         oaVNs9c8BnneVFBD7+y78scfapTLXKFy3sxw6uUr949+lMNCV3MJ2Wi1G9bLjbvmNsXy
         w0o0r1/5nt19CpA/p8MUfnIF1il1OMLI8ZeDAYYMKuBNZKOziPBIUtlqD40vjFULD3Ft
         djXg==
X-Gm-Message-State: AOAM532uA/cjWuXH4m4cS9LSvsuZA6hChH+FAyH3DyBEb+jGdHnPzw0i
        QKMxBerDUahHuaGmg5Fwop6yaw==
X-Google-Smtp-Source: ABdhPJwjHFt3CH4sjkux3RohVRrB59RZWeObwoAjO4ak37gG3wQ/jeQOUiIaNRGdJyngodBj+RX0UQ==
X-Received: by 2002:a05:6512:3501:: with SMTP id h1mr3770923lfs.446.1633444688364;
        Tue, 05 Oct 2021 07:38:08 -0700 (PDT)
Received: from grasshopper.googchameleon.semihalf.net ([83.142.187.85])
        by smtp.gmail.com with ESMTPSA id u25sm1973835lfc.176.2021.10.05.07.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 07:38:08 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     jarkko.nikula@linux.intel.com, andriy.shevchenko@linux.intel.com,
        mika.westerberg@linux.intel.com, robh+dt@kernel.org,
        p.zabel@pengutronix.de, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org, dinguyen@kernel.org, p.yadav@ti.com,
        Tudor.Ambarus@microchip.com
Cc:     linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
        alexandre.belloni@bootlin.com, sre@kernel.org,
        thunder.leizhen@huawei.com, Jonathan.Cameron@huawei.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        ka@semihalf.com, tn@semihalf.com, jam@semihalf.com,
        amstan@google.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v2 0/4] Add support for the Mercury+ AA1 module
Date:   Tue,  5 Oct 2021 16:37:44 +0200
Message-Id: <20211005143748.2471647-1-pan@semihalf.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The following patches add support for the Mercury+ AA1 with an
Arria 10 SoCFPGA.

This version differs from the previous one by removing the spi
flash node, renaming the memory and mdio nodes, adding gpio nodes,
and adding a bus number property to Synopsys DesignWare i2c
controller node.

Paweł Anikiel (4):
  i2c: check bus number property in DesignWare I2C Controller
  dt-bindings: add bus number property
  reset: socfpga: add empty driver allowing consumers to probe
  dts: socfpga: Add Mercury+ AA1 devicetree

 .../bindings/i2c/snps,designware-i2c.yaml     |  5 +
 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/socfpga_arria10_mercury_aa1.dts  | 99 +++++++++++++++++++
 drivers/i2c/busses/i2c-designware-platdrv.c   |  3 +-
 drivers/reset/reset-socfpga.c                 | 26 +++++
 5 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts

-- 
2.25.1

