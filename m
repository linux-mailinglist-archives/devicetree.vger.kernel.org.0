Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E865547822
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 03:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbiFLBMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Jun 2022 21:12:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230074AbiFLBMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Jun 2022 21:12:22 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A5A111
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 18:12:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 21B2BB80B49
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 01:12:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DC85C3411B;
        Sun, 12 Jun 2022 01:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654996338;
        bh=vGc+nnhBsyRvm0POJz9TPOYA5fNLhSo553NkWIYQRDA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AfcSWu1abRvkp1NkNqGV89vOgPSnc2QsLmKL3E0AZVA0Kt5K9/nobrAlek8WbiI7c
         FJCxq/tnxg7aYR0x/qspv5XOGoKmlQ5QDNavzhReFYBD+1ZmbEDmzzKEzrvFhV4/wE
         mloFatEaTYdhaaapG/yq2t1S2JLvZRr81ymgeGotavGaxFta3Yl2i0ufqin13O0rrJ
         nQTMDs1kwdOTrqoWxNrpeEKsiPtLy9Z1KfRVKBKQrvk0VgCv/7Ygx0zHLw156/E8j+
         lmKL5lFVDegE0Le7CrxKngBvtXsfgSzwSfjYZALhW+9yE7euPh/DRhMZanUsX5kmnE
         T61GG1cfpmB2A==
Date:   Sun, 12 Jun 2022 09:12:04 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mm: Add SNVS LPGPR
Message-ID: <20220612011204.GO254723@dragon>
References: <20220523123223.9031-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220523123223.9031-1-marex@denx.de>
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 23, 2022 at 02:32:23PM +0200, Marek Vasut wrote:
> Add SNVS LPGPR bindings to MX8M Mini, the LPGPR is used to store
> boot counter.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks!
