Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7C4C4CAA67
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 17:36:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239227AbiCBQhB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 11:37:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238232AbiCBQhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 11:37:00 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41F5CE907
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 08:36:16 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id o7-20020a056820040700b003205d5eae6eso1986114oou.5
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 08:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=o9t4H73QttGgZo+vQTCpgTCC+eA6JW9j2EdawokS1xg=;
        b=Kh+hsA+IflggohdoCjeykEn6rdFU/iq8ofBCgdXylV1aoI6MALB8chVupv8YW4B4qy
         NHWM4/OX0VoVpby85g/1JLrQOeXjfbZEWkNLKiiZ61UekrwMkJKDkX1/7KD0WhLJXK0s
         WhUoo+jg+QMIz7VXBskoHAQIf2lW1Ptra+j4M+OmQq8gdnHTzd06dqYfe1vL/zsNq/UH
         hK+N/fvamAmzjSDvWMChPot6IDlelhv1G4FpUCVAqeiVaXGmPMYXEIUP6JegvIF4PoP0
         n0nl/jOcSuC4zR/YJAxMHdqZjz5yUbx7CbYjxPRq4PprqT0tnFES9U7gt+PHFhvJ1zG0
         f+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=o9t4H73QttGgZo+vQTCpgTCC+eA6JW9j2EdawokS1xg=;
        b=WGgNpVgYWTfc96i43iAOhwL7ONhSwqcMmBoS+f9xbgZ/x0YrkEWC/i8VZqj3aneb+Q
         u7ojb+374cz7Nk9DKKhp3w0ueH7q/LfP1VCXQJfQV7lvuHYFgOU8bin+xmYPtNazgWGK
         T+frJFokAJLVargiy4bE05we8VfgjsdxaxzpH3OCP7nnqWaVPSxCJyj/9bT5FR0QS1Pr
         iJSRasLqvNGv4VQRz7Fyc6Ez5SZyTDhSuyLbtqKFdSwYp1Cb1gnn7xKLFX93MfLSN76H
         SFfL5AM9BpIVnfDdlN3o2Gjl2+p2r+VqoKvgKga5j58s3G3D8q6Q+sP7PBjomEnDRX/l
         ibrQ==
X-Gm-Message-State: AOAM533HC3N7mo5s9HV99AyGCReFgbrY1CjLKZnc6pN9Rz4IPuZScfG/
        28j9D4Ekpns/IWaDMVkp0SlRmUEkCvI=
X-Google-Smtp-Source: ABdhPJzLd5RWxiotT7UCT5TSI5p8jatncWxYu4TxdOtvcvTRC6SeAQK+PX0Frar3/CRJ3733avW7HQ==
X-Received: by 2002:a4a:2d19:0:b0:2da:d991:a489 with SMTP id y25-20020a4a2d19000000b002dad991a489mr15591889ooy.32.1646238976195;
        Wed, 02 Mar 2022 08:36:16 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id y6-20020a4a86c6000000b0031bf43a9212sm7804950ooh.11.2022.03.02.08.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 08:36:13 -0800 (PST)
Date:   Wed, 2 Mar 2022 10:36:11 -0600
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        lee.jones@linaro.org, heiko@sntech.de, zyw@rock-chips.com,
        zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <20220302163611.GA12995@wintermute.localdomain>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
 <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
 <6ba1c897-a932-915e-1415-1bb685754305@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ba1c897-a932-915e-1415-1bb685754305@arm.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 25, 2022 at 10:44:55AM +0000, Robin Murphy wrote:
> On 2022-02-24 19:30, Rob Herring wrote:
> [...]
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - interrupts
> > > > +  - "#clock-cells"
> > > 
> > > Is this actually required (ditto elsewhere)? Technically it's only necessary
> > > if there are any clock consumers targeting this node, so arguably it should
> > > be the clock binding's responsibility to validate that.
> > > 
> > > It wouldn't make much sense for a dedicated clock controller to omit
> > > #clock-cells such that it couldn't have any consumers, but given that these
> > > things are primarily PMICs I think it's reasonable to allow a board not to
> > > care about the clocks at all if it doesn't use them. I know that the
> > > original binding claimed it was required, but if we're already relaxing that
> > > for RK805 here then we may as well relax it entirely.
> > 
> > Fair enough. However, if the consumer could be in an overlay, then I
> > think we want it to be required and not make the overlay add the
> > property. Properties just appearing within nodes at runtime is likely
> > not well supported in OSs.
> 
> Ah yes, that's an angle I hadn't considered, and I reckon it clearly answers
> my original question in the affirmative :)
> 
> Indeed these clock outputs are often hooked up to SDIO WiFi modules, and I'm
> sure I *have* seen boards which put such modules on pluggable daughterboards
> in a manner which could reasonably use overlays, so in principle it does
> seem like a realistic concern. I'm happy with setting a general principle
> that if a clock output is exposed on a physical pin, then at the DTS level
> we can't know for sure that it *won't* be consumed (even if the original
> board design didn't intend it), therefore the device is always a potential
> clock controller and "#clock-cells" should be required. In that case, the
> consistency argument would fall the other way, to enforcing it for RK805 as
> well.

Okay. So the existing point of contentions are:

1) "#clock-cells" should always be required. This causes a few boards
to fail to check properly, but I assume that can be easily remedied by
adding the "#clock-cells" to the devicetree.

2) The rk805, rk809, and rk817 only have a single clock-out. To
workaround a quirk in the driver some boards have 2 clock-output-names.
To fix the devicetree to accurately describe the hardware, the driver
will have to be updated along with many boards with these PMICs.

3) The rk808 has no vcc13 or vcc14 input, but at least 4 boards preport
to use such a voltage input anyway.

Not a point of contention, but I need to add examples for the rk805,
rk809, and rk818 which I will just pull from a popular devicetree.

I can solve the clock-cells issue by simply adding that to the correct
devicetrees (though I have no devices to test those on I assume they
should be benign changes?). Is that acceptable to fix that?

For the single clock out, I can't really fix it without updating the
driver and modifying a large number of devicetrees. Should I just make
it 1 min/2 max across all these YAML files and note for the rk805,
rk809, and rk817 that there is only really one clock output?

What should I do for #3? I've checked the schematic for the Pinebook
Pro (which is one of the 4 boards affected) and can confirm that
VCC13 and VCC14 on these boards is literally just VCC1 and VCC2,
respectively. I can't seem to find the schematics for the other 3
boards affected though, but I assume it's something similar.

Let me know, I'd like to get this finalized so I can get the battery
code for the rk817 charger pushed too.

Thank you very much for all your help.
Chris

> 
> Cheers,
> Robin.
