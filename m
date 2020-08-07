Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4F3323E8E6
	for <lists+devicetree@lfdr.de>; Fri,  7 Aug 2020 10:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727057AbgHGIaD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Aug 2020 04:30:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726382AbgHGIaC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Aug 2020 04:30:02 -0400
Received: from mxwww.masterlogin.de (mxwww.masterlogin.de [IPv6:2a03:2900:1:1::b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8282AC061574
        for <devicetree@vger.kernel.org>; Fri,  7 Aug 2020 01:30:02 -0700 (PDT)
Received: from mxout4.routing.net (unknown [192.168.10.112])
        by forward.mxwww.masterlogin.de (Postfix) with ESMTPS id 83489962D9;
        Fri,  7 Aug 2020 08:29:59 +0000 (UTC)
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
        by mxout4.routing.net (Postfix) with ESMTP id 3A2B610149E;
        Fri,  7 Aug 2020 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
        s=20200217; t=1596788999;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=wsClCJOlh8nQcRXuQ4gJeORkwcWKsYRo9CkahiSVwFs=;
        b=R68A8k1ZYv6NmCjF4ynccSvMG+0EG5Q2uB/fdU6Ij2znksMXcHYzj0RrReHIoZAwoODh3u
        DllYIHVIC966t3eRHy9qegKLq8GSfwYq1PP4pQsKP7RGaF1eNaO2sSXiiuHndIN7kOc/p2
        3epNkwIVOhf4KzfMUCZdbLPW79HLGxE=
Received: from localhost.localdomain (fttx-pool-37.60.0.190.bambit.de [37.60.0.190])
        by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 80E39406DF;
        Fri,  7 Aug 2020 08:29:58 +0000 (UTC)
From:   Frank Wunderlich <linux@fw-web.de>
To:     linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/2] move/add display relevant nodes to mt7623n
Date:   Fri,  7 Aug 2020 10:29:56 +0200
Message-Id: <20200807082956.7004-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Frank Wunderlich <frank-w@public-files.de>

based on series from David Woodhouse [1]
i moved more display-nodes out of mt7623.dtsi to new mt7623n.dtsi
and changed last part from my series [2] to add these nodes to this new dtsi

[1] https://patchwork.kernel.org/project/linux-mediatek/list/?series=329209
[2] https://patchwork.kernel.org/patch/11700699/

Frank Wunderlich (1):
  arm: dts: mt7623: move more display-related nodes to mt7623n.dtsi

Ryder Lee (1):
  arm: dts: mt7623: add display subsystem related device nodes

 arch/arm/boot/dts/mt7623.dtsi                 |  99 -------
 arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts |  72 +++++
 arch/arm/boot/dts/mt7623n-rfb-emmc.dts        |  72 +++++
 arch/arm/boot/dts/mt7623n.dtsi                | 270 ++++++++++++++++++
 4 files changed, 414 insertions(+), 99 deletions(-)

-- 
2.25.1

