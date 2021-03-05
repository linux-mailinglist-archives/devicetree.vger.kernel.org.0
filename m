Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 736FB32EB71
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 13:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232729AbhCEMoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 07:44:24 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:37774 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233685AbhCEMn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 07:43:59 -0500
Received: from guri.fritz.box (p200300c7cf38380008df3f9b2ff1d151.dip0.t-ipconnect.de [IPv6:2003:c7:cf38:3800:8df:3f9b:2ff1:d151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: dafna)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 67D611F46A71;
        Fri,  5 Mar 2021 12:43:57 +0000 (GMT)
From:   Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     a.hajda@samsung.com, narmstrong@baylibre.com,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@siol.net, airlied@linux.ie, daniel@ffwll.ch,
        chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
        enric.balletbo@collabora.com, drinkcat@chromium.org,
        hsinyi@chromium.org, kernel@collabora.com, dafna3@gmail.com,
        dafna.hirschfeld@collabora.com, robh+dt@kernel.org
Subject: [PATCH v5 0/2] Add support for ANX7688
Date:   Fri,  5 Mar 2021 13:43:49 +0100
Message-Id: <20210305124351.15079-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ANX7688 is a typec port controller that also converts HDMI to DP.
ANX7688 is found on Acer Chromebook R13 (elm) and on Pine64 PinePhone.

On Acer Chromebook R13, the device is powered-up and controller by the
Embedded Controller. Therefore the dt-bindings requires
only the 'compatible' and 'reg' properties.

In v4 of this set, the device was added as an 'mfd' device
and an additional 'bridge' device for the HDMI-DP conversion, see [1].
In this version we add the device as a typec controller.

[1] https://lkml.org/lkml/2020/3/18/64

Changes from v4:
Send the device as a typec controller instead of mfd.
The bridge driver should therefore convert from a platform
driver to an i2c driver.

Dafna Hirschfeld (1):
  dt-bindings: usb: add analogix,anx7688.yaml

Enric Balletbo i Serra (1):
  drm/bridge: anx7688: Add ANX7688 bridge driver support

 .../bindings/usb/analogix,anx7688.yaml        | 177 +++++++++++++++++
 drivers/gpu/drm/bridge/analogix/Kconfig       |  11 ++
 drivers/gpu/drm/bridge/analogix/Makefile      |   1 +
 .../drm/bridge/analogix/analogix-anx7688.c    | 186 ++++++++++++++++++
 4 files changed, 375 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/analogix,anx7688.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx7688.c

-- 
2.17.1

