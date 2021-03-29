Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8FC634D7EE
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 21:15:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231313AbhC2TO2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 15:14:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230346AbhC2TOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 15:14:22 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [IPv6:2a03:6000:1011::59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BF4BCC061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 12:14:22 -0700 (PDT)
Received: from hq-00021.holoplot.net (pd95ef077.dip0.t-ipconnect.de [217.94.240.119])
        by mail.bugwerft.de (Postfix) with ESMTPSA id D16864C5A72;
        Mon, 29 Mar 2021 19:14:21 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v7 0/2] gpu: drm: add driver for ili9361 panel
Date:   Mon, 29 Mar 2021 21:14:12 +0200
Message-Id: <20210329191414.2191095-1-daniel@zonque.org>
X-Mailer: git-send-email 2.30.2
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

v4 -> v5:
	* More yaml file documentation fixes

v5 -> v6:
	* More yaml file documentation fixes

v6 -> v7:
	* Fix ordering of patches

Daniel Mack (2):
  dt-bindings: display: add bindings for newhaven,1.8-128160EF
  drm/tiny: add driver for newhaven,1.8-128160EF

 .../display/panel/ilitek,ili9163.yaml         | 69 +++++++++++++++++++
 drivers/gpu/drm/tiny/Kconfig                  |  13 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/ili9163.c                | 224 ++++++++++++++++++
 4 files changed, 307 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
 create mode 100644 drivers/gpu/drm/tiny/ili9163.c

-- 
2.29.2

