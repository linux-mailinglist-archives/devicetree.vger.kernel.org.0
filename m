Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95694B8BDA
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 15:55:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235240AbiBPO4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 09:56:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235247AbiBPO4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 09:56:00 -0500
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 127FF1F6B9C
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 06:55:47 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id m24so2714422vsp.7
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 06:55:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=db1zGnn2dNN59CUj5k0yh9BvTpVEDDMbHLAbbVnkYC8=;
        b=nnMn4s9XdSroVEsyoGlkezz6kAt1EiNzcP7BuamQs/kZpvYmjdY6ohDDi6Km4L0SQ6
         rvg3b/CKxIlEDa6V5OVIoxt+0lDzlZq1r4M5Zyhz8NefSUkh6ksusBRCzVPRvX3DHxaQ
         VegOQ+FB0NHQg5HkpXfi1qsLokp7woBWSrlQmEzI8i1nbEECcHbD92ySizZrsqVRhL0B
         /FpoqNXnbJKy5AVIrSh9/J7AmT0BEeCSktinJarjWXqT1Fu7s8vEU5iKcG4xWXVNMYr8
         vBx7mqXeYxEkRWFhbpwz3/bQ3QzuAnY5paGRIy9rVMpLc+iG3jqNamSE3Xp31fpIqcp/
         inpg==
X-Gm-Message-State: AOAM532EXqRTIqrwwWDqfrekjEiewo1c7TIjpZj1cjndDJRYo0TyWm6y
        F6JILhiGyhxES6ytNaxTKaSoFw5KO0HB5w==
X-Google-Smtp-Source: ABdhPJxLVvl9fsyfgGFXWjEI9OJyNu/su217k6xVpwKLlpg2xa9CcuXGT+xRRN8/bviSDaRVodiTwQ==
X-Received: by 2002:a67:d11c:0:b0:31b:dd54:bf20 with SMTP id u28-20020a67d11c000000b0031bdd54bf20mr160270vsi.37.1645023346852;
        Wed, 16 Feb 2022 06:55:46 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id c20sm1256707vsl.26.2022.02.16.06.55.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 06:55:46 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id k15so1351126vkn.13
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 06:55:46 -0800 (PST)
X-Received: by 2002:a05:6122:8c7:b0:32d:7e3:96c8 with SMTP id
 7-20020a05612208c700b0032d07e396c8mr1302556vkg.7.1645023346219; Wed, 16 Feb
 2022 06:55:46 -0800 (PST)
MIME-Version: 1.0
References: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
 <20220216143926.t3dadlsjtkotkv6o@bogus>
In-Reply-To: <20220216143926.t3dadlsjtkotkv6o@bogus>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Wed, 16 Feb 2022 15:55:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV6yWSAx3uNcjqmq-p90sVykZAzSHPt5EONzVkdTj1vvQ@mail.gmail.com>
Message-ID: <CAMuHMdV6yWSAx3uNcjqmq-p90sVykZAzSHPt5EONzVkdTj1vvQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to
 shmem property
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sudeep,

On Wed, Feb 16, 2022 at 3:40 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> On Wed, Feb 16, 2022 at 02:21:43PM +0100, Geert Uytterhoeven wrote:
> > "make dt_binding_check":
> >
> >     Documentation/devicetree/bindings/firmware/arm,scpi.example.dt.yaml: scpi: shmem: [[2], [1]] is too long
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Exposed by commit 39bd2b6a3783b899 ("dt-bindings: Improve phandle-array
> > schemas").
>
> Interesting !
>
> > ---
> >  Documentation/devicetree/bindings/firmware/arm,scpi.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > index 800417a76bda0bd9..3735f221fdf24e0a 100644
> > --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > @@ -51,6 +51,7 @@ properties:
> >        be any memory reserved for the purpose of this communication between the
> >        processors.
> >      minItems: 1
> > +    maxItems: 2
> >
>
> There is no max limit strictly speaking. The driver can use all the specified
> mboxes and associated shmem in round robin fashion. That is the reason I
> didn't add maxItems unlike the newer SCMI protocol which clearly restricts
> to one Tx and one Rx(much saner I must admit).

In the absence of maxItems, the validator assumes it is equal to minItems,
so we do need a sensible maxItems value here.
Any suggestions? 16? 64?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
