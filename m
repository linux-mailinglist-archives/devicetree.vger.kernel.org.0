Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95E35344F17
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 19:51:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbhCVSuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 14:50:55 -0400
Received: from mail.bugwerft.de ([46.23.86.59]:37840 "EHLO mail.bugwerft.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230091AbhCVSuo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Mar 2021 14:50:44 -0400
Received: from hq-00021.fritz.box (p57bc9f6a.dip0.t-ipconnect.de [87.188.159.106])
        by mail.bugwerft.de (Postfix) with ESMTPSA id CE42C4C35CD;
        Mon, 22 Mar 2021 18:50:42 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v4 0/2] gpu: drm: add driver for ili9361 panel
Date:   Mon, 22 Mar 2021 19:50:30 +0100
Message-Id: <20210322185032.762277-1-daniel@zonque.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is v3 of the series.

Changelog:

v2 -> v3:
	* Turn Documentation into yaml format

v3 -> v4:
	* Fix reference error in yaml file

Daniel Mack (2):
  dt-bindings: display: add bindings for newhaven,1.8-128160EF
  drm/tiny: add driver for newhaven,1.8-128160EF

 .../bindings/display/ilitek,ili9163.yaml      |  70 ++++++
 drivers/gpu/drm/tiny/Kconfig                  |  13 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/ili9163.c                | 224 ++++++++++++++++++
 4 files changed, 308 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
 create mode 100644 drivers/gpu/drm/tiny/ili9163.c

-- 
2.29.2

