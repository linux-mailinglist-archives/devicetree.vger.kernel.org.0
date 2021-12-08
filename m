Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9438C46D5A2
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 15:27:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235112AbhLHObH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 09:31:07 -0500
Received: from relmlor1.renesas.com ([210.160.252.171]:30372 "EHLO
        relmlie5.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S235110AbhLHObH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 09:31:07 -0500
X-IronPort-AV: E=Sophos;i="5.88,189,1635174000"; 
   d="scan'208";a="102813262"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 08 Dec 2021 23:27:34 +0900
Received: from localhost.localdomain (unknown [10.226.92.71])
        by relmlir6.idc.renesas.com (Postfix) with ESMTP id 3F68F43E1537;
        Wed,  8 Dec 2021 23:27:32 +0900 (JST)
From:   Biju Das <biju.das.jz@bp.renesas.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Biju Das <biju.das.jz@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] Enable Thermal support for RZ/G2L
Date:   Wed,  8 Dec 2021 14:27:27 +0000
Message-Id: <20211208142729.2456-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series aims to enable TSU support for RZ/G2L.

it depend upon [1] and [2]

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20211208&id=9460347192add5644236d492f79ecab6d83504d4
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20211208&id=673c68bd48390dad01f7d17670de3e33b60860ac

Biju Das (2):
  arm64: dts: renesas: r9a07g044: Add TSU node
  arm64: dts: renesas: r9a07g044: Create thermal zone to support IPA

 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

-- 
2.17.1

