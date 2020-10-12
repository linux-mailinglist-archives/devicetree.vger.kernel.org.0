Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD5928C2CB
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 22:43:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726396AbgJLUnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 16:43:23 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:45430 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727342AbgJLUnX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 16:43:23 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 2BE79A5218B; Mon, 12 Oct 2020 22:43:21 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Aditya Prayoga <aditya@kobol.io>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: Add basic support for Kobol's Helios64
Date:   Mon, 12 Oct 2020 22:43:15 +0200
Message-Id: <20201012204317.1581752-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

this is v2 of the series. Compared to the (implicit) v1 sent with
Message-Id: 20200925214003.27186-1-uwe@kleine-koenig.org I removed most
OPPs to make the the machine run stable. I guess this can be better
fixed by fine tuning the regulator setup, but I don't have the equipment
to find the actual problem. Also I added a copyright hint, a temperature
sensor and a link to the vendor wiki. The first patch got an Ack in the
first round that I added, too.

Best regards
Uwe

Uwe Kleine-König (2):
  dt-bindings: vendor-prefixes: Add kobol prefix
  arm64: dts: rockchip: Add basic support for Kobol's Helios64

 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 382 ++++++++++++++++++
 3 files changed, 385 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts

-- 
2.28.0

