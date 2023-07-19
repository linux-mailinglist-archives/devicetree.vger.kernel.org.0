Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC8B9759142
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 11:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbjGSJLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 05:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230291AbjGSJLg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 05:11:36 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5531019B1;
        Wed, 19 Jul 2023 02:11:28 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id CB0A0FF818;
        Wed, 19 Jul 2023 09:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1689757886;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=f84nkPfrwMn/3eLaRQd5GjJzAg3jngCL9dYTvmRIvUM=;
        b=SU0jjGdxGPP52Yam69nVPKd4b+CELuc8c4p3sBoKg8RwSfP/glbAzBoHYe6/mTdIXBnt1B
        4VJ1m0r0N9jbxhj8yaLA9jD20i/VuimYyWfnCMjWC/zihQRDf30ZduDGPGqo2+vDvb1C4V
        Yzj9URJhovfQN70377Ozg2DK/P5v2v3vLKoPbnNFn0tM0bP50qoBt8r+gRlMbhYCvMVTbW
        WFW++2LtntTbpl1hX01ux2j/Rr/0MgF4YknQqOt33IAuAJfWbjzk+I5gXTHUFImtDzvsMi
        7jYXmLAJ+qLOb9V+h4uX2HPVZu7krJSDT+PZ9nQ6Ou1qO2J8YVOggWJgc1B9Ew==
Date:   Wed, 19 Jul 2023 11:11:24 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     Matt Johnston <matt@codeconstruct.com.au>,
        linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, Jeremy Kerr <jk@codeconstruct.com.au>,
        "David S. Miller" <davem@davemloft.net>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next v2 2/3] i3c: Add support for bus enumeration &
 notification
Message-ID: <2023071909112418ec7fdc@mail.local>
References: <20230717040638.1292536-1-matt@codeconstruct.com.au>
 <20230717040638.1292536-3-matt@codeconstruct.com.au>
 <20230718185757.54ae1e2e@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230718185757.54ae1e2e@kernel.org>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 18:57:57-0700, Jakub Kicinski wrote:
> On Mon, 17 Jul 2023 12:06:37 +0800 Matt Johnston wrote:
> > From: Jeremy Kerr <jk@codeconstruct.com.au>
> > 
> > This allows other drivers to be notified when new i3c busses are
> > attached, referring to a whole i3c bus as opposed to individual
> > devices.
> > 
> > Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> > Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> 
> We need one of:
>  - sign-off from Alexandre that he's okay with this code going via
>    netdev; or
>  - stable branch from Alexandre based on an upstream -rc tag which 
>    we can pull into net-next; or
>  - wait until 6.6 merge window for the change to propagate.
> Until then we can't do much on our end, so I'll mark the patches as
> deferred from netdev perspective.

I'm fine with the series going through netdev. Matt, please carry my ack
on the next versions.

> -- 
> pw-bot: defer

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
