Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B04BD65A30A
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 08:12:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbiLaHMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 02:12:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbiLaHMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 02:12:47 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54952BD9
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 23:12:46 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6B96F6098A
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:12:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DABAC433EF;
        Sat, 31 Dec 2022 07:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672470765;
        bh=CkZVrqFalYaJLKwjekt7KJ8dlPQ6kpGOZD9CTWp2D/Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UkOCv/6rqjfS2fCjw26yqdBTXryafbgBC6+Na3a7s5CoespXahdrsfDuhnHeCNiiW
         c2lQPaQ7FGkAzDIaGc5H7ox8zb2Y8OWlN0osCdJhE05pK0AVrGOeCB7ZL7nOmsH09T
         m15fZVFmGbU5A/bXYg920lk8U2aMDHU+9La/SZX7vrr9I9NVZ7ptw/UGcvj8UQk1qV
         IrjtfRvh4D6cZwC1W0EmFDmvbjUvwtgtCszQcERjn+Dn6+QYKPDwknA86gJrf6v4lF
         GSRZPo0MqfztJ8TEh9/BF5KZAiXhAWSO/24fojfJncZkG2Q0/ljj0k4heHwNydfTOX
         1P00A6HvtVbQg==
Date:   Sat, 31 Dec 2022 15:12:38 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Teresa Remmet <t.remmet@phytec.de>
Subject: Re: [PATCH] arm64: dts: imx8mp-phycore-som: Remove invalid PMIC
 property
Message-ID: <20221231071237.GG6112@T480>
References: <20221121162911.2377556-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221121162911.2377556-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 01:29:11PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> 'regulator-compatible' is not a valid property according to
> nxp,pca9450-regulator.yaml and causes the following warning:
> 
>   DTC_CHK arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb
> ...
> pmic@25: regulators:LDO1: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)
> 
> Remove the invalid 'regulator-compatible' property.
> 
> Cc: Teresa Remmet <t.remmet@phytec.de>
> Fixes: 88f7f6bcca37 ("arm64: dts: freescale: Add support for phyBOARD-Pollux-i.MX8MP")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
