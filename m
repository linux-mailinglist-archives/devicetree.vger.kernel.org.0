Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B10D746E1A9
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 05:46:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbhLIEtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 23:49:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbhLIEtm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 23:49:42 -0500
Received: from mail.marcansoft.com (marcansoft.com [IPv6:2a01:298:fe:f::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA938C061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 20:46:09 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id 2F72441E64;
        Thu,  9 Dec 2021 04:46:05 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Sven Peter <sven@svenpeter.dev>, Rob Herring <robh+dt@kernel.org>
Cc:     Hector Martin <marcan@marcan.st>,
        Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 0/3] Apple PMGR fixup: Implement support for min-ps
Date:   Thu,  9 Dec 2021 13:44:58 +0900
Message-Id: <20211209044501.67028-1-marcan@marcan.st>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi folks,

Just a brief add-on series to the PMGR submission, which adds support
for configuring the minimum power state for auto-PM mode. This is
apparently required to avoid breaking DCP (which isn't upstream yet).

This applies on top of the previous PMGR submission [1]

[1] https://lore.kernel.org/linux-arm-kernel/20211124073419.181799-1-marcan@marcan.st/

Hector Martin (3):
  dt-bindings: power: apple,pmgr-pwrstate: Add apple,min-ps prop
  soc: apple: apple-pmgr-pwrstate: Add auto-PM min level support
  arm64: dts: apple: t8103: Add apple,min-ps to DCP PMGR nodes

 .../devicetree/bindings/power/apple,pmgr-pwrstate.yaml    | 8 ++++++++
 arch/arm64/boot/dts/apple/t8103-pmgr.dtsi                 | 2 ++
 drivers/soc/apple/apple-pmgr-pwrstate.c                   | 8 ++++++++
 3 files changed, 18 insertions(+)

-- 
2.33.0

