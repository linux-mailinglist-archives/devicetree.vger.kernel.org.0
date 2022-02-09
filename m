Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5AB4AEF10
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 11:16:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbiBIKP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 05:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233792AbiBIKPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 05:15:51 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898A0E04A3F9
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 02:11:59 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id e3so3196528wra.0
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 02:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=3lmnDITlKZBhzKWXgY50/RQQbre4WLWHc0yLkUPCQ74=;
        b=6e+b1Sw4vIZw0DySFG40Umh20tQ4IZin6NeheDOXMPAKwK49Yh8uFyrldXjHZuKby1
         vfqhc5U9a1OYA3X3b9NwTOaRliA+QYH6osheDlspt+3mtUR6KNiRpDhOtKf2fP33TF03
         po1RWmtZ9sAtRR9zDxpCXaoc5qB3x/chRiGvc8O9meAQ4LajQhhW4By9JmHkYzgcxLWo
         RZ9nGSOLKSoiKvTsH3AN5TKhCdwrrLk8OcVT2kRPtH9CAi8ZMbQJLga1XTlBg7IzG0X4
         dA3S3BEXL7Qk4s5SQvOBO4RUCeyAHxNdQ7tzr2NmodWmuYpYMYc508h1RcG85LNgfIvD
         akag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=3lmnDITlKZBhzKWXgY50/RQQbre4WLWHc0yLkUPCQ74=;
        b=nIuQD/193unCBVJfmTQ2FjF6gSo3ivQ/UVKCXPJqbYlZgmD1/eyBG4kweCgGLAqKCN
         e+ai8dQS1XoYr1OB7nIEHuaQ07Fb2TDRd0+31v6v+N99pxVP9TavtUZPvk2jPpzoyvt9
         Xn6FTDKpTv389dW0GPDvLtne4vfvXbGPj60p+zMSMypqkM60+PGwe0xdOfLB3tu7Lg38
         Ha/V8y3wqQgGyH1DqqL6KNr+b013NPuborrdfpwDS8HMFxOs7/Tm5pAwx8baA2ZNxQW5
         5/S1jXt5ITq5yLWXlJS5eOjiDvEKmVydDXdDZJKECFkEIQpraU2up4zAUea7gnXvQRqz
         bDow==
X-Gm-Message-State: AOAM531uhiBL3zMxF9NNj3UWjvSaKm6HPG32wmkFlT5+G4L0L4h31Wo5
        53hTHfuWjsFvp+NROedO60WKgA==
X-Google-Smtp-Source: ABdhPJxpwKqZgIXbsr62Cqdrh1M3vzIKmNaC2rJxitMBgBFSa4Ng2ZXNlIn/SZVDo7qv4FbRozMbdw==
X-Received: by 2002:adf:ecc2:: with SMTP id s2mr1425973wro.185.1644401428550;
        Wed, 09 Feb 2022 02:10:28 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id b11sm3116063wmq.26.2022.02.09.02.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 02:10:28 -0800 (PST)
Date:   Wed, 9 Feb 2022 11:10:25 +0100
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     daniel.lezcano@linaro.org, robh+dt@kernel.org, tglx@linutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: timer: Convert faraday,fttmr010 to yaml
Message-ID: <YgOTEToGlRA4yf1W@Red>
References: <20220209090058.1472964-1-clabbe@baylibre.com>
 <1196e292-23ea-78e5-7d72-38586f65e26e@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1196e292-23ea-78e5-7d72-38586f65e26e@canonical.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Wed, Feb 09, 2022 at 10:07:22AM +0100, Krzysztof Kozlowski a écrit :
> On 09/02/2022 10:00, Corentin Labbe wrote:
> > Converts timer/faraday,fttmr010.txt to yaml.
> 
> s/Converts/Convert/
> 
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > Changes since v1:
> > - added moxart example
> > - relaxed some contraints as driver only support one clock and one
> >   interrupt (as used by moxa,moxart-timer)
> > Changes since v2:
> > - increased max size of interrupts
> > - fixed all issues reported by Rob https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220126160021.3537591-1-clabbe@baylibre.com
> > 
> > All aspeed-bmc-vegman*dts are expected to fail and will be fixed via:
> > https://patchwork.ozlabs.org/project/linux-aspeed/patch/20220127141604.1163-1-a.kartashev@yadro.com/
> > 
> 
> (...)
> 
> > +
> > +  syscon:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: true
> > +
> This should be false (and was false in your v1).
> 

Oups, sorry
I forgot to remove it, it was my first try to fix vegman DT.
Anyway I also forgotten to remove some property in example which will be no longer in vegman.

I will send a V4
Thanks
