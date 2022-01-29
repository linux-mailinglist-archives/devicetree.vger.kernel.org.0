Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72BF84A2C4C
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 08:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343817AbiA2HJV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 02:09:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243344AbiA2HJU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 02:09:20 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F216C061714
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 23:09:20 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2906360BC9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 07:09:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51722C340E5;
        Sat, 29 Jan 2022 07:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643440159;
        bh=CzbIYsp91X1pn1UCSDfrc6uApLJukpzhh/9ACtuQEbE=;
        h=From:To:Cc:Subject:Date:From;
        b=WLMifrHL6ynisHo+UtW6KRHGCyRzplruTzO76iYBhyvSziICqrGFl7jTBujEJWU4S
         5S1X6+H+DjqsnV6cmG+3V7rCzFXgrryGrL+ojgpprAaJPM56hy6KXrSemUJB1SXRQe
         MyOXZ2Ng+iU253zBb7mcBDgDSh8NuZb/WBa51Vs1OWVfZ1WkI/ye1rIUdpcv1KFul1
         8MrofgKeDpxpS7wtRj2N92LBuJnP63YZhBvJ/+85kuvhrS20nVRt/X3vvZkzLnXXCZ
         kvXKfYlJpXkja85L2iEqaXxE+vwqRggS06FEbPnXx8obWKnn6857vBDfsv4SfmkzXM
         zVQLDi6SYjSag==
From:   Shawn Guo <shawnguo@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/2] Improve fsl-ls1028a-qds device tree overlay build
Date:   Sat, 29 Jan 2022 15:09:10 +0800
Message-Id: <20220129070912.9836-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It makes a couple of improvments on fsl-ls1028a-qds device tree overlay
build.  Compile tested only.

Shawn Guo (2):
  arm64: dts: fsl-ls1028a-qds: Drop overlay syntax hard coding
  arm64: dts: freescale: Use overlay target for simplicity

 arch/arm64/boot/dts/freescale/Makefile        |  29 ++--
 .../dts/freescale/fsl-ls1028a-qds-13bb.dts    | 146 ++++++++----------
 .../dts/freescale/fsl-ls1028a-qds-65bb.dts    | 138 +++++++----------
 .../dts/freescale/fsl-ls1028a-qds-7777.dts    |  99 ++++++------
 .../dts/freescale/fsl-ls1028a-qds-85bb.dts    | 134 +++++++---------
 .../dts/freescale/fsl-ls1028a-qds-899b.dts    |  86 +++++------
 .../dts/freescale/fsl-ls1028a-qds-9999.dts    |  97 ++++++------
 7 files changed, 313 insertions(+), 416 deletions(-)

-- 
2.17.1

