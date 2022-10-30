Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4F79612B1A
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 15:56:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiJ3O4j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 10:56:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiJ3O4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 10:56:38 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6584BC08
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 07:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=WkJ+9aHox3pRMCoz7IiHk8/fxSz/btCAoSYqHsfs/04=; b=2HbKN8xXcgxunDgm7j3CstEqU3
        P6NTLCZW3xQ8miCvo7tQxCeoEZjZXHSr6ssXJZ9kXQLaUla3ydEYXNSJSU1KEdm8yMi6r4kif9Vqo
        ypKPv7P/9P7LnGzYxM8IFFammjhrdLmLFEKIdpcP759N7BVnMeH5Jgt/nFXGJSqmSQVw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1op9jV-000xud-IS; Sun, 30 Oct 2022 15:56:17 +0100
Date:   Sun, 30 Oct 2022 15:56:17 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Adam Baker <linux@baker-net.org.uk>,
        Tony Dinh <mibodhi@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Zyxel NSA310S  board
Message-ID: <Y16QkdYlQ2W5drqw@lunn.ch>
References: <20221029205738.4187010-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221029205738.4187010-1-paweldembicki@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +	ethphy0: ethernet-phy@1 {
> +		reg = <1>;
> +		phy-mode = "rgmii-id";
> +		marvell,reg-init = <0x1 0x16 0x0 0x3>,
> +						   <0x1 0x10 0x0 0x1017>,
> +						   <0x1 0x11 0x0 0x4408>,
> +						   <0x1 0x16 0x0 0x0>;

The indention is wrong here.

Otherwise

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
