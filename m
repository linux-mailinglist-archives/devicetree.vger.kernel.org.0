Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 004BA606B5
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 15:39:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727498AbfGENjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jul 2019 09:39:49 -0400
Received: from relmlor2.renesas.com ([210.160.252.172]:1741 "EHLO
        relmlie6.idc.renesas.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726583AbfGENjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jul 2019 09:39:49 -0400
X-IronPort-AV: E=Sophos;i="5.62,455,1554735600"; 
   d="scan'208";a="20441057"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 05 Jul 2019 22:39:45 +0900
Received: from fabrizio-dev.ree.adwin.renesas.com (unknown [10.226.36.196])
        by relmlir6.idc.renesas.com (Postfix) with ESMTP id D9F4E42559A9;
        Fri,  5 Jul 2019 22:39:42 +0900 (JST)
From:   Fabrizio Castro <fabrizio.castro@bp.renesas.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
        Simon Horman <horms@verge.net.au>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>, xu_shunji@hoperun.com
Subject: [PATCH 0/3] Add HDMI audio support to the HiHope RZ/G2[MN]
Date:   Fri,  5 Jul 2019 14:39:36 +0100
Message-Id: <1562333979-28516-1-git-send-email-fabrizio.castro@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear All,

this series adds HDMI audio support to the HiHope RZ/G2[MN].

Thanks,
Fab

Fabrizio Castro (3):
  arm64: dts: renesas: r8a774a1: Use extended audio dmac register
  arm64: dts: renesas: r8a774a1: Add SSIU support for sound
  arm64: dts: renesas: hihope-common: Add HDMI audio support

 arch/arm64/boot/dts/renesas/hihope-common.dtsi |  48 +++++
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi      | 253 +++++++++++++++++++++++--
 2 files changed, 280 insertions(+), 21 deletions(-)

-- 
2.7.4

