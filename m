Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 750D6143332
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2020 22:02:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726982AbgATVCm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jan 2020 16:02:42 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:60808 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726586AbgATVCm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jan 2020 16:02:42 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00KL2TeA098579;
        Mon, 20 Jan 2020 15:02:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1579554149;
        bh=GJVGzM2njQggg1l0RAGivpH2DHYPT9XiOoI7CqAS69I=;
        h=From:To:CC:Subject:Date;
        b=IwCUvv+tEYLpoFIcE3Li/oYIvdMgaKK+MX2x7YswA4UrZ/uz3+QQD4Q85oZzIlk7W
         TeNO1hAyiN5rexvl0Wg8FMqOZkH98MFt71H8x6ZkuvucBjwOdj47kYw6xzoqIORdQo
         cpFyu8eyMbhelzvoT7cJcbZ4XlroeviW5Wb5D5wQ=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00KL2TBi005816;
        Mon, 20 Jan 2020 15:02:29 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 20
 Jan 2020 15:02:27 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 20 Jan 2020 15:02:27 -0600
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00KL2PYX079658;
        Mon, 20 Jan 2020 15:02:25 -0600
From:   Jyri Sarha <jsarha@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
CC:     <tomi.valkeinen@ti.com>, <laurent.pinchart@ideasonboard.com>,
        <peter.ujfalusi@ti.com>, <bparrot@ti.com>, <subhajit_paul@ti.com>,
        <praneeth@ti.com>, <yamonkar@cadence.com>, <sjakhade@cadence.com>,
        <sam@ravnborg.org>, <jsarha@ti.com>
Subject: [PATCH v8 0/5] drm/tidss: New driver for TI Keystone platform Display SubSystem
Date:   Mon, 20 Jan 2020 23:02:19 +0200
Message-ID: <cover.1579553817.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v7:
- "drm/tidss: New driver for TI Keystone platform Display SubSystem"
  - Remove idle debug prints from dispc_init()
  - Add Reviewed-by: Benoit Parrot <bparrot@ti.com>
- "MAINTAINERS: add entry for tidss"
  - Add Reviewed-by: Benoit Parrot <bparrot@ti.com>

Changes since v6:
- Rebase on top of drm-misc-next-2020-01-10
- Fix all checkpatch.pl -q --emacs --strict --show-types issues
  - all issues but these have been fixed:
    - over 80 char lines in scale coefficients found in tidss_scale_coefs.c
    - Co-developed-by and Signed-off-by: name/email do not match
    - added, moved or deleted file(s), does MAINTAINERS need updating
- Add Acked-by: Sam Ravnborg <sam@ravnborg.org> to "drm/tidss: New driver ..."

Changes since v5:
- Add Add Reviewed-by: from Rob Herring <robh@kernel.org> and
  Benoit Parrot <bparrot@ti.com> to binding patches
- Color property changes and fixes to the driver implementation patch
  - Check CTM and gamma support from dispc_features when creating crtc
  - Implement CTM support for k2g and fix k3 CTM implementation
  - Remove gamma property persistence and always write color properties
    in a new modeset

Changes since v4:
- itemize named resource property descriptions in dt binding
- fix wp to wb in the ti,j721e-dss reg property description
- remove fifo underflow irq handling, it is not an error and
  it should be used for debug purposes only
- memory tuning, prefetch plane fifo up to high-threshold value to
  minimize possibility of underflows.

Changes since v3:
- Add descriptions some yaml binding properites
- Remove redundant minItems directives from yaml bindings
- Remove ports node from ti,k2g-dss yaml binding
- no change to MAINTAINERS or to the driver code

Changes since v2:
- Add version history to commit messages
- Fix yaml bindings now that got dt_binding_check dtbs_check working property
- Move tidss entry in MAINTAINERS after omapdrm and add "T: git
  git://anongit.freedesktop.org/drm/drm-misc"
- no change to driver code

Changes since the first version of the patch series [2]:
- "drm/tidss: New driver for TI Keystone platform Display SubSystem"
 - rebased on top of drm-next-2019-11-27
 - sort all include lines in all files
 - remove all include <drm/drmP.h>
 - remove select "select VIDEOMODE_HELPERS"
 - call dispc_vp_setup() later in tidss_crtc_atomic_flush() (there is no
   to call it in new modeset case as it is also called in vp_enable())
 - change probe sequence and drm_device allocation (follow example in drm_drv.c)
 - use __maybe_unused instead of #ifdef for pm functions
 - remove "struct drm_fbdev_cma *fbdev;" from driver data
 - check panel connector type before connecting it
- No change to binding or MAINTAINERS patches

There was couple of attempts upstream an earlier version of this
driver about a year ago [1]. Back then I needed to stop my efforts to
implement support for next Keystone DSS version, so now the driver
supports three different Keystone DSS version on three different SoCs.

I am starting the patch series versioning from the beginning because it
has been over a year since the previous patch set and the structure of
the driver has evolved quite a bit. However, all the earlier comments
should be addressed in this series.

[1] https://patchwork.freedesktop.org/series/44947/
[2] https://lists.freedesktop.org/archives/dri-devel/2019-November/246542.html

Jyri Sarha (5):
  dt-bindings: display: ti,k2g-dss: Add dt-schema yaml binding
  dt-bindings: display: ti,am65x-dss: Add dt-schema yaml binding
  dt-bindings: display: ti,j721e-dss: Add dt-schema yaml binding
  drm/tidss: New driver for TI Keystone platform Display SubSystem
  MAINTAINERS: add entry for tidss

 .../bindings/display/ti/ti,am65x-dss.yaml     |  152 +
 .../bindings/display/ti/ti,j721e-dss.yaml     |  208 ++
 .../bindings/display/ti/ti,k2g-dss.yaml       |  109 +
 MAINTAINERS                                   |   11 +
 drivers/gpu/drm/Kconfig                       |    2 +
 drivers/gpu/drm/Makefile                      |    1 +
 drivers/gpu/drm/tidss/Kconfig                 |   14 +
 drivers/gpu/drm/tidss/Makefile                |   12 +
 drivers/gpu/drm/tidss/tidss_crtc.c            |  377 +++
 drivers/gpu/drm/tidss/tidss_crtc.h            |   46 +
 drivers/gpu/drm/tidss/tidss_dispc.c           | 2768 +++++++++++++++++
 drivers/gpu/drm/tidss/tidss_dispc.h           |  132 +
 drivers/gpu/drm/tidss/tidss_dispc_regs.h      |  243 ++
 drivers/gpu/drm/tidss/tidss_drv.c             |  285 ++
 drivers/gpu/drm/tidss/tidss_drv.h             |   39 +
 drivers/gpu/drm/tidss/tidss_encoder.c         |   88 +
 drivers/gpu/drm/tidss/tidss_encoder.h         |   17 +
 drivers/gpu/drm/tidss/tidss_irq.c             |  146 +
 drivers/gpu/drm/tidss/tidss_irq.h             |   77 +
 drivers/gpu/drm/tidss/tidss_kms.c             |  249 ++
 drivers/gpu/drm/tidss/tidss_kms.h             |   15 +
 drivers/gpu/drm/tidss/tidss_plane.c           |  217 ++
 drivers/gpu/drm/tidss/tidss_plane.h           |   25 +
 drivers/gpu/drm/tidss/tidss_scale_coefs.c     |  202 ++
 drivers/gpu/drm/tidss/tidss_scale_coefs.h     |   22 +
 25 files changed, 5457 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
 create mode 100644 drivers/gpu/drm/tidss/Kconfig
 create mode 100644 drivers/gpu/drm/tidss/Makefile
 create mode 100644 drivers/gpu/drm/tidss/tidss_crtc.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_crtc.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_dispc.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_dispc.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_dispc_regs.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_drv.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_drv.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_encoder.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_encoder.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_irq.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_irq.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_kms.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_kms.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_plane.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_plane.h
 create mode 100644 drivers/gpu/drm/tidss/tidss_scale_coefs.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_scale_coefs.h

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

