Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D077F343D54
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 10:58:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbhCVJ5p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 05:57:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230001AbhCVJ5e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 05:57:34 -0400
X-Greylist: delayed 300 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 22 Mar 2021 02:57:33 PDT
Received: from mail.bugwerft.de (mail.bugwerft.de [IPv6:2a03:6000:1011::59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E167DC061574
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 02:57:33 -0700 (PDT)
Received: from hq-00021.fritz.box (p57bc9f6a.dip0.t-ipconnect.de [87.188.159.106])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 6ACF64C3071;
        Mon, 22 Mar 2021 09:52:30 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v3 0/2] gpu: drm: add driver for ili9361 panel
Date:   Mon, 22 Mar 2021 10:52:21 +0100
Message-Id: <20210322095223.3607627-1-daniel@zonque.org>
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

