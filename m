Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE2C623E04
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 09:53:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232763AbiKJIxP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 03:53:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233014AbiKJIw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 03:52:57 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF123055D
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 00:52:51 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 21so2052942edv.3
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 00:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fBb6YdEA9gaUEUkJZWWTg0hcwQWGE5txA4y6SKN3vPw=;
        b=njSZLr4Gc6ieZhi/fEo0saxFEA99ICpi6izrgmkB+bwp36Kle2fXZCYtgwHD6jJfui
         9cbJ6ffidygDSIzZfnreObgFFin4syG2Lp4PJvUuaeC17PiYMPZwZlQ7gZ07K3uosa1B
         MYaqpCEJl1zX2q/jAnhl+VKctTknZDO6my5LLgvdvwEFBuDGlD8+a1QRZKsW/97x39ve
         4pIvdG7yUrxhsewJvLKLPI/t66RTD4vHdFJ9uQdRRIkIkNXiEqD6RIkH+rpdB+Vshymg
         pEK4hd9oAXib7dyztcVRawyYnOzHWiHt3bidbz48LDr76e0S7QS8UsqUVjtJsHhjFXfO
         Vcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fBb6YdEA9gaUEUkJZWWTg0hcwQWGE5txA4y6SKN3vPw=;
        b=EOk671RDVPqxZ2Rm+PxYc6jTLOfS+6FOqfxVibL3IPM6nUTKy0jvqMGHRr8Lx5Svmu
         f+eCIEFx3EnJpWOzdR7oSeeH2XQ0dBeKvWxfKQ5NrzCezFGDGC76SDqZ5gUdSz/nQj+x
         EdFmRXNhxPthtLTZmPvWh2CfyfrUU4icq83TPMMkC2o6nF3U+D0pamMqn6h+DAYcpsQl
         jyjm9oEHBmKHQiPTbsnKs41KIQil8LULLHSzpo46Nyl8F9Zee1Lk6uDxLBuYmXMOv6Sw
         JAllmJJSM4OOuaoy6KPyNoZy16ZQyt+SZ4Mnp/r6qgugPbw3G78Wk+leGvOj0ylc9Wy8
         Rahw==
X-Gm-Message-State: ACrzQf3Cn1YBQyfGsqNiOIinWQwNS8C+2adKUyayUWtBDf/2u1g8tH3W
        KaUKYzRNr9nliXnklsThJXmRNEXUxiEcEnU1aS65qw==
X-Google-Smtp-Source: AMsMyM5y1/mXEWPO6i8CMdvsA/B92FRKLcP2+Myo557FjafHWoqyog/Q/wROXXdKpRuoiZ0KrgWBakxNsIGvLb6Ii2Q=
X-Received: by 2002:aa7:c718:0:b0:462:ff35:95dc with SMTP id
 i24-20020aa7c718000000b00462ff3595dcmr61060027edq.32.1668070369950; Thu, 10
 Nov 2022 00:52:49 -0800 (PST)
MIME-Version: 1.0
References: <20221028205009.15105-1-macroalpha82@gmail.com> <20221028205009.15105-3-macroalpha82@gmail.com>
In-Reply-To: <20221028205009.15105-3-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Nov 2022 09:52:38 +0100
Message-ID: <CACRpkdYPfkviGFwnWoyLZz-gPebRZqcU6d8E-sOzZjb4NwX16w@mail.gmail.com>
Subject: Re: [PATCH V4 2/3] dt-bindings: display: panel: Add NewVision NV3051D bindings
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        thierry.reding@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

thanks for your patch! The following is just nitpicks so take it or
leave it.

On Fri, Oct 28, 2022 at 10:50 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> is used because the hardware itself is known as "anbernic,rg353p".
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
(...)

> +  reset-gpios: true

I would add description: and say that this needs to be flagged
GPIO_ACTIVE_LOW since the reset signal is active low.

> +  vdd-supply: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - backlight
> +  - vdd-supply

If someone happen to just wire vdd-supply to some fixed regulator
then they don't need vdd-supply so this is a bit of a tough requirement.

Yours,
Linus Walleij
