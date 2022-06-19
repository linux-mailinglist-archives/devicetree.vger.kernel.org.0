Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C08D255096C
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 10:57:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231139AbiFSI5G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 04:57:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbiFSI5F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 04:57:05 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFE12AC7
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 01:57:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D5FACB80CC4
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 08:57:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14402C34114;
        Sun, 19 Jun 2022 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655629021;
        bh=JhBf1NY9/6sbcoZEd7kUTtQeUVsA2kbJj5iAhKAfKAY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BJyeR8fAZwogyrtwWQDt+Cwlwx7cJHuZc1kPT9GPewBW5OBk8HlzE5+eS/VLp1wls
         LtHh74I8SBgG4aaBOe81vMZAoYvh0iE5eN5tQNxLXrcqUe1Z28m/BGY2TSeIGR3G5R
         G7CoqoNCkE1tCA0te51lXZ/m360ujtvfobWsOcU/ZjAKJojEkSvvdhSsp3euZND8wc
         AdjkG5fuU0xis0c56zZP8/C+OUCGhA+gxkqxYDJz3+57TTBtBBsyY9Xyvy/SbfiBCP
         bxv94N1hpeX/Lh+/OWMvez776UrA4wxJOyZITXhG8d1ccGmu7OlLStvDXrIzuxn6tZ
         qJiLYWLxu1gag==
Date:   Sun, 19 Jun 2022 16:56:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>,
        Fabio Estevam <festevam@denx.de>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus
 DHCOM and PDK2
Message-ID: <20220619085656.GK254723@dragon>
References: <20220613145826.231499-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220613145826.231499-1-marex@denx.de>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 13, 2022 at 04:58:25PM +0200, Marek Vasut wrote:
> Add DT compatible string for DH electronics i.MX8M Plus DHCOM and PDK2
> into YAML DT binding document. This system is a general purpose SoM and
> evaluation board.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Applied both, thanks!
