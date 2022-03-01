Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2BB4C8CFE
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 14:54:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232724AbiCANzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 08:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232203AbiCANzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 08:55:01 -0500
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.165])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15D1256C35
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 05:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646142854;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=TmUIce0RehdrBsMBMSjDW27iMqd2SdloTLhy5FDD8Qk=;
    b=fyNcgpexTX1Y/j1QkIOCMKDgkD1RUb3tz4XdgX4TGJovdwY6WTvzx7ud9JRfOlh1zk
    FJQBwA8CnvVILMusrW3Tj+KlvJTsh3tMa8IZlBGTJFhuIAyMurajI/4BMFR1WqAUuwdw
    3oU/48QoebvFQZX8mA3/MZoE0H6T9m9n9DbA7MtVp3o+tZEbrw1kghxnBwAo5ey9Ys3x
    hxr/X8Atuyo3Hj/XtvoXfbMK2+E8jFn+BoJUz+G180f59jZFIOCm3FMb5609ctjRHcUY
    O+5q9vKH3tqGZgCOlJJIazv70N0DKS7lKEU6Gv5TASaeGSixpoPKtvCaXw7iyHAihv1Q
    V/UQ==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267FZF9PwpcNKLVrK86+6Y="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id kdc58dy21DsCaVY
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 1 Mar 2022 14:54:12 +0100 (CET)
Date:   Tue, 1 Mar 2022 14:54:06 +0100
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
Message-ID: <Yh4lfjsDR4qqnc8Y@gerhold.net>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-2-stephan@gerhold.net>
 <Yh4hYVJFZJBYp3d9@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yh4hYVJFZJBYp3d9@sirena.org.uk>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 01, 2022 at 01:36:33PM +0000, Mark Brown wrote:
> On Tue, Mar 01, 2022 at 01:37:41PM +0100, Stephan Gerhold wrote:
> 
> > +  awinic,mode:
> > +    description: Amplifier mode (number of pulses for one-wire pulse control)
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 1
> 
> No maximum?
> 

I wasn't sure if we really want to maintain maxima for several different
Awinic part numbers here. For the AW8738 the maximum is 7, for the
AW87318 (note the additional 1 in the name) it would be 10. The driver
part would be identical for both.

... But it's probably cleaner to have the schema check for the real
maximum of the selected compatible. I will add a "maximum" in v2.

> > +  sound-name-prefix: true
> 
> While it's very likely that someone will want to use this it shouldn't
> be *mandatory* that they do so, there may be no other controls for it to
> collide with (eg, if none of the other components in the audio path have
> controls).

This line just enables the "sound-name-prefix" from the included
name-prefix.yaml. It's not listed in "required" so it's actually
already optional.

Thanks!
Stephan
