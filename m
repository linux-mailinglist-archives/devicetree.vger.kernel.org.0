Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E2145A37F9
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 15:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbiH0NpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Aug 2022 09:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiH0NpE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Aug 2022 09:45:04 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D57EA11C23
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 06:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=lDRS6zYnFOvQ51jlo3W02zr2tj7xWNTwIqeD2gDrMig=; b=4lfva7JqeMpbhdPm6eQUpks+Oj
        E6vHBvBKUW+iTgtmlmrzXTdgPKJ0BBVJQIo/91XxNnECwInxYwK46yPFZUWOQpphn/R22YUW2CTBO
        QnV1rblwvrbykikNAu1U2qTCA1iJ+UTq1BcVICkqZxzIZqOcu5FtzAtobYhWqrQSpioI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oRw7L-00EmLo-IS; Sat, 27 Aug 2022 15:44:55 +0200
Date:   Sat, 27 Aug 2022 15:44:55 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: Remove 'Device Tree Bindings' from end of
 title:
Message-ID: <Ywof12e29Ki7PHC1@lunn.ch>
References: <20220825020427.3460650-1-andrew@lunn.ch>
 <a70a3d3d-8edd-5355-2e38-4d6285850229@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a70a3d3d-8edd-5355-2e38-4d6285850229@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 27, 2022 at 12:27:40PM +0300, Krzysztof Kozlowski wrote:
> On 25/08/2022 05:04, Andrew Lunn wrote:
> > As indicated in
> > link: https://lore.kernel.org/all/20220822204945.GA808626-robh@kernel.org/
> > 
> > DT schema files should not have 'Device Tree Binding' as part of there
> > title: line. Remove this in most .yaml files, so hopefully preventing
> > developers copying it into new .yaml files, and being asked to remove
> > it.
> > 
> > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> 
> I understand you did not want to use scripts/get_maintainers.pl for all
> files, but at least you could use it for subsystem...

I did. How do you think i decided on device tree mailing list? That is
the only subsystem i'm patching. This has no effect on the kernel
itself, no effect on device drivers, any running code. The only
subsystem touched is the device tree validation subsystem, and only a
property which is effectively a comment, not even involved in the
validation, other than maybe ensuing it exists.

	    Andrew
