Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 363167134DB
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:01:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjE0NBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:01:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjE0NBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:01:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54D94B2
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:01:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D332060C95
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E0A0C433D2;
        Sat, 27 May 2023 13:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685192469;
        bh=F9xTzeEOGRmn8fyWTyrhNj2/z4IM29BIWQUvrump24A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VUv15hwoNzSd2m1ST90hEmDIneJiigCUL9psgX3zXM9pY+bPaC4ghmiKyDwVCuZbm
         LleFQepS6oajbvJIv5wLMwQ+NQL9frkLRfK4ogFgR3c86m/vdlT77+ycmnqMMhO70a
         PUqjt6rZI22OFFUjP4Wh+RQJMDlD6N1wW1BPgY5Rl3OjyU2z2NOzDoCCDeC/PdiJJi
         OPuYrgJr26M78O6IXFLfo2bZLzReYakwgquPefzWbZKeuNwfkNXhKTWzUSQuy2AwJs
         /oUai95zyo2XNckxAXnQxlPgM6YkgK2G4561Iu2jyoCC61k1c2GxFjyP9a/iCeRq64
         qB0QnToSo7CEw==
Date:   Sat, 27 May 2023 21:00:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
Subject: Re: [PATCH v2] arm64: dts: imx8-ss-dma: assign default clock rate
 for lpuarts
Message-ID: <20230527130056.GW528183@dragon>
References: <20230526153854.469239-1-shenwei.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526153854.469239-1-shenwei.wang@nxp.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 26, 2023 at 10:38:54AM -0500, Shenwei Wang wrote:
> Add the assigned-clocks and assigned-clock-rates properties for the
> LPUARTx nodes. Without these properties, the default clock rate
> used would be 0, which can cause the UART ports to fail when open.
> 
> Fixes: 35f4e9d7530f ("arm64: dts: imx8: split adma ss into dma and audio ss")
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Applied, thanks!
