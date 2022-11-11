Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A36C56253CD
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 07:29:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232919AbiKKG3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 01:29:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232749AbiKKG2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 01:28:37 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDB1B725D7
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 22:24:39 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 88E11B823ED
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 06:24:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE60DC433C1;
        Fri, 11 Nov 2022 06:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668147877;
        bh=SEjNhOlHdRhwAV/KZtI1pn3kNJFqFvZeUgRrUpWDrBs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mAB+3FQ1OWyr14Zy61kNL3Vg56VUDguZo0FknpnKLTvTweO30lGHhBGVvofMISnAi
         wxsHGTmXoSN24B/n0vTd5EcS71hlAFODZxhxZUK2U5cskV1PQphYeAGbKBfjXkTTKA
         AssF/ZistCYvEBDD/XwOaeQPIuBLazqKRIn5Bn+e0gR2iFcx23rW1IE50A7zA3V4d5
         UH8nK3YkLSmM4Uvab+Igkz7qJ2U1n0LcF4nh6gEzhR66AbbuLYK3QtSOJWyxWYweTL
         9o8pza0L9pJTM/6ofFyvGsEAvuFENpAZRnCbbTo4jN6K/mfXEJRAtG684dsEzV+xFv
         p7Fz0VVch7MLQ==
Date:   Fri, 11 Nov 2022 14:24:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: nvmem: snvs-lpgpr: Fix i.MX8M compatible
 strings
Message-ID: <20221111062430.GJ2649582@dragon>
References: <20221102222543.153026-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102222543.153026-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 02, 2022 at 11:25:43PM +0100, Marek Vasut wrote:
> The compatible strings for "fsl,imx8m*-snvs-lpgpr" always contain
> the fallback "fsl,imx7d-snvs-lpgpr" compatible in DTs too, since
> the fallback compatible is what the driver matches on, this way:
>   compatible = "fsl,imx8mm-snvs-lpgpr", "fsl,imx7d-snvs-lpgpr"
> The older "fsl,imx7d-snvs-lpgpr" and "fsl,imx6*-snvs-lpgpr" used
> only that single compatible string.
> 
> Document both options in the binding document.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
