Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADE5ECDD26
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 10:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727028AbfJGIWp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 04:22:45 -0400
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.81]:24341 "EHLO
        mo4-p02-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727317AbfJGIWp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 04:22:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570436564;
        s=strato-dkim-0002; d=fpond.eu;
        h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
        Subject:Sender;
        bh=K4lPRF6A8fnUsH8X93B6bF22TBUJNSeza1MuRKIljOM=;
        b=S+eAtVBo+Si9LoWTFLdRsrncX4mdu1r+aVHxms9JJ1UztwZ9IQcb+aN7niUI9Ri0fq
        SE22c36RtnlJcuX/DcsLm9+B/8Iy8iYA5Yfx5r8mgq8pgieS9bt1gp34sIeaBzOJzok4
        6xzUL/Waq2J53fV5Vlxh6K+7jIVaBtTP+TYS2sgqURsl4fbdp70edLgU+GCRyaD5YUc4
        TThvkBdqZjiBRYGyyC1g4ezg+XoHbegQvfQLh1YpRLjCiTFRMaMXbKKKwDEEBSCiWXeC
        xkgHhwfWuZnTWWaRN5f45lIgWAvTAkiiwOgYI6v0NI+TeNY1r/h9/KIRL3ty6LDJdzJ7
        gEVQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73dmm4I5W0/AvA67Ot4fvR82Ncd3IXOg=="
X-RZG-CLASS-ID: mo00
Received: from groucho.site
        by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
        with ESMTPSA id i07086v978MWftY
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH bits, eq. 15360 bits RSA))
        (Client did not present a certificate);
        Mon, 7 Oct 2019 10:22:32 +0200 (CEST)
From:   Ulrich Hecht <uli@fpond.eu>
To:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, jitao.shi@mediatek.com
Cc:     robh+dt@kernel.org, p.zabel@pengutronix.de,
        enric.balletbo@collabora.com, djkurtz@chromium.org,
        architt@codeaurora.org, matthias.bgg@gmail.com,
        mark.rutland@arm.com, stonea168@163.com, andy.yan@rock-chips.com,
        ajaykumar.rs@samsung.com, vpalatin@chromium.org,
        cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
        ck.hu@mediatek.com, devicetree@vger.kernel.org,
        kernel@pengutronix.de, pawel.moll@arm.com,
        ijc+devicetree@hellion.org.uk, inki.dae@samsung.com,
        yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
        rahul.sharma@samsung.com, galak@codeaurora.org,
        seanpaul@chromium.org, Ulrich Hecht <uli@fpond.eu>
Subject: [PATCH v20 0/2] PS8640 MIPI-to-eDP bridge
Date:   Mon,  7 Oct 2019 10:22:27 +0200
Message-Id: <1570436549-8694-1-git-send-email-uli@fpond.eu>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

This revision fixes a minor issue that keeps the driver from probing on
the Elm platform. Thanks to Matthias Brugger for testing.

This driver seems to have fallen by the wayside because, while otherwise
fine, it has a firmware update feature that requires a blob that is not in
the linux-firmware repo.[1]

Whatever the cause for that may be, the update code is entirely optional
(my chip works fine with whatever firmware is currently installed), so I
have removed it in order to get this merged after all. I have also
followed various trivial API changes that have piled up since 2016; see
the individual patches for details.

I'm using this driver on an Acer Chromebook R13 ("Elm"); see
https://github.com/uli/kernel/tree/elm-working-5.4.

CU
Uli

[1] https://patchwork.kernel.org/patch/9427543/


Jitao Shi (2):
  Documentation: bridge: Add documentation for ps8640 DT properties
  drm/bridge: Add I2C based driver for ps8640 bridge

 .../devicetree/bindings/display/bridge/ps8640.txt  |  44 ++
 drivers/gpu/drm/bridge/Kconfig                     |  12 +
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/parade-ps8640.c             | 672 +++++++++++++++++++++
 4 files changed, 729 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.txt
 create mode 100644 drivers/gpu/drm/bridge/parade-ps8640.c

-- 
2.7.4

