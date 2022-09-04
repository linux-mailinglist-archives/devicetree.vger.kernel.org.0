Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61DFD5AC44A
	for <lists+devicetree@lfdr.de>; Sun,  4 Sep 2022 14:36:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231576AbiIDMgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 08:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233675AbiIDMgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 08:36:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7087B3ED70
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 05:36:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E815060F78
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 12:36:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEDC7C433D7;
        Sun,  4 Sep 2022 12:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662294975;
        bh=843iO0NlggbvI90+V71Qdty2D1bP5T8uOh42PuHCR4I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VWOcbwhJgTiUJOnjPJkzvJgAAtaZ/A14NunjNRuYiGxxCs2TnjFjZ89SSmeSCZuN+
         bj6+xavJaMBzBXONvivEXNoITpXPpENXizyBParY4rF7LKxQNmcboWV42wTOnPdaBG
         eb+xiKydgdklcczgHKYhg3SM+mLLbDOnUYcH3dmfxJlXtgDDC/aR9GCo9BHOY41faL
         3NjL22vBkf57Wlbm0M2mkz+XSs7Wt+Ly3PzYF+XCSDFL8x4szMrxgsiuzdXUKIo3zY
         SnmlkymhkShA5oAm6c5JG8eRvGKeBh2Minyl64XhwFXjz6Xet25gTolWnpfvtjDKXm
         RMglJp7xcXM6Q==
Date:   Sun, 4 Sep 2022 20:36:09 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Add SNVS LPGPR
Message-ID: <20220904123609.GK1728671@dragon>
References: <20220823165602.275931-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220823165602.275931-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 23, 2022 at 06:56:02PM +0200, Marek Vasut wrote:
> Add SNVS LPGPR bindings to MX8M Plus, the LPGPR is used to store
> e.g. boot counter.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
