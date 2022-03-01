Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 065064C8D68
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 15:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235203AbiCAON5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 09:13:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235208AbiCAON4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 09:13:56 -0500
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFE1A8A6E6
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 06:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646143990;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=EIAmU7dd/0c4jjuJcUL10wWwB+pEyYXtqoEKj5HRR1Q=;
    b=MdeVPdXUfdO0rm53+PvnVrqHXtESrIt9787IJd1LYVRHGP2k9nYridBvIvAqdI9QwO
    DRcn3HcBtOKFzl1S6b0iyNF2d+TwdPVzU1JIYtZ7BMhd7vUbLcMYFlTvvmg91QFb0koU
    0vGu8ECSOViIv9t+k17cxCl+yx7dP3hBSJYFHU4f8MrazyNmNEQ6hEExGi2U7CfThUWy
    5NgHwd5N/q7Dc33GjGV3UioIbUTp0gc9p2J+ZNmJ9Vjqu4DBoLXvM4ZQidegc2nUsoYX
    fUeXv2oFr3nBnbvs/6mjbRdTKIjhN2EW3aX1NNtF8QTgiSN4WcDViX7twe4EmgYAfMVZ
    SO+Q==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267FZF9PwpcNKLVrK86+6Y="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id kdc58dy21EDAaj8
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 1 Mar 2022 15:13:10 +0100 (CET)
Date:   Tue, 1 Mar 2022 15:13:09 +0100
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier
 driver
Message-ID: <Yh4p9aKVnBfAONxX@gerhold.net>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-3-stephan@gerhold.net>
 <Yh4jXfABBzXQAowc@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yh4jXfABBzXQAowc@sirena.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 01, 2022 at 01:45:01PM +0000, Mark Brown wrote:
> On Tue, Mar 01, 2022 at 01:37:42PM +0100, Stephan Gerhold wrote:
> 
> > The Awinic AW8738 is a simple audio amplifier using an enable GPIO.
> > The main difference to simple-amplifier is that there is a "one-wire
> > pulse control" that allows configuring the amplifier to one of a few
> > pre-defined modes.
> 
> What exactly are the modes here?  Looking at the web site for the part
> it seems like it's selecting a power limit for the speaker so it makes
> sense that the mode would be fixed in DT but it's not clear from the
> driver.
> 

It seems to be mostly a power limit but not only. E.g. on AW8738 mode
3/4 and 5/6 seem to have the same power limit but select between a
"NCN function" or "Multi-Level AGC function", which seems to control
how the amplifier behaves if the power limit is reached.

The exact effect of the modes varies greatly between different Awinic
parts, but since I don't really see a use case for changing those
options dynamically I think it's best to just load it from DT.

> > +	aw->gpiod_enable = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
> > +	if (IS_ERR(aw->gpiod_enable))
> > +		return dev_err_probe(dev, PTR_ERR(aw->gpiod_enable),
> > +				     "Failed to get 'enable' gpio");
> 
> Are we sure that enable is the best name for this pin?  It's more
> complex than just an enable since it's the 1 wire data - according to
> what's on the awinic web site it looks like the actual label is /SHDN
> which is similarly misleading though :/

Yeah, I was considering to call it "shdn" instead but given the negation
that seemed even more confusing. I ended up using "enable" since this is
the name used in the mode table of the datasheet (which will probably be
the main reference when setting up the amplifier in the DT).

Thanks,
Stephan
