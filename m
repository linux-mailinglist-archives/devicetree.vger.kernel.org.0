Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36C8965A480
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 14:05:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231622AbiLaNFy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 08:05:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231637AbiLaNFy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 08:05:54 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD3E81F0
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 05:05:49 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 614B2B8069A
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 13:05:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 128DDC433EF;
        Sat, 31 Dec 2022 13:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672491947;
        bh=khaOy6zZ+NTlLsj/67xtJE5T0jM6MsiOvymdVvqEXBU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r86mkk0Kk0ZatexM0/itpu6h7/B4y8vdmybtxge+CdkHMmlCwCE6WRP98js0Vcpob
         j530mhDKNC/ni8/0NNQzzhCijqPJoHyP2lphbAJ+nIkvvQYxcVNtGtTaaGWhjnzidI
         U3DegSIhJ6B3ogKuk+qnfrsPGeKQlGQHOrOtdbjcj8JWf87ifDDYkzpfcfgzqa1Pbu
         9eGnSZq/Oo8uKCxdd5/Smnqa6Wr8WoLkvWANgPQVHVyRP6lGlvoYQztv/nsNFPpTFD
         ++R8TfiXmGyaBMuSwK2ZuPJX/56lZkCrt0KXp4gB4Ejj1ajC/lAug7+J/jwtsLR8dK
         FbqH/hFiBjknA==
Date:   Sat, 31 Dec 2022 21:05:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     haibo.chen@nxp.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, peng.fan@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx93-11x11-evk: correct clock and strobe
 pad setting
Message-ID: <20221231130538.GA6112@T480>
References: <20221208090658.3591981-1-haibo.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221208090658.3591981-1-haibo.chen@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 08, 2022 at 05:06:58PM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> For clock and strobe pad of usdhc, need to config as pull down.
> Current pad config set these pad as both pull up and pull down,
> this is wrong, so fix it here.
> Find this issue when enable HS400ES mode on one Micron eMMC chip,
> CMD8 always meet CRC error in HS400ES/HS400 mode.
> 
> Fixes: e37907bd8294 ("arm64: dts: freescale: add i.MX93 11x11 EVK basic support")
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied, thanks!
