Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41612153C67
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2020 02:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727577AbgBFBHN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Feb 2020 20:07:13 -0500
Received: from foss.arm.com ([217.140.110.172]:53526 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727307AbgBFBHM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 Feb 2020 20:07:12 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B36A30E;
        Wed,  5 Feb 2020 17:07:12 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DBC7A3F68E;
        Wed,  5 Feb 2020 17:07:10 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, heiko@sntech.de
Cc:     alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        pgwipeout@gmail.com
Subject: [PATCH 0/3] Clean up RK3328 audio codec GPIO control
Date:   Thu,  6 Feb 2020 01:07:10 +0000
Message-Id: <cover.1580950046.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Investigating the RK3328 GPIO_MUTE pin in the context of boards that use
it to control a regulator has highlighted that the audio codec driver
currently has some hard-coded implicit control of that pin. Fortunately
those boards don't currently enable the audio codec, because it would be
pretty terrible if playing audio changed the SD card I/O voltage. This
is a first crack at making things better.

Robin.


Robin Murphy (3):
  ASoC: dt-bindings: Make RK3328 codec GPIO explicit
  ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
  arm64: dts: rockchip: Describe RK3328 GPIO_MUTE users

 .../bindings/sound/rockchip,rk3328-codec.txt  |  7 ++++++-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |  1 +
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |  1 +
 sound/soc/codecs/rk3328_codec.c               | 20 +++++--------------
 4 files changed, 13 insertions(+), 16 deletions(-)

-- 
2.17.1

