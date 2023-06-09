Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 417F3729DA5
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240564AbjFIPAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241584AbjFIO75 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:59:57 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD63F2D48
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:59:55 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686322794;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=lCWkW0TUz/Ozehs22EtY0o9dJlwo/nU2nU/fzCoRmvE=;
        b=DkxySSx9F2TqrgNdHMlCw49dx1Xr7CbCpVn5Z65m8w2XTk1x/KIlUeQVtyqrLPsN/InwzS
        RLvDcBXm0rhBZHK2NA1sJoZl1VolItq+Q7G5Pkgz+QJqCIx1Rkd/nEe1JZDe0HF6VANbZn
        WlFbzsCcehEs0MuCQXEw4i1Lel+ucVy3Dsecg7y03wc2Oo6MFjBv97I6GKbaWYYoj59TUz
        jEwpsGrEew/PVFJ5tCq5GaBkUUSq1yCzfQclvEUH2DXsMujitkjvsQ+o0WyLSTCTj0Nii7
        70Bz5L4PHazwSbyzVrbIEBrnzYSM11CkRSIpe30O0lG1fi0pTD2inJs6NVGeVQ==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8B356240004;
        Fri,  9 Jun 2023 14:59:52 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 0/7] drm/panel: sitronix-st7789v: Support ET028013DMA panel
Date:   Fri,  9 Jun 2023 16:59:44 +0200
Message-Id: <20230609145951.853533-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

The aim of this series is to add support for the EDT ET028013DMA
panel. This panel features a Sitronix ST7789V2 LCD controller, which is
already supported mainline (or very close to the ST7789V for which
Maxime added support years ago).

The EDT panel is slightly different on the geometry and appears not to
support refresh rates higher than 30fps (above, glitches are visible,
despite the incoming signals being rather clean). While I was working on
this panel, I found quite inconvenient to not be able to read anything
back as it is a great tool for debugging purposes. So the last patch
actually adds a read helper and uses it to perform a sanity check at
probe time by verifying the Sitronix controller IDs. If deemed
irrelevant, this patch may be discarded.

Thanks,
Miquèl

Miquel Raynal (7):
  drm/panel: sitronix-st7789v: Prevent core spi warnings
  drm/panel: sitronix-st7789v: Use 9 bits per spi word by default
  drm/panel: sitronix-st7789v: Specify the expected bus format
  drm/panel: sitronix-st7789v: Use platform data
  dt-bindings: display: st7789v: Add the edt,et028013dma panel
    compatible
  drm/panel: sitronix-st7789v: Add EDT ET028013DMA panel support
  drm/panel: sitronix-st7789v: Check display ID

 .../display/panel/sitronix,st7789v.yaml       |   7 +-
 .../gpu/drm/panel/panel-sitronix-st7789v.c    | 157 +++++++++++++++++-
 2 files changed, 156 insertions(+), 8 deletions(-)

-- 
2.34.1

