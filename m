Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 853F22F5218
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 19:33:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728272AbhAMSak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 13:30:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728234AbhAMSak (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 13:30:40 -0500
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [IPv6:2001:4b7a:2000:18::167])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E488C06179F
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 10:29:44 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (unknown [2.237.20.237])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 899FA3F279;
        Wed, 13 Jan 2021 19:29:42 +0100 (CET)
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
To:     mchehab@kernel.org
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH v4 0/2] Add support for the Sony Exmor-RS IMX300 camera sensor
Date:   Wed, 13 Jan 2021 19:29:32 +0100
Message-Id: <20210113182934.444727-1-angelogioacchino.delregno@somainline.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for the IMX300 camera sensor, (one of the)
first Exmor-RS Stacked CMOS sensor(s), with support for both of the
supported aspect ratios (4:3 and 16:9).
This driver came out from reverse engineering of so called "userspace
drivers" from Sony Xperia smartphones.

I tried to document all of my findings and giving a sense to the registers
as much as possible, but that was only partially possible and resembles
some names from the IMX219 public datasheet, even though the addresses are
basically completely different.

This camera sensor driver was tested with all the resolutions declared in
it on two phones: Sony Xperia XA2 and XA2 Ultra, on a SDM630 SoC and is
working great.

- Changes in v4:
  - My e-mail address was changed in all files to reflect the new one
  - Fixed selection targets and out-of-bounds rectangles (thanks Jacopo!)
  - Fixed a warning: changed do_div to div_s64 for 64-bit division
  - Added one more register definition

- Changes in v3:
  - Removed unneeded fallthrough statements
  - Fixed double mode initialization at probe time
  - Fixed typo in the dt-binding description (8->25MPixels)
  - Fixed dt-binding data-lanes description, added to required properties

- Changes in v2:
  - Changed dt-binding name and fixed a misconception about lane
    operation (sensor supports 2/4-Lane, driver supports 4-Lane only)
  - Now using lowercase names for regulator supplies
  - Fixed redefinition of clock-noncontinuous property
  - Added informations about constraints on data bus frequencies
  - Fixed MAINTAINERS: removed git tree

AngeloGioacchino Del Regno (2):
  media: i2c: Add driver for the Sony Exmor-RS IMX300 camera sensor
  media: dt-bindings: media: i2c: Add IMX300 CMOS sensor binding

 .../bindings/media/i2c/sony,imx300.yaml       |  112 +
 MAINTAINERS                                   |    7 +
 drivers/media/i2c/Kconfig                     |   13 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/imx300.c                    | 3084 +++++++++++++++++
 5 files changed, 3217 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx300.yaml
 create mode 100644 drivers/media/i2c/imx300.c

-- 
2.29.2

