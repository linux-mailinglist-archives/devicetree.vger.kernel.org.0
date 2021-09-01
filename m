Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3E383FDF54
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 18:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245425AbhIAQHK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 12:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245211AbhIAQGi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 12:06:38 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [IPv6:2a03:6000:1011::59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E5BEDC061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 09:05:41 -0700 (PDT)
Received: from hq-00021.. (unknown [46.183.103.17])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 5D00532D3FA;
        Wed,  1 Sep 2021 16:03:58 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v10 0/2] gpu: drm: add driver for ili9361 panel
Date:   Wed,  1 Sep 2021 18:03:27 +0200
Message-Id: <20210901160329.1519656-1-daniel@zonque.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is v10 of the series.

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

v7 -> v8:
	* More yaml file documentation fixes

v8 -> v9:
	* Addressed some minor issues pointed out by Thomas Zimmermann
	* Rebased

v9 -> v10:
	* Re-apply the yaml file in favour of the txt file

Daniel Mack (2):
  dt-bindings: display: add bindings for newhaven,1.8-128160EF
  drm/tiny: add driver for newhaven,1.8-128160EF

 .../display/panel/ilitek,ili9163.yaml         |  69 ++++++
 drivers/gpu/drm/tiny/Kconfig                  |  13 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/ili9163.c                | 224 ++++++++++++++++++
 4 files changed, 307 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
 create mode 100644 drivers/gpu/drm/tiny/ili9163.c

-- 
2.31.1

