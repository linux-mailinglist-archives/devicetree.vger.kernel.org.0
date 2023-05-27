Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A012E713370
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjE0IjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:39:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbjE0IjR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:39:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43513E3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:39:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D478A61212
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:39:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B89C3C433EF;
        Sat, 27 May 2023 08:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685176755;
        bh=7E2uO+HROfkRwVTN+ZuLhMrpnsW9/Aj2ysG0TBWiEUk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nhXRleGcOR0bvTt6USiZURygaXPs5dn1pVRdYPcrp39Xcm1M5Lw2WUY2oFJtAMy7v
         Vmqh/0OoniSUFDY0BMK4EQHMMX1OQ28kJe17JvLMzw6toJxnklJ/uj5JCYE/VahkdM
         Ck1OX7VdYl5KJSt5mzmQvlsxEV07/dT7erhgkxx8qEmfX/WmM6+x+6AzbpBAu08jho
         7O1tQi1AyuEam+S/ezdz2wSSzKQR6nFDwDfVo/W1ASr6wgJx963B58tL2MZMQOMnyk
         g0DY6dcPFZXqZ42eYtPsT9buXSYHyYkQ/Bx8/dHlWNzNmHdu7FFyJyOUFL7TmDLYmr
         nZeMzy8MlqScA==
Date:   Sat, 27 May 2023 16:39:01 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Marek Vasut <marex@denx.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: move noc node to correct position
Message-ID: <20230527083901.GF528183@dragon>
References: <20230516055006.320488-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230516055006.320488-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 07:50:06AM +0200, Alexander Stein wrote:
> The base address of NOC is bigger than aips5, but smaller than aips4.
> 
> Fixes: b86c3afabb4f ("arm64: dts: imx8mp: Add SAI, SDMA, AudioMIX")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied with Fixes tag dropped.

Shawn
