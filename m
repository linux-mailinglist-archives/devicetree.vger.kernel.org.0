Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9F5465A3CD
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 12:51:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231539AbiLaLvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 06:51:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiLaLvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 06:51:49 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5B9B6255
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 03:51:48 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 2BC00CE127C
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 11:51:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E43FCC433D2;
        Sat, 31 Dec 2022 11:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672487505;
        bh=VR0gMcynXU/oB4yTFnS9K1GiRNhYX9ISmV6ST/FFhEU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i6iYNZDfdZNPH6Ft8bttlLPwm5WQd4ksoiw0Dt1+vao7PZdNFCxOTW6FT6rnV7kY1
         POn8iVr/8MSLDLrOqdZMPmIxZ4s6st3PEG8MZrQNVah2NoK9WVzCSK/gs/fzH3ftEv
         hhVJhPSzQPYrSSXniEbpDr9QkXCrNdih5O9Q+M4yjtEcfdfHH1p8be++8oAdFLTntr
         8JBh4VtIwsTauz3YqOdd8QgdF5X23aTjgKjQB4bPIqyzZpc9Wc7jwof4cBzPa60Mm9
         M7z0FEkWWkxq8st6dsy+KKQZX8YTcLK5qKBk7jFw+tlb+z9kA6hLBoIe4jjc8xgi25
         7r/uXLzTdZYzQ==
Date:   Sat, 31 Dec 2022 19:51:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Stefan Eichenberger <stefan.eichenberger@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mm-verdin: enable hpd on
 hdmi-connector
Message-ID: <20221231115137.GO6112@T480>
References: <20221129140935.34428-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221129140935.34428-1-francesco@dolcini.it>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 29, 2022 at 03:09:35PM +0100, Francesco Dolcini wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> 
> Add hot plug detect gpio to the HDMI connector.
> 
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Applied, thanks!
