Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F33BC298693
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 06:48:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1769601AbgJZFsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 01:48:09 -0400
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:6071 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1769514AbgJZFsJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 01:48:09 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f96631f0000>; Sun, 25 Oct 2020 22:48:15 -0700
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Oct
 2020 05:48:07 +0000
Received: from audio.nvidia.com (10.124.1.5) by mail.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server id 15.0.1473.3 via Frontend
 Transport; Mon, 26 Oct 2020 05:48:06 +0000
From:   Sameer Pujar <spujar@nvidia.com>
To:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
CC:     <p.zabel@pengutronix.de>, <kuninori.morimoto.gx@renesas.com>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 0/2] Convert graph bindings to json-schema
Date:   Mon, 26 Oct 2020 11:17:44 +0530
Message-ID: <1603691266-32643-1-git-send-email-spujar@nvidia.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603691295; bh=uI8TXHo8GdVezvicL4ElXmOliv9vcZB6eJ9JvoqlYI0=;
        h=From:To:CC:Subject:Date:Message-ID:X-Mailer:MIME-Version:
         Content-Type;
        b=R/SQaoPgqLX/C/ZxvlDDXASFszZ/0AIgFMGAskXxqMFR8GMg2jYp0hyHZegV9FuWH
         r4ZBSdnZ7wlwLIeR+fPQhtxKObCioiNgjrPDW5Tm9fDcJ8jhiforF2OyJ4ew8LYaxF
         vJ9XtYJESZbSy9Lx4Qj6YPMBX62jQKVQ/j8sMctCA+VXdTrnXBowWTZUSTYAZKUDdF
         otYpsGSWMsXYtdk7EEGVVJ6WK0Yo2uXN9pYTyTWM+d369pMvYozeVyzDUPvypK1Glf
         4QK0yOe5Xy0ayH7lbpLzCts3XSBzL6eC3GDnczq+gAIpeWea/iSMcsCITxhpzuDZu5
         qmbEXSL8xjXpA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move graph bindings to json-schema and convert graph.txt to graph.yaml
Also updated relevant references in various docs.

Sameer Pujar (2):
  dt-bindings: Convert graph bindings to json-schema
  dt-bindings: Use graph.yaml reference in docs

 .../devicetree/bindings/arm/coresight.txt          |   2 +-
 .../bindings/connector/usb-connector.yaml          |   2 +-
 .../devicetree/bindings/display/arm,hdlcd.txt      |   2 +-
 .../devicetree/bindings/display/arm,komeda.txt     |   2 +-
 .../devicetree/bindings/display/arm,malidp.txt     |   2 +-
 .../bindings/display/armada/marvell,dove-lcd.txt   |   2 +-
 .../devicetree/bindings/display/atmel/hlcdc-dc.txt |   2 +-
 .../bindings/display/bridge/adi,adv7511.txt        |   2 +-
 .../bindings/display/bridge/analogix,anx7814.yaml  |   2 +-
 .../bindings/display/bridge/cdns,dsi.txt           |   2 +-
 .../bindings/display/bridge/cdns,mhdp8546.yaml     |   2 +-
 .../devicetree/bindings/display/bridge/dw_hdmi.txt |   2 +-
 .../bindings/display/bridge/lvds-codec.yaml        |   2 +-
 .../bindings/display/bridge/nwl-dsi.yaml           |   2 +-
 .../devicetree/bindings/display/bridge/ps8640.yaml |   2 +-
 .../bindings/display/bridge/renesas,lvds.yaml      |   2 +-
 .../bindings/display/bridge/simple-bridge.yaml     |   2 +-
 .../devicetree/bindings/display/bridge/tda998x.txt |   2 +-
 .../display/bridge/thine,thc63lvd1024.yaml         |   2 +-
 .../bindings/display/bridge/toshiba,tc358767.txt   |   2 +-
 .../bindings/display/hisilicon/dw-dsi.txt          |   2 +-
 .../bindings/display/hisilicon/hisi-ade.txt        |   2 +-
 .../devicetree/bindings/display/imx/ldb.txt        |   2 +-
 .../devicetree/bindings/display/ingenic,ipu.yaml   |   2 +-
 .../devicetree/bindings/display/ingenic,lcd.yaml   |   4 +-
 .../bindings/display/mediatek/mediatek,dpi.txt     |   2 +-
 .../bindings/display/mediatek/mediatek,dsi.txt     |   2 +-
 .../bindings/display/mediatek/mediatek,hdmi.txt    |   2 +-
 .../devicetree/bindings/display/mipi-dsi-bus.txt   |   2 +-
 .../devicetree/bindings/display/msm/dpu.txt        |   2 +-
 .../devicetree/bindings/display/msm/dsi.txt        |   2 +-
 .../devicetree/bindings/display/msm/mdp4.txt       |   2 +-
 .../devicetree/bindings/display/msm/mdp5.txt       |   2 +-
 .../bindings/display/panel/panel-common.yaml       |   2 +-
 .../devicetree/bindings/display/renesas,du.txt     |   2 +-
 .../display/rockchip/inno_hdmi-rockchip.txt        |   2 +-
 .../bindings/display/rockchip/rockchip-lvds.txt    |   2 +-
 .../devicetree/bindings/display/st,stm32-dsi.yaml  |   2 +-
 .../bindings/display/ti/ti,am65x-dss.yaml          |   2 +-
 .../bindings/display/ti/ti,j721e-dss.yaml          |   2 +-
 .../devicetree/bindings/display/ti/ti,k2g-dss.yaml |   2 +-
 .../devicetree/bindings/display/ti/ti,omap-dss.txt |   2 +-
 .../devicetree/bindings/display/tilcdc/tilcdc.txt  |   2 +-
 .../devicetree/bindings/display/truly,nt35597.txt  |   2 +-
 Documentation/devicetree/bindings/graph.txt        | 128 --------------
 Documentation/devicetree/bindings/graph.yaml       | 188 +++++++++++++++++++++
 .../devicetree/bindings/media/video-interfaces.txt |   2 +-
 .../devicetree/bindings/media/video-mux.txt        |   2 +-
 .../devicetree/bindings/sound/st,stm32-sai.txt     |   2 +-
 .../devicetree/bindings/usb/mediatek,mtu3.txt      |   2 +-
 .../devicetree/bindings/usb/ti,hd3ss3220.yaml      |   2 +-
 51 files changed, 238 insertions(+), 178 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/graph.txt
 create mode 100644 Documentation/devicetree/bindings/graph.yaml

-- 
2.7.4

