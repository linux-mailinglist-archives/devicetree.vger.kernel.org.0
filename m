Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B6D932618F
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 11:50:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230225AbhBZKus (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 05:50:48 -0500
Received: from mail.manjaro.org ([176.9.38.148]:53124 "EHLO mail.manjaro.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229550AbhBZKur (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Feb 2021 05:50:47 -0500
X-Greylist: delayed 1187 seconds by postgrey-1.27 at vger.kernel.org; Fri, 26 Feb 2021 05:50:47 EST
Received: from localhost (localhost [127.0.0.1])
        by mail.manjaro.org (Postfix) with ESMTP id 78BB93DC0C8B;
        Fri, 26 Feb 2021 11:30:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
        by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 0fz2WyYIwnQj; Fri, 26 Feb 2021 11:30:16 +0100 (CET)
From:   Tobias Schramm <t.schramm@manjaro.org>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 0/3] Add i2s support for sun8i V3 and S3 SoCs
Date:   Fri, 26 Feb 2021 11:30:25 +0100
Message-Id: <20210226103028.729172-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The V3 and S3 sun8i SoCs have an i2s peripheral. This set of
patches adds it to their dts.

Additionally this patchset also adds the V3s DMA controller to its
dts, since the i2s peripheral requires DMA to function properly.

Tobias Schramm (3):
  ARM: dts: sun8i: V3s/V3/S3: add dma controller node
  ARM: dts: sun8i: V3s/V3/S3: add soc node label
  ARM: dts: sun8i: V3/S3: add i2s peripheral

 arch/arm/boot/dts/sun8i-v3.dtsi  | 15 +++++++++++++++
 arch/arm/boot/dts/sun8i-v3s.dtsi | 11 ++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

-- 
2.30.1

