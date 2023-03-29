Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBFA56CD79D
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 12:26:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbjC2K03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 06:26:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbjC2K01 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 06:26:27 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2402125
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 03:26:26 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6973C85850;
        Wed, 29 Mar 2023 12:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680085583;
        bh=PiVwVsCaQDVzwCXWgOuPpMCJGIiuzLphUwCOem1gkZs=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=ikFi1fx+gd30TPDGuZecHwIuVwtU/P4ZviHvLynkt9JzsaP+61CBmnjkz20gARtLS
         iAUE2xQwAfQs7WczfCysX5hbi4oM+fqXFvdkwUCmZIwCzUM6eNash9RkYAd2Kc6DAX
         vuB60bOWhF1hzFofLa2H1B5UCwhrtQiKNAzFUcq3sb5bn0I6QQE6Lxuuf/K8Gf0KQt
         Z6O0XpmU9clWhHyg+XKz5TlFxkLDLzrhupvDmRMwZsNQRb2nIsQ5y6p0mL0AU62QDd
         D6HYW3V2xtQFMFdffXE1BXYZzllTfkWmh2Ixb1uqlwBF1HHS1RAUfSohGcQeMmWIhk
         MrXFxvtkW1bZw==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 29 Mar 2023 07:26:23 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/2] arm64: dts: imx8mp: Add support for Data Modul
 i.MX8M Plus eDM SBC
In-Reply-To: <20230317100950.53971-2-marex@denx.de>
References: <20230317100950.53971-1-marex@denx.de>
 <20230317100950.53971-2-marex@denx.de>
Message-ID: <c113caa0da4c666fa5c90bcf4fa6793a@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 17/03/2023 07:09, Marek Vasut wrote:
> Add support for Data Modul i.MX8M Plus eDM SBC board. This is an
> evaluation board for various custom display units. Currently
> supported are serial console, ethernet, eMMC, SD, SPI NOR,
> USB host and USB OTG.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@denx.de>
