Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA68F5BCBA0
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbiISMSN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbiISMSM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:18:12 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC5FDF16
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:18:11 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id o184so14366676oif.13
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=o8f93Eb0LTauscCgU47VF4GnWamKTLbXLfTo5tkdPSE=;
        b=q5FDkP55uHZx5pAihHpqqkjMLENI0ErjF8nF+ybZ30VjMGIshjv029Kh/bltJUCzXF
         Q8CjSPu9CX5FSu493utBuPjFknFkMIyMSGgOS4HCA4NFtVIB02WHLtCe5g0xh7tZ018N
         HtwE/bcujTmq2K6WgM2hbbnhzVlHUI7zbNMuFrMveICIbqhpKs966wpPGefLtKhPNK4X
         GExN+GpP3YYbittYfe0cK5hfT6uIGGDetIRRlrrFop7oqYqfHmSaAZWvez3WIhigz4Gx
         IzG8df31PNL9axePPwff7sH3s5YzdH2mBJs32zzv1UvdxXdMvPpEb5/oiJ2zGXdLvxW0
         dI4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=o8f93Eb0LTauscCgU47VF4GnWamKTLbXLfTo5tkdPSE=;
        b=dyDQS8yv2uQgEsUasyq332uwqGZ5Uu/nN2cOkMhIwUZxoU78gmyevkzjaCm7fIxqMv
         daitCxnOTirhbFb1NJykGx+ZAQfZI2V6s1+CB5kB2Vu2V7Bqs0xuzbuaTJuyGkNv0fUN
         F+6TNGzmZl9J2/wXCYQ23MAdz2xAHkmnBldAr5D1r2tvjB0yfXUmBwDoLKBzC+uRsYjE
         KIQBuPIXa+agU44QdSp1rFv7gzZCSYmj7vRapKWofp/m6DjmDvQl2n5vesH9egIIgcwO
         D47zS/NOXMM7SyDTN6olcspcaowE02nHjb1wmlJipwRLYZ/cIQ6oIp7zJ091+jyeBK2g
         0ZKA==
X-Gm-Message-State: ACrzQf3/ss/nhQfZS6oVpNLCxLU9eX9QmKpQevb0gUlGfHOcWM74xHr5
        A9JLENChsKwGk1Mc2FwrUn6CBlt5A2w9BgRV6C0=
X-Google-Smtp-Source: AMsMyM5zHSFWziVKPrOyxvGc6v+gHUFy3VE/gyGuDLNUCP3NiWV4HHlkep7JGlAZ5UDzTzChghdA1rs838btYWKbf0s=
X-Received: by 2002:a05:6808:23ca:b0:350:92c4:3422 with SMTP id
 bq10-20020a05680823ca00b0035092c43422mr3477036oib.144.1663589891092; Mon, 19
 Sep 2022 05:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
 <41c7a2a1-86b2-289b-8507-6f3d462aa1ed@linaro.org> <CAMhs-H9aT1+BNR6fudMiZ+6xWevqkMm=XMjgwHDD6c6YXwn-Ng@mail.gmail.com>
 <036a6aa7-43f6-409a-38d5-098b838dc2ca@linaro.org>
In-Reply-To: <036a6aa7-43f6-409a-38d5-098b838dc2ca@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 14:17:59 +0200
Message-ID: <CAMhs-H-Jyo5OHWt6YhbcVL0cCxi9vHg49AE+vMPXr50RzAAe=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        sr@denx.de
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 19, 2022 at 2:00 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/09/2022 13:49, Sergio Paracuellos wrote:
> > Hi Krzysztof,
> >
> > Thanks for the review.
> >
> > On Mon, Sep 19, 2022 at 1:20 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 17/09/2022 06:27, Sergio Paracuellos wrote:
> >>> SoC MT7621 I2C bindings used text format, so migrate them to YAML.
> >>>
> >>> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >>> ---
> >>
> >> Again, do not base your patches on something old.
> >
> > I will take it into account from now on. Since it was just an addition
> > and removal of a file I thought it was not important. So, I guess some
> > address I am using in CC is not listed in the MAINTAINERS file now??
>
> You keep cc-ing my address which was changed in mainline around half a
> year ago. Patches end up in different mailbox.

Sorry for inconvenience, will cc correct address on next version.

>
>
> (...)
>
> >>
> >>> +
> >>> +  clocks:
> >>> +    maxItems: 1
> >>> +
> >>> +  clock-names:
> >>> +    const: i2c
> >>
> >> Why adding this?
> >>
> >> You need to describe in commit msg all deviations from pure conversion.
> >
> > Looking into the users of this binding I added all the stuff I found
> > in dts nodes. So I think it is preferred to just make a pure
> > conversion and set unevaluatedProperties to true?
>
> No, unevaluatedProperties must stay false. As I said:
> "You need to describe in commit msg all deviations from pure conversion."
>
> I did not say preferred is to make pure conversion...

Pretty clear, thanks.

>
> Best regards,
> Krzysztof

Best regards,
    Sergio Paracuellos
