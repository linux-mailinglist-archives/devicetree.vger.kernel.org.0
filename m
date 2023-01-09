Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C692666226F
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 11:06:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233902AbjAIKFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 05:05:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236900AbjAIKEs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 05:04:48 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00349186F3
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 02:03:33 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 44A0B60FB7
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 10:03:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50001C433EF;
        Mon,  9 Jan 2023 10:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673258612;
        bh=QK7ZNINixK/NCSHZ0qARwkjyrPaoquSU+dnYxI37Z9M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t0X6z0Vvio1wzN9JPbOuz8LyYJqbHx86mCoBuppNmHXq6Mh19SWiFanIftIDG6XXp
         TZYm52h1vuDYYE0FNAN4brb/NA99fEVZVVtQolllUncEla9wM0S/ug4z4jWTbRTf7W
         UedilaHQjybptj5FbR84EqWwgzKPw8Nfwai29Dg6n4mlL5Yz4yZnsyZ1AK9MCq6P1/
         HwqiDrmz+CsOoZ9KsikP1+Fdo6D1+J8o+T11j26vsKeGpqEgP7uuUQiA3uI60mSslr
         6o8CSWFb8xsrNE6bmEbN6DWch1nlQq4x1jQZZMeiXMzEXcEvmnwmrASDkxrTTwGXI1
         g4jFoOuMO7mkA==
Date:   Mon, 9 Jan 2023 18:03:25 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: Move MX8Menlo board to i.MX8M
 Mini Toradex Verdin SoM entry
Message-ID: <20230109100324.GL18301@T480>
References: <20230105140135.150502-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230105140135.150502-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 05, 2023 at 03:01:32PM +0100, Marek Vasut wrote:
> The MX8Menlo board is based on i.MX8M Mini Toradex Verdin SoM
> which results in compatible string in the form:
> "vendor,custom-board", "toradex,som-nonwifi", "toradex,som", "fsl,soc"
> Move the binding entry so this quadruplet can be matched on.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
