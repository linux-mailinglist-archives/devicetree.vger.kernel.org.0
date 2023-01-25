Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 939A667C137
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 00:57:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjAYX5z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 18:57:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231360AbjAYX5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 18:57:54 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34734113DA
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 15:57:53 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C25D6B81C61
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:57:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37102C433D2;
        Wed, 25 Jan 2023 23:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674691070;
        bh=+UI2oidHudLC8hLsWw48+PbEwA+zaKTOclsc/bgiP2g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=f0M+ewff1L0mwM5sB1Lk951LFeK3DK3UD+ahyG/jj+csL3jNj0+9ALs3F0eFNRFmx
         J++1zMiCNTeDnI86joApw4p0KW5ZWc5Fyb5Y99Gt0N33aahxD+Ni5n+WX9aI6HIqiJ
         9lcXUfsvBxL629oru+7PSQeNgV91h/T+w0/65pgLvmCrDg1nPcnW/hh2jwHQAfkQgV
         PP0c/wvYZa8QNXUBF7sYwMzrjAApyYOPEXqKOCSWu4ZY3I+TZkc3OzCgb5NFs8c6Nx
         neqTv052UaRh3mqA5NGC0j2OmW+1NoJI0S6GKxs/3YBpP+JVzqaK1D7duzjXASBLaL
         nVkdejQs89jEg==
Date:   Thu, 26 Jan 2023 07:57:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Mark Brown <broonie@kernel.org>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: vfxxx: Swap SAI DMA order
Message-ID: <20230125235733.GG20713@T480>
References: <20230105144145.165010-1-marex@denx.de>
 <20230105144145.165010-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230105144145.165010-2-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 05, 2023 at 03:41:45PM +0100, Marek Vasut wrote:
> Swap the SAI dmas and dma-names to match the order documented in
> Documentation/devicetree/bindings/sound/fsl,sai.yaml
> No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
