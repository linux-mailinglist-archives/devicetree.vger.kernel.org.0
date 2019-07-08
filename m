Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5BFF0620EC
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 16:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731882AbfGHO4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 10:56:38 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33688 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725840AbfGHO4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 10:56:38 -0400
Received: by mail-wr1-f67.google.com with SMTP id n9so17520980wru.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 07:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lusticky.cz; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6A2wEUKZ2w/NmNg6qTXlBT+G1/lwdgA/OS6jqf9rino=;
        b=Dqch3UtvFbjZcRo5gHJVFBzEKhcPph8OZmmoJTmPBDsWNPjViVCMuu7wPPoPZdp1k4
         LP/1TsEzimCbte7BWjj3Tv94twyynDQNDJV7HrL80G2ZoMc4cqh9mCWOO3bp/78zKIdH
         hF3oE1Fniib0IL1ML64vdfY/VODiTFbSB+4f9x2bbj3kxznUdgzqzIREN6UmWg4xAnSW
         A14UpCnE9qpDgT5RCLotQyyThqduZYGclAKC3lxn8y2tSmS8uKQcO25GextJKUqqUcuK
         bVfvkHRezZvolWW18DbUnJPg+Cqup2Di4fWkMLCuLkiSGN9POyuqAeuEpBtE5DTI6j0H
         jGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6A2wEUKZ2w/NmNg6qTXlBT+G1/lwdgA/OS6jqf9rino=;
        b=oSv98heZY/ltxzFANc9fjn++bcMed2SDHDY4mQjQps4+38Q9cY6MSBMFjAUwHIywat
         SbeII0RTz5VgT8/rcvVlG5pDzZMS2Wrl7uIANYp0HQjV7OcQ404TnxtEKaRQ3n5hSLJM
         jxU3C12CgwUC4jyFHBy1PEzZR79bJWOsYXBy4GFwiHu5FUeIpdo0OVHacDa5mHAsTl+q
         qrTGo4eHadIZ45TqL+Y893xiEMqj1/JUkSv0/Ef70CCuzyrDhrlY7hwQhLds7pWUWADp
         JjJXr1pPICyJMt1Ezgo/nLFa/hZrg57RYTWULZyYmI3njzYNhfKpqotgT8wErIczo/om
         Qrrw==
X-Gm-Message-State: APjAAAW+gLtBv6HyJSLloo3kkNKKUXgnFrKQrbZFcXUpu+i2oevQDzlv
        c+hj7ck5rYlRq/fKMot9uaL0aw==
X-Google-Smtp-Source: APXvYqyH59Nm3vbt1NDiGZ18Kibh0K801N8w6r86bMR01GEi1FwpjHiY3T3JJRdiyapDKZbulvXwjA==
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr12453877wrt.182.1562597795750;
        Mon, 08 Jul 2019 07:56:35 -0700 (PDT)
Received: from e430.riomail.cz (188-175-152-238.client.rionet.cz. [188.175.152.238])
        by smtp.gmail.com with ESMTPSA id f70sm11887595wme.22.2019.07.08.07.56.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 08 Jul 2019 07:56:35 -0700 (PDT)
From:   Josef Lusticky <josef@lusticky.cz>
To:     sam@ravnborg.org, robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     daniel@ffwll.ch, thierry.reding@gmail.com, airlied@linux.ie,
        Josef Lusticky <josef@lusticky.cz>
Subject: [PATCH v2 0/2] Add DRM ILI9341 parallel RGB panel driver
Date:   Mon,  8 Jul 2019 16:56:16 +0200
Message-Id: <20190708145618.26031-1-josef@lusticky.cz>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190304125033.28841-1-josef@lusticky.cz>
References: <20190304125033.28841-1-josef@lusticky.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
This is the v2 of the patch-set which adds support for
Ilitek ILI9341 parallel RGB panels.

The ILI9341 chip supports both parallel RGB input mode and SPI input mode.
This driver adds support for the parallel RGB input mode.

Changes since v1:
* Device-tree bindings in one file
* D/C GPIO pin is optional
* mipi_dbi_* functions used to initialize the display
* entry in MAINTAINERS sorted alphabetically
* Makefile, Kconfig: DRM_PANEL_ILITEK_IL9341 renamed to DRM_PANEL_ILITEK_ILI9341
* Kconfig: depend on BACKLIGHT_CLASS_DEVICE
* Kconfig: select TINYDRM_MIPI_DBI
* order of include files changed
* drm_mode_duplicate checked for failure

Thank you Rob Herring and Sam Ravnborg for comments.

Josef Lusticky (2):
  dt-bindings: panel: Add parallel RGB mode for Ilitek ILI9341 panels
  drm/panel: Add Ilitek ILI9341 parallel RGB panel driver

 .../bindings/display/ilitek,ili9341.txt       |  67 +++-
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c  | 291 ++++++++++++++++++
 5 files changed, 363 insertions(+), 11 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

-- 
2.20.1

