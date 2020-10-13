Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47E7728D1F1
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 18:13:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731661AbgJMQNq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 12:13:46 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:41012 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726482AbgJMQNo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 12:13:44 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 710F1A53273; Tue, 13 Oct 2020 18:13:42 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Heiko Stuebner <heiko@sntech.de>, Aditya Prayoga <aditya@kobol.io>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 0/2] arm64: Add basic support for Kobol's Helios64
Date:   Tue, 13 Oct 2020 18:13:38 +0200
Message-Id: <20201013161340.720403-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

compared to v2 of this series (starting with Message-Id:
20201012204317.1581752-1-uwe@kleine-koenig.org) I sorted various things
as pointed out by Johan Jonker, dropped and improved a few things. I
hope I got the sorting right now.

This time I also Cc:d lkml (even though I don't think to attract someone
interested in this patch series there).

Uwe Kleine-König (2):
  dt-bindings: vendor-prefixes: Add kobol prefix
  arm64: dts: rockchip: Add basic support for Kobol's Helios64

 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 378 ++++++++++++++++++
 3 files changed, 381 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts

-- 
2.28.0

