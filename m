Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1692E64E535
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 01:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbiLPAdc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 19:33:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiLPAda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 19:33:30 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBBED5D6B9
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 16:33:28 -0800 (PST)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 13025852CE;
        Fri, 16 Dec 2022 01:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671150807;
        bh=vHa7LhzEaxKbx/vLHNHXLFdftBBha16666SruqyWAUU=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=ORc/2bqYz8XDVVlkv21ZP/ni8ut0XnAUX73ItzbfSx8alq8qVfWrsqPN7dxt1rhVK
         4ZkBVVp06y+9Q5bpx3e7E+qWMPXXGoiB6wMept8iT7AvK72Ux3tTnWiAF0/F6RHLGs
         fRmbEZZaJP9qoJO00jI/971QetRJBS9u0IitGU7Cq+ueeFvs0u1/+dPo1GzOWe+sbP
         ISRrTBAIfH9JFX2lb0PyO3Ni4bYeRWYC7Tq/NIMNAztrTg/5YO2qLRCH1tfyXEtUzo
         sqYvBQU2a6NAZjGkamjm3Nr/Uto1kBGmPO9cz/DY4fK79od9aXUYwHXr5l3+NUZ88x
         3Dm/woux/tOAg==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Thu, 15 Dec 2022 21:33:26 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Jonas Kuenstler <j.kuenstler@phytec.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Teresa Remmet <t.remmet@phytec.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Drop deprecated
 regulator-compatible from i.MX8M Plus PhyCore SoM
In-Reply-To: <20221215235710.228500-2-marex@denx.de>
References: <20221215235710.228500-1-marex@denx.de>
 <20221215235710.228500-2-marex@denx.de>
Message-ID: <76040ae69860f88440dd9a558a6d2579@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 15/12/2022 20:57, Marek Vasut wrote:
> The "regulator-compatible" property is deprecated and unused, as the
> match happens on the node name in Linux of_regulator_match() in case
> the property is not present. Drop the deprecated property from DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Thanks for the patch.

I have already sent the same fix:

https://lore.kernel.org/linux-arm-kernel/20221121162911.2377556-1-festevam@gmail.com/T/

Regards,

Fabio Estevam
