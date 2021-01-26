Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD5230471B
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 19:54:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388135AbhAZRMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:12:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392736AbhAZQ2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 11:28:47 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D998DC061574
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 08:28:01 -0800 (PST)
Received: from ramsan.of.borg ([84.195.186.194])
        by xavier.telenet-ops.be with bizsmtp
        id MUTz2400X4C55Sk01UTzMR; Tue, 26 Jan 2021 17:27:59 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l4RCB-000wY3-7j; Tue, 26 Jan 2021 17:27:59 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l4RCA-0086nF-QY; Tue, 26 Jan 2021 17:27:58 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema 0/2] dt-schema: Add percentage
Date:   Tue, 26 Jan 2021 17:27:54 +0100
Message-Id: <20210126162756.1932692-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

	Hi Rob,

This patch series adds percentages to the lists of recognized
properties, as requested in[1].

Thanks!

[1] "Re: [PATCH v2] dt-bindings: clk: versaclock5: Miscellaneous fixes
     and improvements:"
    https://lore.kernel.org/linux-devicetree/20210125212442.GA1019390@robh.at.kernel.org/

Geert Uytterhoeven (2):
  schemas: property-units: Add percentage
  meta-schemas: vendor-props: Add percentage

 meta-schemas/vendor-props.yaml | 2 +-
 schemas/property-units.yaml    | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

-- 
2.25.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
