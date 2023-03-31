Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8050E6D190B
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 09:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbjCaHxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 03:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231365AbjCaHxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 03:53:12 -0400
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF6E4C10
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 00:52:38 -0700 (PDT)
Received: from ramsan.of.borg ([84.195.187.55])
        by xavier.telenet-ops.be with bizsmtp
        id evsc290061C8whw01vsctq; Fri, 31 Mar 2023 09:52:36 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtp (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1pi9Y6-00FTBv-G8;
        Fri, 31 Mar 2023 09:52:35 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
        (envelope-from <geert@linux-m68k.org>)
        id 1pi9Yp-008RZx-PZ;
        Fri, 31 Mar 2023 09:52:35 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/3] of: address: Miscellaneous-improvements
Date:   Fri, 31 Mar 2023 09:52:27 +0200
Message-Id: <cover.1680248888.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.4 required=5.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

	Hi Rob, Frank,

This patch series updates the linuxdoc comments for the return values
for of_address_to_resource() and of_pci_range_to_resource(), and removes
forward declarations.

Thanks for your comments!

Geert Uytterhoeven (3):
  of: address: Document return value of of_address_to_resource()
  of: address: Fix documented return value of of_pci_range_to_resource()
  of: address: Reshuffle to remove forward declarations

 drivers/of/address.c | 271 +++++++++++++++++++++----------------------
 1 file changed, 134 insertions(+), 137 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
