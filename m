Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7EBC65A89E
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 03:24:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjAACYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 21:24:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAACYo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 21:24:44 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C53064F2
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 18:24:44 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D1FDC60C89
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 02:24:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 038A3C433D2;
        Sun,  1 Jan 2023 02:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672539883;
        bh=zWz2s9sb5K7j7lJr+bkDHID0x2kZ4K56hleCBHObDU0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sn/kW1p+/3v4aN8cUCBbionmnWhRXgIZoxnJYZzQ8dBkST0Rj/u0vBIDJLM3AkFyU
         OcwBXh9p9mqWbGC9D1fxay2jLOReOEU6y3wlHBDcvqw6XnfHPWdwSahZaSlvK4ZPBp
         1OhuiJViMEpXYviWzyKOjjbyhyDVQYJMAO6yLTJlgb2u90uVHvQWhJ2fSdRWL8von/
         66LObgARSXYn8o8hB5cMya6pYhcyGZ3zCWNfGVKQLiXt+49IOzRS8ZgWLSdnX5X9cd
         HYr/DhQRMvMlLbz5pQOB7HmYeUy5Jy2XGRqLL6+ddBTPRDjwPMEc0BC7HSnrX7w6Um
         4ydwwntiCOerg==
Date:   Sun, 1 Jan 2023 10:24:36 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        kernel@dh-electronics.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Drop deprecated
 regulator-compatible from i.MX8M Plus DHCOM
Message-ID: <20230101022435.GH6112@T480>
References: <20221215235710.228500-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221215235710.228500-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 12:57:09AM +0100, Marek Vasut wrote:
> The "regulator-compatible" property is deprecated and unused, as the
> match happens on the node name in Linux of_regulator_match() in case
> the property is not present. Drop the deprecated property from DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
