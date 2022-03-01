Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C052A4C8C06
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 13:53:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbiCAMyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 07:54:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233433AbiCAMyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 07:54:08 -0500
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.168])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5FA354BEB
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 04:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646139204;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=E0/pLDycfjg5UgInPN+YotNuJ3zzV/iGM8G9D9KGSHI=;
    b=eEAxS9Rflo+Ob0bTeRyYno/btBHAc3bl0W9FlcftRxUHd/CjSOaBmH6V98VC1zSXFO
    CrB0T5zcWzeIRrqF5VwHMFUuovl3nk90zD50YMk+J/1eCAUaoocNwfV0oPjKZcHYtBlb
    ZRDUNXKt6OiCi3/R00Zs3++uyJAenZRKeBlFEwVLLniV8gnY07rKIqIy96zxRmrWkMHv
    HSH8uweHbFvUxWCp3Ve7Pp+dA0xkuXTDQ+Nn/vZJNbknQikiwtv/8D4WjjybDXQiCn5W
    dQk5XV8DLfJHAp5ouIy6Zg/qVaX+L+CfhBJ4CN2EnUxlwJt8uNlRHThqBVTI+i6jcj4p
    fGlg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267FZF9PwpcNKLVrK86+6Y="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id kdc58dy21CrOa80
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 1 Mar 2022 13:53:24 +0100 (CET)
Date:   Tue, 1 Mar 2022 13:53:12 +0100
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier
 driver
Message-ID: <Yh4XOC5+Uam9UMdJ@gerhold.net>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-3-stephan@gerhold.net>
 <Yh4VziYJ2M2aenjz@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yh4VziYJ2M2aenjz@sirena.org.uk>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 01, 2022 at 12:47:10PM +0000, Mark Brown wrote:
> On Tue, Mar 01, 2022 at 01:37:42PM +0100, Stephan Gerhold wrote:
> > From: Jonathan Albrieux <jonathan.albrieux@gmail.com>
> > 
> > The Awinic AW8738 is a simple audio amplifier using an enable GPIO.
> > The main difference to simple-amplifier is that there is a "one-wire
> > pulse control" that allows configuring the amplifier to one of a few
> > pre-defined modes.
> 
> I only have this patch, nothing else from the rest of the series.
> What's the story with dependencies?

Hmm, I definitely sent the whole series to you. Let's wait a bit longer
to see if it will still arrive, otherwise let me know and I can try to
send it again.

It seems to have arrived fully on the mailing list:
https://lore.kernel.org/alsa-devel/20220301123742.72146-1-stephan@gerhold.net/

Thanks,
Stephan
