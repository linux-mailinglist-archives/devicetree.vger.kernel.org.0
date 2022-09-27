Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADE0B5EB8A0
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 05:22:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230514AbiI0DWd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 23:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230455AbiI0DVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 23:21:37 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 726CB90820
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 20:21:35 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id t62so10518053oie.10
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 20:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=J33Vqwf7RplwM1v1bWHoP5Dy37kFmZPW/FgJnb1/pDY=;
        b=Mu6FJ4UX7XaPzMXvs7XhGsxRxNDG5proE5mHp5igNcNiuwlc2fklCxxDP1oLl7FptH
         WpjHLiI/JQKSb1XXfAp+73bchgZ/OboDLCFvfmc/gVqs0n4z7lG3OTCLHPif8iuanMOA
         VdT1fPOqMQzH/NDpIkzXHsEC70UlNeudvGs11EO3UHGKkYwgyeYqWPNSaJi+JI6SIpmO
         1W5IOvNKyj5it2HEM79RBrRfMZff2C9fKdmzxdU8HUnxekjZpnfIShg9dCUy6yZRtWDr
         sVjTCW00vLth/bIQCcXHmEitcMUi17b9sgEeUh6tUjULkP26MmR/Q/kOfpBfCNv/Ir59
         oDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=J33Vqwf7RplwM1v1bWHoP5Dy37kFmZPW/FgJnb1/pDY=;
        b=AdbcpntWXrwdjfhewb4eOJflhnYBpEX1809BJj40AIKhX4R5leNDvI0Lc0HLL9bJ2Q
         Br3K1WjOciPNrXLZIv9at4tadBDAruLc2bw+mBRj3rhNRHhKKk+wX0oDE8MhTDdTgjYa
         ELBuLFBynoEwDO+EF2fTpjismd0mbPIV8+TAIfoD2LLoj43VJUtv3Wzk75V+x4ddfNpJ
         iF2tHETYGlb6YzoObob1TZzYGFN7Yc8yMJ+buuy03t286kHXtNveCyxxVBWrxo9BzYqu
         hVb7ANL/xsY6unJLUH2MnBMN6OXxo8Dy1/tU8KINEOuJ7jcjA8dSFiaH397D7KYqqowB
         BLOA==
X-Gm-Message-State: ACrzQf23UeIUVwPzjqQiierUzHALhezxVN3z6UWNPlBzMHAog63y/li4
        Qogf65zgTJ+19uoOedYwapZ+di9Ia445ytP6JZdpSyGg46A=
X-Google-Smtp-Source: AMsMyM6xMv73zslgWFInKQ11Omq4T6SoASH09T2d8Dr+fPazkf+lpEHinI0DDA7LgwAxUMHh2kuWn70rHHrqz2hJtVI=
X-Received: by 2002:a05:6808:181e:b0:350:7776:9059 with SMTP id
 bh30-20020a056808181e00b0035077769059mr868930oib.83.1664248894454; Mon, 26
 Sep 2022 20:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220921072817.611223-1-sergio.paracuellos@gmail.com>
 <2b5b2937-45ae-42dd-1d96-115898eb9c7f@linaro.org> <20220926182848.GA2523250-robh@kernel.org>
In-Reply-To: <20220926182848.GA2523250-robh@kernel.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Tue, 27 Sep 2022 05:21:24 +0200
Message-ID: <CAMhs-H-fK=F7Wy7-pti+0SKo8DqyZGWu_g74-5MYLxzBhaihmA@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: spi: migrate mt7621 text bindings to YAML
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

Hi Rob,

On Mon, Sep 26, 2022 at 8:28 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Sep 21, 2022 at 09:29:00AM +0200, Krzysztof Kozlowski wrote:
> > On 21/09/2022 09:28, Sergio Paracuellos wrote:
> > > SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> > > There are some additions to the binding that were not in the original
> > > file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> > > properly match both dts nodes in tree we need to add to the schema
> > > 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> > > 'reset-names' use 'spi' as string so maintain that as const in
> > > the schema.
> > >
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > > ---
> > > Changes in v3:
> > > - Add Krzysztof's Reviewed-by tag.
> >
> > There's no need to repost patches *only* to add the tags. The upstream
> > maintainer will do that for acks received on the version they apply.
>
> But not when they aren't Cc'ed. Please resend to Mark B and linux-spi.

You are right. Patch already resent cc'ing also mark B and linux-spi.

Thanks,
    Sergio Paracuellos

>
> Rob
