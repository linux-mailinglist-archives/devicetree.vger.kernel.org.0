Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D508A1F6590
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2020 12:24:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727773AbgFKKYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jun 2020 06:24:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727080AbgFKKYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jun 2020 06:24:14 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5116C08C5C1
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2020 03:24:13 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 638E02A38CE
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie
Subject: [PATCH v3 0/5] dt-bindings: display: ti,tfp410.txt: convert to yaml
Date:   Thu, 11 Jun 2020 12:23:51 +0200
Message-Id: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series converts the DT binding for the TI TFP410 DPI-to-DVI encoder
to json-schema.

This also fixes a minor bug in the ti-tfp410 driver that would cause a
wrong calculation of the setup and hold times when the de-skew feature
is enabled. The retrieval of the de-skew value from the DT has also been
updated to reflect the binding changes.

Changes in v3:

  - ti,tfp410.yaml
    - Original translation to yaml separated into its own commit with no
      additional changes (Laurent Pinchart).
    - Redefinition of ti,deskew property in its own commit (Laurent).
    - Removal of unnecessary text (Laurent).
    - New conditional constraint for ti,deskew (Laurent).
    - "ports" node set as optional (Rob Herring).

  - dove-sbc-a510.dts: removed. This comes from Rob's suggestion that
    the "ports" node should be optional instead of defining empty port
    nodes in DTs files.

  - ti-tfp410.c
    - Original changes split into two commits. The first one changes the
      datatype and retrieval of the deskew property. The second one
      fixes the calculation of hold and setup times (Laurent).

The bindings have been tested with:

  make dt_binding_check ARCH=<arch> DT_SCHEMA_FILES=<...ti,tfp410.yaml>
  make dtbs_check ARCH=<arch> DT_SCHEMA_FILES=<...ti,tfp410.yaml>

for <arch> = arm and arm64.
This uncovered a number of dts files that use the TFP410 but not through
I2C and don't define the ti,deskew property. These should be fixed at
some point.

Ricardo Cañuelo (5):
  dt-bindings: display: ti,tfp410.txt: convert to yaml
  dt-bindings: display: ti,tfp410.yaml: Redefine ti,deskew property
  drm/bridge: tfp410: fix de-skew value retrieval from DT
  drm/bridge: tfp410: Fix setup and hold time calculation
  dt-bindings: display: ti,tfp410.yaml: make the ports node optional

 .../bindings/display/bridge/ti,tfp410.txt     |  66 ---------
 .../bindings/display/bridge/ti,tfp410.yaml    | 130 ++++++++++++++++++
 drivers/gpu/drm/bridge/ti-tfp410.c            |  10 +-
 3 files changed, 135 insertions(+), 71 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/bridge/ti,tfp410.txt
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml

-- 
2.18.0

