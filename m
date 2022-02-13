Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54CED4B38D8
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 03:03:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232841AbiBMCDW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 21:03:22 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbiBMCDW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 21:03:22 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C0145FF1C
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 18:03:17 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 06278B80968
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 02:03:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06EE2C340E7;
        Sun, 13 Feb 2022 02:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644717794;
        bh=K6pYr/ya0Jy2b/eQ2cSsmxg3nk0n2kf30JmVUD2iI88=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iPoJDyyZPApDdJE15Zj0Dsbvvku5qYJPYLmV9qPIAnO9d90su4IqzpdrB38srOPPC
         Z7rAuoo2cuR4lD+cJzbDtqnARJVFAbUml7o08+zN4KMtMZxL09QbsgYUaYECq55PrE
         fMCaWEXSrYtdWEo59go5JDaenYLEM933UFVN2Nq6eYTL6zGDceNB6Y+43dSVbj1h2a
         OAkCrFs/6t6LsCejNtHG3y6TTndN5m7u+mCkrsswOqA1CgpdYrAcLJfWX5jBQwzxNJ
         IyhvAK0poGV+l4fZC2yN94RBinzmtPHDY0xWIkdv3kaSbeUr0A5y9nsBKYYqOEQZIL
         LFpTJr6uAFe7g==
Date:   Sun, 13 Feb 2022 10:03:08 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 2/9] dt-bindings: power: add defines for i.MX8MP power
 domain
Message-ID: <20220213020307.GE4909@dragon>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-2-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 07, 2022 at 08:25:40PM +0100, Lucas Stach wrote:
> This adds the DT defines for the GPC power domains found on the
> i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!
