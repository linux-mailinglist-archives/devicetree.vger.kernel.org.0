Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E84CB42F67D
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 17:01:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237168AbhJOPDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 11:03:45 -0400
Received: from mail.bugwerft.de ([46.23.86.59]:57818 "EHLO mail.bugwerft.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230194AbhJOPDo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Oct 2021 11:03:44 -0400
Received: from hq-00021.fritz.box (p57bc9963.dip0.t-ipconnect.de [87.188.153.99])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 11C9848E468;
        Fri, 15 Oct 2021 15:01:37 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH RESEND v10 0/2] gpu: drm: add driver for ili9361 panel
Date:   Fri, 15 Oct 2021 17:01:29 +0200
Message-Id: <20211015150131.1020878-1-daniel@zonque.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is v10 of the series.

Resending without changes.

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

