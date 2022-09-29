Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8315EF5C4
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 14:54:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235201AbiI2Myg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 08:54:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234939AbiI2Myf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 08:54:35 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F0E92BE
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 05:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=hi6ery7XxyMutHL0+4XSi+5rLGGs8h//J7NJYrb1XNo=; b=DnDR81eoRCRUqdLWZRYzoT0IyA
        T2QfpBPoHhFfdpGwE6lC6JFGnwPk1wd/TjkpHExUDMaarrxVqOBxzwizuEPR+2b6Hn8/59mK3hHTd
        WiG8T/4Khx/SsUeDz7SRHppWZ2Hx9inkwtojTP0nhU+VNHTXJpTrVMg/Wy9xPnSB8j88=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1odt3e-000cFb-7D; Thu, 29 Sep 2022 14:54:30 +0200
Date:   Thu, 29 Sep 2022 14:54:30 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add drivetemp thermal zone in Ctera
 C200V1
Message-ID: <YzWVhnj9gziHTV3w@lunn.ch>
References: <20220929080210.3189925-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220929080210.3189925-1-paweldembicki@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 29, 2022 at 10:02:10AM +0200, Pawel Dembicki wrote:
> Ctera C200 V1 have two SATA bays, but thermal zone is handled for only one.
> For some reason thermal zone works only with first disk.
> It was reported one year ago [1].
> 
> [1] https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg56599.html
> 
> Suggested-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
