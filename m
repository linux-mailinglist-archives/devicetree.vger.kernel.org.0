Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 336A35B2130
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229966AbiIHOur (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:50:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231406AbiIHOuq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:50:46 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C6005C97F
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662648644;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=DcQXRq6Yo2xWnA5jGCX4MwyuvDunQbZtF33ExyrTYwE=;
        b=iWzL327PzFMkHY4lDY59N9+oN5ukktSNq7igcjK62nUnMo0W9gfU/3pDFMPg6J9etsMPcR
        7kFRZxoXZ+rpzlHXglZOImLWd3Uu8UJ6QPdk0PjBs5X9dgI3FvubQ7GIEvYNLqwcW0KBZ9
        sRgLU7kDqB3LwMx7A7LFwRP90fJfx00=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-144-hUWhhRw9Pd60iqRow6zVtQ-1; Thu, 08 Sep 2022 10:50:41 -0400
X-MC-Unique: hUWhhRw9Pd60iqRow6zVtQ-1
Received: by mail-qk1-f199.google.com with SMTP id w22-20020a05620a445600b006bb7f43d1cfso14856158qkp.16
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=DcQXRq6Yo2xWnA5jGCX4MwyuvDunQbZtF33ExyrTYwE=;
        b=mkE9CdcBa0l3ge5G6P9265BjvzLrY84Daiw9qgTrlSocYbWFxj/efKBEz6btkyplKl
         1B/gursVpZ7t5PMVIcC8ZyQM16aplx2pfw6lYjedQGMz25Qgu4NfAphfV80UNtr7E2GF
         b6/JyWwCijXHLJx2RgcfTo7ehqCoZ2k7W4JDpwdCVDYcSbyb5uUEX8aetvVflOHgJ2Lc
         /srIGirg2EjL1gQ5cNv8LXXZsNwsuf86AnP5TnaP0+e35Xn1XmSOvfmKP9Rgrm8sIjBd
         J4JgHecFNAw5J5HCozXGSJzMcU2Gz++hua8+Pzv3H7htyHdn9TWoEMa1gPc8Wuu0cdq9
         xCZw==
X-Gm-Message-State: ACgBeo34ezRMDi+G9/UsAtVSGdDNlibQmiAUkMrHei1PZ18A5nOIOwBp
        ixPWjvyMXGfJHefroNk9bnPNuNuOxpoeTFSb5FASba4kmnZVACu5qhQUDQZJ4MtpI1nr1Gymefb
        KM0SSKwVyljhWI63MUH/v9w==
X-Received: by 2002:a05:6214:2307:b0:46e:5fbc:3c30 with SMTP id gc7-20020a056214230700b0046e5fbc3c30mr7672820qvb.21.1662648641140;
        Thu, 08 Sep 2022 07:50:41 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6L1pGb0zJeEAN78YpyXuOVX0R3Yc55KvNPdvJ3Wf2d2RgArgwDlC8zk5MbW5bpprrAgormHg==
X-Received: by 2002:a05:6214:2307:b0:46e:5fbc:3c30 with SMTP id gc7-20020a056214230700b0046e5fbc3c30mr7672794qvb.21.1662648640826;
        Thu, 08 Sep 2022 07:50:40 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::a])
        by smtp.gmail.com with ESMTPSA id j22-20020a05620a289600b006cbe3be300esm166132qkp.12.2022.09.08.07.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 07:50:40 -0700 (PDT)
Date:   Thu, 8 Sep 2022 09:50:38 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        dianders@chromium.org, johan@kernel.org,
        Johan Hovold <johan+kernel@kernel.org>
Subject: Re: [PATCH v3] regulator: dt-bindings: qcom,rpmh: Indicate
 regulator-allow-set-load dependencies
Message-ID: <20220908145038.o4olsfencb54uqiz@halaneylaptop>
References: <20220907204924.173030-1-ahalaney@redhat.com>
 <abad381a-dfe7-9337-ff35-f657bf373d44@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abad381a-dfe7-9337-ff35-f657bf373d44@linaro.org>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 08, 2022 at 12:25:25PM +0200, Krzysztof Kozlowski wrote:
> On 07/09/2022 22:49, Andrew Halaney wrote:
> > For RPMH regulators it doesn't make sense to indicate
> > regulator-allow-set-load without saying what modes you can switch to,
> > so be sure to indicate a dependency on regulator-allowed-modes.
> > 
> > In general this is true for any regulators that are setting modes
> > instead of setting a load directly, for example RPMH regulators. A
> > counter example would be RPM based regulators, which set a load
> > change directly instead of a mode change. In the RPM case
> > regulator-allow-set-load alone is sufficient to describe the regulator
> > (the regulator can change its output current, here's the new load),
> > but in the RPMH case what valid operating modes exist must also be
> > stated to properly describe the regulator (the new load is this, what
> > is the optimum mode for this regulator with that load, let's change to
> > that mode now).
> > 
> > With this in place devicetree validation can catch issues like this:
> > 
> >     /mnt/extrassd/git/linux-next/arch/arm64/boot/dts/qcom/sm8350-hdk.dtb: pm8350-rpmh-regulators: ldo5: 'regulator-allowed-modes' is a dependency of 'regulator-allow-set-load'
> >             From schema: /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> > 
> > Where the RPMH regulator hardware is described as being settable, but
> > there are no modes described to set it to!
> > 
> > Suggested-by: Johan Hovold <johan+kernel@kernel.org>
> > Reviewed-by: Johan Hovold <johan+kernel@kernel.org>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > ---
> > 
> > v2: https://lore.kernel.org/linux-arm-msm/20220906201959.69920-1-ahalaney@redhat.com/
> > Changes since v2:
> >   - Updated commit message to explain how this is a property of the
> >     hardware, and why it only applies to certain regulators like RPMH
> >     (Johan + Krzysztof recommendation)
> >   - Added Johan + Douglas' R-B tags
> 
> You posted before we finished discussion so let me paste it here:
> 
> The bindings don't express it, but the regulator core explicitly asks
> for set_mode with set_load callbacks in drms_uA_update(), which depends
> on REGULATOR_CHANGE_DRMS (toggled with regulator-allow-set-load).

If I follow correctly it isn't asking for both, just either set_mode()
or set_load():

https://elixir.bootlin.com/linux/v6.0-rc4/source/drivers/regulator/core.c#L961
copy pasta below
	/*
	 * first check to see if we can set modes at all, otherwise just
	 * tell the consumer everything is OK.
	 */
	if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_DRMS)) {
		rdev_dbg(rdev, "DRMS operation not allowed\n");
		return 0;
	}

	if (!rdev->desc->ops->get_optimum_mode &&
	    !rdev->desc->ops->set_load)
		return 0;

	if (!rdev->desc->ops->set_mode &&
	    !rdev->desc->ops->set_load)
		return -EINVAL;

I'm interpreting the if statements as:

    1. Can the core set the load (as you highlighted REGULATOR_CHANGE_DRMS is
       toggled by regulator-allow-set-load) for this hardware at all?

    2. Are we able to determine the best mode to switch to, or can we
       just set the load directly? If neither of those the core can't do
       much

    3. Can we set the mode we determined was
       optimum with get_optimum_mode()? If the hardware is settable, and
       the core can determine a new mode but there's no mode set_mode()
       to actually switch that's an error unless we can just call
       set_load() directly with our new current requirement

That's a long winded way of saying I don't think the core asks for
set_mode && set_load callbacks to be implemented (which is how I
interpreted your message above).

> 
> drms_uA_update() later calls regulator_mode_constrain() which checks if
> mode changing is allowed (REGULATOR_CHANGE_MODE).

If set_load() is implemented this is not checked and the load is set
directly before returning from drms_uA_update().
https://elixir.bootlin.com/linux/v6.0-rc4/source/drivers/regulator/core.c#L973

> 
> Therefore based on current implementation and meaning of
> set-load/allowed-modes properties, I would say that this applies to all
> regulators. I don't think that RPMh is special here.
> 

The above comments are why I don't think it applies to *all* regulators.
It does apply to any "mode based" regulator hardware though (which I
attempted to capture in the last paragraph in the commit message), but
unfortunately I do not know of a way to do the below pseudo check at a
regulator-wide binding level:

    if regulator-allow-set-load && !set_load() && set_mode() && !regulator-allowed-modes:
        complain_about_invalid_devicetree()

Basically, the bindings don't really indicate the ops hardware supports
so I can't think of a good way to key check the set_mode() and
!set_load() bits to catch this at a wider level, so I opted to just
attack the dt-binding at a hardware specific level since I can make
assumptions about what operations the hardware supports at that level.

So, with this approach I do only plug the hole up for RPMh users, other
set_mode() users are still at risk. Other than duplicating this to those
users I can't really think of a generic way to tackle this at the
regulator.yaml level since I don't see a good way to grab the ops
supported.

We could maybe add extra bindings to indicate what ops are
supported, i.e. regulator-set-load and regulator-set-mode, and then have
(hopefully this is possible in the dt-bindings) some if statements like:

    if (regulator-allow-set-load) {
        if (regulator-set-load)
            return 0;
        else if (regulator-set-mode && !regulator-allowed-modes)
            return -EINVAL;
        else
            return -EINVAL;
    }

But I'm not really sure how I feel about making each dt-binding specify
what ops their hardware supports.

Regardless I think the current patch helps out RPMh users.. but I'm open
to extending it if we can come up with a good way to do it!

Thanks,
Andrew

> Best regards,
> Krzysztof
> 

