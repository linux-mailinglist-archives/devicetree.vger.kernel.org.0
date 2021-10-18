Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29B81431F3E
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 16:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232634AbhJROSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 10:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233638AbhJRORs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 10:17:48 -0400
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1651C033E97
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 06:59:12 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:e87a:7c37:aec5:5884])
        by xavier.telenet-ops.be with bizsmtp
        id 7RzA2600C22VXnz01RzAJc; Mon, 18 Oct 2021 15:59:10 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mcTAU-005uyZ-3E; Mon, 18 Oct 2021 15:59:10 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mcTAT-00DdiU-9g; Mon, 18 Oct 2021 15:59:09 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, patches@opensource.cirrus.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] ASoC: wm8962: Conversion to json-schema and fix
Date:   Mon, 18 Oct 2021 15:59:01 +0200
Message-Id: <cover.1634565154.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

	Hi all,

This patch series converts the Wolfson WM8962 Device Tree binding
documentation to json-schema, after fixing an issue in the imx8mn-beacon
DTS file.

Thanks for your comments!

Geert Uytterhoeven (2):
  arm64: dts: imx: imx8mn-beacon: Drop undocumented clock-names
    reference
  ASoC: dt-bindings: wlf,wm8962: Convert to json-schema

 .../devicetree/bindings/sound/wlf,wm8962.yaml | 118 ++++++++++++++++++
 .../devicetree/bindings/sound/wm8962.txt      |  43 -------
 .../freescale/imx8mn-beacon-baseboard.dtsi    |   1 -
 3 files changed, 118 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8962.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/wm8962.txt

-- 
2.25.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
