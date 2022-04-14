Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FBD2500478
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 04:56:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233268AbiDNC6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 22:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232667AbiDNC6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 22:58:43 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 614AD1B7B9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 19:56:19 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 813CB8005D;
        Thu, 14 Apr 2022 04:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649904976;
        bh=L/YTxbbuCa3z2i2ikZPjgb7/9DKYZ/fTUdjk9LFeHyM=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=fDgWJpZhPLBWn03F1RZO2+kzbiM/6F5OqH4a38QlDQQwHWDs3ZgDRLcX6eKyrN+TC
         JHXpUigUIbFhl26fD/Y+mTSRLN+3xwLunbkVqEW1AC9FuBrTdCAFrEt6kXjUm1BOAa
         1ufIRZtawKuUCChgIpOTW9rWpi2w9pw2QaZFMqIIUuxoHfETJ+usJUn4NtJ3uYNcBC
         FcwOgPbN793Mg7dG1u/J/x1FdGimmtnOy3IgWcY1N/SF3k72gJe1lIxTxTqEK9x7Ae
         O6NnI4YI5fj0Vm0Dld6uVoaRh95zEZerPYkOwezEAEgZCSOBcWEz84gD3sKElbD3n9
         uKtjn/VWL2S0A==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 13 Apr 2022 23:56:16 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
In-Reply-To: <20220414001237.280866-1-marex@denx.de>
References: <20220414001237.280866-1-marex@denx.de>
Message-ID: <6e92716836b87312818c00e0caa90c0e@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 13/04/2022 21:12, Marek Vasut wrote:
> Add DT compatible string for board based on the Toradex Verdin iMX8M
> Mini SoM, the MX8Menlo. The board is a compatible replacement for
> i.MX53 M53Menlo and features USB, multiple UARTs, ethernet, LEDs,
> SD and eMMC.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Reviewed-by: Fabio Estevam <festevam@denx.de>
