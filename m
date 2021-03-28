Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D966134BEB0
	for <lists+devicetree@lfdr.de>; Sun, 28 Mar 2021 22:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231434AbhC1UB0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 16:01:26 -0400
Received: from mail.bugwerft.de ([46.23.86.59]:56804 "EHLO mail.bugwerft.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229595AbhC1UBF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 28 Mar 2021 16:01:05 -0400
Received: from hq-00021.holoplot.net (p57bc9657.dip0.t-ipconnect.de [87.188.150.87])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 204FF4C5251;
        Sun, 28 Mar 2021 20:01:04 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v5 0/2] gpu: drm: add driver for ili9361 panel
Date:   Sun, 28 Mar 2021 22:00:55 +0200
Message-Id: <20210328200057.1977778-1-daniel@zonque.org>
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

