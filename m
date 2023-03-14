Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7536B88E1
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 04:14:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjCNDNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 23:13:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbjCNDNp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 23:13:45 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EC5E1515F
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 20:13:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 4B12AB815DF
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 03:13:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01599C433EF;
        Tue, 14 Mar 2023 03:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678763619;
        bh=6UzWVTwNPP7LeDv7Xwypy4TQELF1MeLA0UxeD0c1GDY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SIBmcZLkShOyYBrG0hJgyu+/k39mVpE16l0COLsAEEsXjz7waR2SqusA+vegP8Hu6
         s8kfAoRC79a+eRcGV7fxpsCBWiNnOqexvSyde3tHpsVQTRbHHKNjYzOt1/ETts0xk0
         zrS+LeC7VMif7BmQ9ihABQ3iPLadHeUv+G45MmY1myEZM9y/exfuJ0KwjU7fMmM1cn
         M5IB/TL+eHuSrLFtIjV3KjWbvikq+pw0ijbashnmXrw6rXVmN4U0P3CCRT7mz6+REl
         EwiNJ1ud73IIBYlKbL9FnAU57LJ111rhEN2eRRVRyYmKpK7YWNIwXCzH6CjncJzTRb
         22lyocqA/Ekpg==
Date:   Tue, 14 Mar 2023 11:13:31 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Liu Ying <victor.liu@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: soc: imx8mp-media-blk-ctrl: Align
 block controller example name
Message-ID: <20230314031331.GL143566@dragon>
References: <20230227155423.40359-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230227155423.40359-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 27, 2023 at 04:54:19PM +0100, Marek Vasut wrote:
> Align the block controller example node name with Linux imx8mp.dtsi .
> No functional change.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
