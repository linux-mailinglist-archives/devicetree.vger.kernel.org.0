Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 424F52C0E34
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 15:59:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726770AbgKWOwD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 09:52:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbgKWOwC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 09:52:02 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF2EC061A4D
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:52:02 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id b6so18902253wrt.4
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wmeZr0XUHe7lfG5n9TDdoFp85I1L2X2BF+Rr5NpXUP0=;
        b=PTtXCtInvsZCorNwU1hUoH+yzXlYZWe3dndOPDBMxQeAGubOLYI9/jJrTECqDaBBYD
         2EEVPiL9WsTH4/0zd5uAZqNwsH8CPkGIp6JiS9uPYSWICQEJDzuyKdvGD4tM1cJgPj1Q
         BepszEQbdCP4tytl+FHyIY1zzhxRR6KLBnhwZCd6iT/hAUIPhUhMXRkBOUHjFDzlp2S2
         zRvnnqyF3n5wRfrha8MIX0mMnP8ZussA2cba9dQYoxT9+FcmdbW5REOsIwDGscDvmvji
         VJLEoZftpcFHTXCaY9u43QqHhDFDXzJMsC2mQbmW8Pt+t3ZEkVnEftLk7KinyIEOX/uj
         XPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wmeZr0XUHe7lfG5n9TDdoFp85I1L2X2BF+Rr5NpXUP0=;
        b=b0vDehBzXm1C6qtct/blkCC2r782NY3tX13ovNfd1wBH0krmiPWSq9GX481ac+zEEK
         xRaYavsQ2Lgw/e8UJNMwRB8dCp59gmO8cjOqQKp0LqIjusJGIkk3gzrw6K5ISG98iPTF
         +O8uyrGuNp6GmNFTWuEHg4MT7NSy+ZigH8et2FlpWNW2tJcll2s3lukKY7W9apjt/y6y
         NObJYECL3VZcZhuTlCacTc9OQ+QxWeX8LM/5QL+VO8msOOacUGazSgkl8lgdo5njzsWp
         j6k9GxUojWAHFJkQ5SLNF2zwH7gbu2qDk+TqhgpecnVHwAAxGfa9O7a76JEn5ACdTEKE
         MzIw==
X-Gm-Message-State: AOAM5332d8DrcQW/+iwOws2fEh4zZyR1U+1AWL2F1PebZ74m5jusxLEP
        GudGs/32CRyTPfQTT61zdbi8CQ==
X-Google-Smtp-Source: ABdhPJx0Nsh3eOEdDLcNLqFyxmZXyWn1bfPylX82bWOzB76sFCdqMGPW+t9dmteFWCUkRzne/kyjmg==
X-Received: by 2002:adf:e912:: with SMTP id f18mr31112308wrm.79.1606143121122;
        Mon, 23 Nov 2020 06:52:01 -0800 (PST)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:9541:d2fd:3a68:67ae])
        by smtp.gmail.com with ESMTPSA id 9sm14225175wmo.34.2020.11.23.06.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 06:52:00 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     vkoul@kernel.org, kishon@ti.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 0/2] phy: amlogic: Add support for the G12A Analog MIPI D-PHY
Date:   Mon, 23 Nov 2020 15:51:55 +0100
Message-Id: <20201123145157.300456-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY to communicate with DSI
panels, this adds the bindings.
    
This Analog D-PHY works with a separate Digital MIPI D-PHY.

This serie adds the Bindings and the PHY driver.

Neil Armstrong (2):
  dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY bindings
  phy: amlogic: Add G12A Analog MIPI D-PHY driver

 .../phy/amlogic,g12a-mipi-dphy-analog.yaml    |  40 ++++
 drivers/phy/amlogic/Kconfig                   |  12 ++
 drivers/phy/amlogic/Makefile                  |   1 +
 .../amlogic/phy-meson-g12a-mipi-dphy-analog.c | 177 ++++++++++++++++++
 4 files changed, 230 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
 create mode 100644 drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c

-- 
2.25.1

