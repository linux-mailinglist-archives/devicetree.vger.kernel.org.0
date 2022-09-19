Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0F95BCB9D
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbiISMQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiISMQf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:16:35 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F9DEDF12
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:16:34 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id r13-20020a056830418d00b0065601df69c0so14230002otu.7
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=d60Znzhgguy7LOlxPsmIHzGOr1MPJ+CgWm3LsmxBCUE=;
        b=q2hjwJ5AeUeAhberEVvE2wW9A6bSCPbPR//9AC4oe4C6wM/GdIzJU0FfR3LxbCVRPb
         XFV1W9/gtLCMxTElVh+BXevgOvFUs3LK+BfR605lDuK4zgWLg0Wd5XpW1JleGy4Amg+j
         B3qDJLGNeJeryAZPUpVr2Vv9m1xY/njtpyv5/ruFiOyrcVH0mddGTXoXXNswwjc8Y3f1
         lQNBz8htMfcTohQVt1/A7Cl8Ttr+P3lXVXPYSroizh+xGNJW+5kympuyKGa8HBYhqEqT
         vLrSY2R/my5W9cdnVSf5r5mb0fc46IdMlXp3omcrPXe2wIhaTpO3p17e13jt0S8LyCKY
         Wi9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=d60Znzhgguy7LOlxPsmIHzGOr1MPJ+CgWm3LsmxBCUE=;
        b=qTFvsEr1wllkpnkmsLKnFS0vjUGNNImHD6EX/4rjkNUzexDOtDKx8iZJzj/hB8UtH7
         hn3rPeE3dWiGJweKvhLY42PXwM03jGMXm5s9MzAO6cu5cqEA9gOv4hC0zNJRQ+jJwa2v
         C4wSytGvlPjNkN5GCO/c3Y6juz58sYv98XC7MeOlCcXeoqdwfXR0Hu5Vt4f2Road1QTe
         p7OAu400X032GG8ugxQ+9Khu2wksR8eHH0wuPL6ZUXNlfsu8B+mfNd/dE+iZt5qdFf/g
         rmusLnU50ncO86xw9FkhEijfNqobNoumfDqCuABChmRcrLEL15Wc2DMJ6Izx871uEIB/
         IEGQ==
X-Gm-Message-State: ACrzQf3U0bwA+3FQuGV1IPMxDHVYswOSkrqmgVRjAnJowFCBevyMaV1w
        vTKpOXBec4RTObNkoqpTqQfKzIx+MLZ5zOqVRmI=
X-Google-Smtp-Source: AMsMyM7dKR+45OpquqsemJTJr2eTkn+192AhMSaZ9UICNPDoyo9J3F8IDXTmvj06NHqTd+zVCKhufQfHqjCT5EjeSAA=
X-Received: by 2002:a05:6830:150e:b0:655:bc7d:1e5d with SMTP id
 k14-20020a056830150e00b00655bc7d1e5dmr7793624otp.272.1663589793414; Mon, 19
 Sep 2022 05:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220916043415.489179-1-sergio.paracuellos@gmail.com>
 <b5fe0746-44d9-9513-8190-b55ec984b603@linaro.org> <CAMhs-H_91RJ0thPP_RXKKPk4WihcfH=t2ww01Sk1K8ono+UF=A@mail.gmail.com>
 <cd978975-5da3-661a-1eeb-f45e32f0e484@linaro.org>
In-Reply-To: <cd978975-5da3-661a-1eeb-f45e32f0e484@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 14:16:22 +0200
Message-ID: <CAMhs-H_eE9fMF8cuxX4adBjmNRqfkJJAA5MMNV3=DD7B+H4XOg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
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

On Mon, Sep 19, 2022 at 1:57 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/09/2022 13:55, Sergio Paracuellos wrote:
> >>> +maintainers:
> >>> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >>
> >> What about existing maintainers?
> >
> > Understood. I search for files in the MAINTAINERS file and not for
> > directories. Will properly maintain original maintainers in the next
> > version.
>
> This is looks like architecture device, so I expect architecture
> maintainers to be listed here.

Ok, I will add Thomas as maintainer for this, thanks.

>
> >
>
> (...)
>
> >>
> >>> +  - interrupt-controller
> >>> +
> >>> +examples:
> >>> +  - |
> >>> +    cpuintc {
> >>
> >> Node names should be generic.
> >> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> >
> > This is the name used in most of the dts files in the
> > 'arch/mips/boot/dts' folder of the kernel tree... I guess I can change
> > only the name in the binding example or should this match with real
> > dts files?
>
> Change only in the example. Interrupt controllers are named
> "interrupt-controller".

Understood!

>
>
>
> Best regards,
> Krzysztof

Best regards,
    Sergio Paracuellos
