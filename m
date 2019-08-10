Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB10F88EBB
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2019 01:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726212AbfHJXK5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Aug 2019 19:10:57 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39418 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbfHJXK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Aug 2019 19:10:57 -0400
Received: from pendragon.bb.dnainternet.fi (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 151BC67;
        Sun, 11 Aug 2019 01:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1565478655;
        bh=kRXCKfglv72i1u0mmAlcNGo3MS94Y4n2efu9YhAGczw=;
        h=From:To:Cc:Subject:Date:From;
        b=TguoP9uNX+wdemVdus1FWxdNxJMbWhsGszGLNsBuLlrBa4iS12AAj3fS7lb29L40g
         e7fxi4/XfdjfhbIlQ61YUHrHxfBOTAeCIefjHEFhxFB2Hq883GaHEfIsuJ/IK4MDr5
         dSQ/iWI7SQt+uvqwqiC/0uOhd1z1GmnhZvOQaIT4=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/9] DRM panel drivers for omapdrm
Date:   Sun, 11 Aug 2019 02:10:39 +0300
Message-Id: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello everybody,

These 9 patches have initially been posted as part of the larger "[PATCH
00/60] drm/omap: Replace custom display drivers with drm_bridge and
drm_panel" series, hence the v2 in the subject prefix.

I'm posting this second version separately per Sam's request as the rest
of the original series is expected to take more time to process through
review. 

There's nothing very special here. The first three patches add DT vendor
prefixes and DT bindings. Since v1 patch 3/9 has been converted from
text to YAML, and as I'm not very familiar with YAML DT bindings, I'm
eagerly waiting for reviews.

The last six patches add new panel drivers. The code originates from the
corresponding omapdrm-specific panel drivers, which explains why only
one new DT binding is needed as most of them are already present.

Please see individual patches for changelogs. Sam, I believe I've taken
all your comments into account, I hope none fell through the cracks.

The patches are based on top of drm-misc-next and can be found at

	git://linuxtv.org/pinchartl/media.git omapdrm/panels

Laurent Pinchart (9):
  dt-bindings: Add vendor prefix for LG Display
  dt-bindings: Add legacy 'toppoly' vendor prefix
  dt-bindings: display: panel: Add bindings for NEC NL8048HL11 panel
  drm/panel: Add driver for the LG Philips LB035Q02 panel
  drm/panel: Add driver for the NEC NL8048HL11 panel
  drm/panel: Add driver for the Sharp LS037V7DW01 panel
  drm/panel: Add driver for the Sony ACX565AKM panel
  drm/panel: Add driver for the Toppoly TD028TTEC1 panel
  drm/panel: Add driver for the Toppoly TD043MTEA1 panel

 .../display/panel/nec,nl8048hl11.yaml         |  49 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   5 +
 drivers/gpu/drm/panel/Kconfig                 |  46 ++
 drivers/gpu/drm/panel/Makefile                |   6 +
 drivers/gpu/drm/panel/panel-lg-lb035q02.c     | 237 ++++++
 drivers/gpu/drm/panel/panel-nec-nl8048hl11.c  | 247 +++++++
 .../gpu/drm/panel/panel-sharp-ls037v7dw01.c   | 226 ++++++
 drivers/gpu/drm/panel/panel-sony-acx565akm.c  | 693 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-tpo-td028ttec1.c  | 381 ++++++++++
 drivers/gpu/drm/panel/panel-tpo-td043mtea1.c  | 508 +++++++++++++
 10 files changed, 2398 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lg-lb035q02.c
 create mode 100644 drivers/gpu/drm/panel/panel-nec-nl8048hl11.c
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
 create mode 100644 drivers/gpu/drm/panel/panel-sony-acx565akm.c
 create mode 100644 drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
 create mode 100644 drivers/gpu/drm/panel/panel-tpo-td043mtea1.c

-- 
Regards,

Laurent Pinchart

