Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7FF51E4F33
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 22:23:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728843AbgE0UXu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 16:23:50 -0400
Received: from relmlor1.renesas.com ([210.160.252.171]:1412 "EHLO
        relmlie5.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728550AbgE0UXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 27 May 2020 16:23:50 -0400
X-IronPort-AV: E=Sophos;i="5.73,442,1583161200"; 
   d="scan'208";a="48174858"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 28 May 2020 05:23:48 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
        by relmlir6.idc.renesas.com (Postfix) with ESMTP id 9DF0040E1DA1;
        Thu, 28 May 2020 05:23:46 +0900 (JST)
From:   Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/3] iW-RainboW-G21D-Qseven enable HSUSB, USB2.0, XHCI and Sound
Date:   Wed, 27 May 2020 21:23:30 +0100
Message-Id: <1590611013-26029-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

This patch series enables HSUSB, USB2.0 host mode, XHCI and sound support
on iW-RainboW-G21D-Qseven develpoment board.

Cheers,
Prabhakar

Lad Prabhakar (3):
  ARM: dts: r8a7742-iwg21d-q7: Enable HSUSB, USB2.0 and XHCI
  ARM: dts: r8a7742-iwg21d-q7: Enable SGTL5000 audio codec
  ARM: dts: r8a7742-iwg21d-q7: Sound DMA support via DVC on DTS

 arch/arm/boot/dts/r8a7742-iwg21d-q7.dts | 151 ++++++++++++++++++++++++++++++++
 1 file changed, 151 insertions(+)

-- 
2.7.4

