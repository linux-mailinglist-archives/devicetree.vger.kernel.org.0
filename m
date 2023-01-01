Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E80D465A8BA
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 04:28:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjAAD2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 22:28:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAAD2w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 22:28:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B85EC63EF
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 19:28:51 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7A9E5B80949
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 03:28:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0B3EC433D2;
        Sun,  1 Jan 2023 03:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672543729;
        bh=50ObCBh6xjlH/eZ4J/cIy9gKyT38jMntAMs1ZxXbwZ8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q+n3fbdP8xwQKHFM45gSXv7DUdKUMmnKGjWitmrLBUiOLSyt2HwXJ1HgEXV8BU5Ap
         SpinatQkURnHNSxYl/PnZtk5aS6vZCaqNVcUacVh7OVn49kjwOGzj4xjRT+Awcz+6z
         DNkcdT7jKIdy3l9nAUF9tmhAj53FhvpX4nDmt6e2xFQXQAn6HyUi5QqlY8GOcJtNAg
         EH3UNMkqlADvwtSqYkD8Q7FCGdK/RghrGk5hyIFb01Z5Kag2HZVjJGYH2sc3afRlsz
         mVPEiYiw/Usstc6xR87UNa2J/GQPMDYlwsKODCjb4RUFJf0ia5eOSR30egQDFfP3cu
         CGQLIuyLoSj+w==
Date:   Sun, 1 Jan 2023 11:28:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@dh-electronics.com
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: Split i.MX8M Plus DHCOM based
 boards
Message-ID: <20230101032840.GR6112@T480>
References: <20221216210244.591865-1-marex@denx.de>
 <20221216210244.591865-3-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216210244.591865-3-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 10:02:43PM +0100, Marek Vasut wrote:
> The i.MX8M Plus DHCOM based boards have compatible string in the form:
> "vendor,custom-board", "dh,som", "fsl,soc"
> or
> "dh,carrier-board", "dh,som", "fsl,soc"
> Split the binding entry so this triplet can be matched on.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>

It doesn't apply to my imx/bindings branch.  Could you rebase and resend
the series?

Shawn
