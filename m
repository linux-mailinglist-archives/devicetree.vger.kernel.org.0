Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BED7059B166
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 05:23:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbiHUDVr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 23:21:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiHUDVp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 23:21:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2958205C5
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 20:21:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7E29460C59
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 03:21:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98C55C433D6;
        Sun, 21 Aug 2022 03:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661052103;
        bh=r3hxQJ4bCOAm3RYBGk9xMFn23Yo28S9FOuVufO2+3Ng=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mBfwC76WXGkolNY4LCTh4/Exb5UPvCtjS7C/eHrpF4BvUb3znTbdqOBgQWN7Jl8lW
         8CqxMBg2U1Fm9wM8YU1s16EIQSztldkFwZS401d7E7X4FXQRbvnlqh4SvSqRG3d8/u
         cjJ5FojJg/lQeoP3xTeNP6ncV953C7t4r7CT2cNUuPxjeaOlrDO/AT8xqsaLWWyoG5
         gAvO8hvUDXUPZ8GZ7VIVJrTuPS17qY1Fg4AZPA0LNFgepNAPF46QMKxj86bd9QChIu
         18kF76p5B0ZUHvfDIgxxLom/P/VqFV4JK9RfGx5VWGhim6rTwiE8szmdTw44kYO6X5
         cgSY6+FJF+YPg==
Date:   Sun, 21 Aug 2022 11:21:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6: delete interrupts property if
 interrupts-extended is set
Message-ID: <20220821032138.GL149610@dragon>
References: <20220720064158.1413330-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220720064158.1413330-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 20, 2022 at 08:41:58AM +0200, Alexander Stein wrote:
> In most cases this is related to fsl,err006687-workaround-present, which
> requires a GPIO interrupt next a GIC interrupt.
> 
> This fixes the dtbs_check warning:
> imx6dl-mba6a.dtb: ethernet@2188000: More than one condition true in oneOf schema:
>         {'$filename': 'Documentation/devicetree/bindings/net/fsl,fec.yaml',
> [...]
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
