Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB21249CB5A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 14:52:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241643AbiAZNwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 08:52:01 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:25818 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234796AbiAZNwA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 08:52:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643205120; x=1674741120;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hjq+c5/iZp2BdRPp9VzXEeRWCA1eKYaL5fFIbkFOglA=;
  b=fjRVNUlH5ES8NTLQfwuKaPCTZzBhcZWv9QIVlPfRBZ1VcfSYlElxWXLw
   kOvwjDAH2xpt5nL9XN0hGr5cNoku278T5gNNt814AO6WtIa+qGuPa+yjp
   ZGNNEprgooUOFLikXd69E6QdDRWHFLGSxIPXCiMPjV/qs5eqTT77HzkuI
   eMKxTdOGT/LOQ2GaZCLDbey3jdPLG9d2ERhm6acBAh2je+cp5d8zWlUDj
   AXMDcvdSKx9h8hDisBSgvFSG/sEBMQg00mQvTxaCusbXs+MzWstR+MeRK
   2yplbNIFIWPgSYj+Fnyohe8WK7f0rNn2TaMTBY2MnA6NjpXh/dnUXY+2B
   w==;
X-IronPort-AV: E=Sophos;i="5.88,318,1635199200"; 
   d="scan'208";a="21724848"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Jan 2022 14:51:59 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 26 Jan 2022 14:51:59 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 26 Jan 2022 14:51:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643205119; x=1674741119;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hjq+c5/iZp2BdRPp9VzXEeRWCA1eKYaL5fFIbkFOglA=;
  b=bJcgyOsFIG4IjH8jldfubrKKswQt30EbTJcsUP3DQKbomhRG9qN3Sojj
   bC/X8rukb37YYcpId2vHCR/rCHkT8MGV2JAD74jfk83Yo/liNyBzbal9D
   084ABYqjZa0KB/HhbLOgCceWKhcE7Rv68CDozSebY3NGlPewxVustIhNn
   IOg+fAE6j2gFVnCRwvbdpghNB/jdrdiVJ2RkVAEeKvXHYPHls1a9n/G4N
   vl9SFrow3rmydHSBHpzJLBAZ4u5DkFmyRGR/OAKUEEReEM7v4/Ickumg9
   Iz3IPt9rhPn+I/FWpbopvRP5p3JXkBHKlBAeKd35h1HfyDe+QrfUDWwAS
   w==;
X-IronPort-AV: E=Sophos;i="5.88,318,1635199200"; 
   d="scan'208";a="21724847"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Jan 2022 14:51:59 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2B923280065;
        Wed, 26 Jan 2022 14:51:59 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: (EXT) [PATCH 9/9] arm64: dts: imx8mp: add GPU nodes
Date:   Wed, 26 Jan 2022 14:51:58 +0100
Message-ID: <4527167.VLH7GnMWUR@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220119134027.2931945-10-l.stach@pengutronix.de>
References: <20220119134027.2931945-1-l.stach@pengutronix.de> <20220119134027.2931945-10-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 19. Januar 2022, 14:40:27 CET schrieb Lucas Stach:
> Add the DT nodes for both the 3D and 2D GPU cores found on the i.MX8MP.
> 
> etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
> etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0

Unfortunately it does not work when CONFIG_DRM_ETNAVIV=m
etnaviv-gpu 38000000.gpu: model: GC0, revision: 0
etnaviv-gpu 38000000.gpu: Unknown GPU model
etnaviv-gpu 38008000.gpu: model: GC0, revision: 0
etnaviv-gpu 38008000.gpu: Unknown GPU model

When I use CONFIG_DRM_ETNAVIV=y, I get the same log message as you. It's not 
related to this patch, but I have no clue if the cause is in blk-ctrl or pgc.

I think (don't know for sure yet) my random errors on USB side are gone when 
USB drivers (PHY as well) are built-in. But I might be wrong here.

Best regards,
Alexander



