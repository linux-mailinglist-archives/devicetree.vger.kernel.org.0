Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C4C64F57A4
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 10:16:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238496AbiDFIEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 04:04:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1578614AbiDFIBl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 04:01:41 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D8F61DA7A
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 18:17:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 02162B8202A
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 01:17:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56D6FC385A1;
        Wed,  6 Apr 2022 01:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649207865;
        bh=tRz77ZXT6RYupNJzrRfFiSnNVFdPMBJUlXv/tGhISdA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qojhYfZpPrlXj5GQhGGyV9oEJ3oU2+4lqcAOXsKDdB/Cxh6/rDuk8T1Li9Rgfuu6M
         A4bqT+B4amdwl3Grmsg1WUCZontsr681V1Ubh+wuESIKtNDTLisvz52CFN9OEJS9su
         VW3dwdyeykto59nYDVTwg6DoOA0EpgjQiQjsUsT4T0UyIii0K+5cQ1iX2eIN5kwdOn
         HoJBseNBaZwnsZRG6qFnJE5m66xwuFbJxf7oZaojwBVAUSlcqMB4LfBdPZXyaM++uQ
         85oK9fI+VMuRhHg/Y1tZQjW6IWSn7jSR7hoCCdR7KUljDdl7//U24brxVnuqscXudu
         iR1FHtLsyJP8w==
Date:   Wed, 6 Apr 2022 09:17:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Mini eDM SBC
Message-ID: <20220406011739.GD129381@dragon>
References: <20220221001738.148257-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220221001738.148257-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 01:17:37AM +0100, Marek Vasut wrote:
> Add DT compatible string for Data Modul i.MX8M Mini eDM SBC board
> into YAML DT binding document. This system is an evaluation board
> for various custom display units.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Applied both, thanks!
