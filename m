Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1594E5EF5BF
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 14:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235308AbiI2MxU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 08:53:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232380AbiI2MxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 08:53:18 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A249C161CD2
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 05:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=wl5hjzL1T9UWTLi3kl2AAO/CAVyzOuU0n1cqR3MjmgE=; b=jz8JppjaUGk/Pl0C1oy/hN0CAU
        oguOJO8/mMeh+aWZEDKsgM/EAjBsSQQY38RsffYTNHBmcw+YTZ5XW1yUy3mhJPKOlkmtMjHCFvMpb
        SPzIW4OFlQ4I9vYlPY0VnZBhPALxZ1qjeUPNWHbLHEmJHd04P2zoa5gh63EHqkd9iKMg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1odt2R-000cF8-Ln; Thu, 29 Sep 2022 14:53:15 +0200
Date:   Thu, 29 Sep 2022 14:53:15 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Tony Dinh <mibodhi@gmail.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add Zyxel NSA310S  board
Message-ID: <YzWVOyM+Z3AFSI7c@lunn.ch>
References: <20220929080110.3182561-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220929080110.3182561-1-paweldembicki@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +// SPDX-License-Identifier: GPL-2.0-only

Same license comment. However, you can only change the license if it
is your code. If you did the conversion from a board setup file to DT,
you can change the license. If somebody else did that and you are just
submitting it, then we need to keep to GPL-2.0-only.

> +	regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		pinctrl-0 = <&pmx_power>;
> +		pinctrl-names = "default";

The modern way to do regulators is to no longer user a container node.
Most of the existing kirkwood DTS files are from long before this was
introduced, so they do have a container. But new files should probably
do it the 'new' way.

   Andrew
