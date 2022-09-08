Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0106B5B15BB
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 09:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiIHHds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 03:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbiIHHdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 03:33:44 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDCFA2654D
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 00:33:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7A193B81FBF
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:33:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0589DC433D6;
        Thu,  8 Sep 2022 07:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662622421;
        bh=zU4UA0EL+l8ryg5lFDAVWvVzdN2D1vefXFi9G8tQKgo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Npja7rgVSXmte1O3JWvoBHzycpaRVd5tbV6afUB5vPk4N/8bYcazw4siSgEZ3kfx4
         hrVU1MUBr9wn5lr8+wsy6fzXzNIV5vxyzpEbeEEYCN9DEVAXkO8i+3HmfvJPMYB5Lt
         P5ZD8+vwciuSMkWu+JPNh3S58a+46Sk/5+auQh+LN+u78RaxcJzL+wIXhk2zMQN08P
         inWniIU8tfzUOdjPHgbLv6drkLTGkaX7eEHMKLJWOvlrn90fVX0WIqYQPL0Kd1/QC/
         MyIPX85IF2wF1ck9vjrsAWOpuYZboIrfN6ChgharPSpTnP8bTdoXyw+Zz4kyc8JlF9
         eR7rgQXhTPZXQ==
Date:   Thu, 8 Sep 2022 08:33:35 +0100
From:   Lee Jones <lee@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <Yxmaz18lHVRFBDhU@google.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
 <4707456.3daJWjYHZt@diego>
 <YxdqRpysLtPRh02s@google.com>
 <20220906155027.qomo6pt4xo45mli3@mercury.elektranox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220906155027.qomo6pt4xo45mli3@mercury.elektranox.org>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Sep 2022, Sebastian Reichel wrote:

> Hi Lee,
> 
> On Tue, Sep 06, 2022 at 04:41:58PM +0100, Lee Jones wrote:
> > On Mon, 05 Sep 2022, Heiko Stübner wrote:
> > > Hi Sebastian,
> > > 
> > > Am Mittwoch, 31. August 2022, 20:26:27 CEST schrieb Sebastian Reichel:
> > > > Document rk3588 compatible for QoS registers.
> > > > 
> > > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > 
> > > change looks good, but this is a mfd-binding. So while the rest is for me
> > > to apply, for the mfd syscon we need either Lee to apply it, or an Ack
> > > from him for me to pick it up.
> > 
> > This patch is not in my inbox.
> 
> Yes, I missed CC'ing you, sorry.
> 
> > Would you mind resending it to this inbox please?
> 
> I sent PATCHv3 for this series some minutes ago. You should have
> received the full series now:
> 
> https://lore.kernel.org/all/20220906143825.199089-5-sebastian.reichel@collabora.com/

I have it now, thanks.

-- 
Lee Jones [李琼斯]
