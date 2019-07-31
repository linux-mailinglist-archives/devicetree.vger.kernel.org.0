Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C6607BB78
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 10:24:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726556AbfGaIYR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 04:24:17 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43990 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726428AbfGaIYR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 04:24:17 -0400
Received: by mail-wr1-f66.google.com with SMTP id p13so68609262wru.10
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 01:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=923Ja2WcpXT79P86aL3lNG+qbwOggNaCyX5ijNpRJ5o=;
        b=QFW/c3WauL5r/F0ZtnfrXqzpOqeu5eaCNKRUXuqJoeMRA8C58lPUBaC3Dk3vyAk7u2
         2mp5c6hjhvIyYLyIsmXtkNOAhXBwylr0QuMoYthx29CxnyrNuRZw6yqnUcVaa8u7kPOI
         3waHbd0gqvRrvXjBCOdUAlZ4yVWgv3YN8O0xFCvzHzpYSQO0tCjk36m+ZKCR7HzEFkX9
         3Z4WI8E0b2ssz6KAYgP4vvnO4q0PBwZh+W9fp5QuT+J6PmCD6FNgvyyvLxmsH7hRyCxO
         5zXrzDqbX78wnpbrEqu+XhSDEy4Aeji6tRxf4fc7lMg4xwT9LGrMKxQ2gmiXEm50r/1T
         EmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=923Ja2WcpXT79P86aL3lNG+qbwOggNaCyX5ijNpRJ5o=;
        b=OTLk3XGj7Fjt75OwWZ504Rn0oav38marikVoKTkVzLGQog7fKDdoH+FhBNmX2ig9QF
         OQG8kk8mDk7YkJfMF9V1hvg5mEtXxeeN38Od24RylzBtaYbWDgV2UPf56VegLRpbaOmV
         aHr8wrj6fzzSKtkn+0EOPl81LNSt5XQhTTRKgGQKRM4Zs0IGqD3HbynAzS3oRsCCo8Ez
         nT2L0VJmdo3OERD9pP3+5PWCjxjGqQ1f8bf1YuAwygwvH3IKR0y/ZSfpG3dom5NHgAXA
         q6sEjHW/MjLzLAURSkI/MFNMKuCy/ZO5bqaKTT9LAorSpVXE5MaESB0caJPK/yv7D5+h
         VBcA==
X-Gm-Message-State: APjAAAWFpJKnIvoTupeMzBIbt0fw4dWUVCbc4tdmusJF7xtPbrEDuxMJ
        dkPXUynat8kTquZaFO9GwsXfzQ==
X-Google-Smtp-Source: APXvYqyW+Kdgzx7xM0neb1lynMTW4xGwPPQq/J11QHkYCb0v1hPS9K5b4vVL8TRzTgh4ggvSdNM09A==
X-Received: by 2002:adf:de90:: with SMTP id w16mr35937106wrl.217.1564561455192;
        Wed, 31 Jul 2019 01:24:15 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
        by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 01:24:14 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH v2 0/4] Rework secure-monitor driver
Date:   Wed, 31 Jul 2019 09:23:35 +0100
Message-Id: <20190731082339.20163-1-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The secure-monitor driver is currently in really bad shape, not my 
proudest piece of code (thanks Jerome for pointing that out ;). I tried 
to rework it a bit to make it a bit more tolerable.

I needed to change a bit the APIs and consequently adapt the only user 
we have, that is the nvmem/efuses driver. To not break bisectability I 
added one single commit to change both the drivers.

The remaining commits are cosmetic and DTS/docs fixes.

Changelog:
- Changed patches order to not break bisect
- Removed non-functional changes (PATCH 1/5) of the nvmem driver
- Fix gxbb/gxl DTS

Carlo Caione (4):
  firmware: meson_sm: Mark chip struct as static const
  nvmem: meson-efuse: bindings: Add secure-monitor phandle
  arm64: dts: meson: Link nvmem and secure-monitor nodes
  firmware: meson_sm: Rework driver as a proper platform driver

 .../bindings/nvmem/amlogic-efuse.txt          |  6 ++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |  1 +
 drivers/firmware/meson/meson_sm.c             | 96 +++++++++++++------
 drivers/nvmem/meson-efuse.c                   | 24 ++++-
 include/linux/firmware/meson/meson_sm.h       | 15 +--
 7 files changed, 104 insertions(+), 40 deletions(-)

-- 
2.20.1

