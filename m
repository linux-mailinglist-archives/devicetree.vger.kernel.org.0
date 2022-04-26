Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0801E50EDD6
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 02:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233554AbiDZAxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 20:53:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231556AbiDZAxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 20:53:06 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEDA710D3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 17:50:00 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-2f7d7e3b5bfso53475597b3.5
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 17:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mn2fJZ4E4tQVUtPCpdvme/C3YDoc+wpANdoYG8MGmVs=;
        b=CYlRX6N9Nm1sI5yEp/74RKal1PLTN43Vi+Gmu1h+aj9olJKQI0o5FtvxDOEai/QU6b
         lWwQIMXmdrGEKvsGdf/VcOdooEJ5hCYMga4P/Hz9SKSHdrfF6xwRXa1usHJ2ZqS8NboR
         IEHSPxU6Ca18sm1kH19UjcErDNEo5MPWVJ9mfFs3I++SuOuL86iAhrBaLYpl5wN7/hZ7
         HrlsQ2cYAhftKb3vMai54o5WoRVqj08oHo2dOLbfvzKKv606FhGKC7Y/F/lk3wgh4KoD
         jCHxSV2vIagNPcKuFefft+qOdpw/tbSupCfX1f9oYTCr1pm4aNNRmrmAbCsiEeVPfAoW
         vWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mn2fJZ4E4tQVUtPCpdvme/C3YDoc+wpANdoYG8MGmVs=;
        b=a5+qPTH+pAYN7JoxezgDiDGu5uyh/wBpqqCGHNnNt33LESvbYd9qQxlJnureUNytuL
         udJ+6Pp8uKoUeKVwHFvb0/H1Z3iWo3o02hJzJmmwHRvroQtZwx7N4ZT7YdJFRE1o2UYW
         +oZwBJaf6KiFj7c72caQ+8qNj5bR5ziqiJgp7owOcahWPhazC6dvR4xgpfY+YhATVoaf
         7CkLrpAcVnuYycnbGTC+G3qgsJRWufRyC5K18t80WtLNPxvomIO42dyFShYoo56Tk89d
         kt/NgjqUI9toYF8qjUQJHJLC//qb3mZ1K0zrNKIaRnrg7KkwupNOGg5grJlFzzPKXxlS
         Aq+w==
X-Gm-Message-State: AOAM5339LYEWAKoz22QKDcXW4h6Q8fpLItyNeoNk4OW3QOrfs9yFpNnz
        PdNE6u1XdN2CDJ7ujOkNBx6hnJyMtIvVq7cjzyY=
X-Google-Smtp-Source: ABdhPJzekFeCGe/8/TbIwjBFlKEneo857BaBqKvU/K/YlKCLJr+MSLLucujtwAZ3yRj1TZ3irP66xflTdy2VgaZmu0s=
X-Received: by 2002:a81:1191:0:b0:2f8:1c7f:548d with SMTP id
 139-20020a811191000000b002f81c7f548dmr1758620ywr.375.1650934200106; Mon, 25
 Apr 2022 17:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220425191602.770932-1-kaehndan@gmail.com> <20220425191602.770932-2-kaehndan@gmail.com>
 <YmcdvcyeJJBB1pqW@robh.at.kernel.org>
In-Reply-To: <YmcdvcyeJJBB1pqW@robh.at.kernel.org>
From:   Dan K <kaehndan@gmail.com>
Date:   Mon, 25 Apr 2022 19:49:49 -0500
Message-ID: <CAP+ZCCfT8Mm1OECsrKxzq5vtjyaTiF=ML9LJYkHXO0A6Wao32w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: sound: Add generic serial MIDI device
To:     Rob Herring <robh@kernel.org>
Cc:     tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
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

On Mon, Apr 25, 2022 at 5:16 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Apr 25, 2022 at 02:16:02PM -0500, Daniel Kaehn wrote:
> > Adds dt-binding for snd-serial-generic serial MIDI driver
>
> Bindings are for h/w and there's no such thing as generic h/w. There are
> some exceptions but you'll have to justify why this is special.
>

Thanks for taking the time to look at this!

Not entirely sure if you mean that I'll need to justify the existence
/ need for this binding,
or the use of the term 'generic' -- just in case, I'll make sure to
respond to both. Note that
I'm justifying my reasoning for submitting the binding - but I'm
uncertain myself if my reasoning
is valid, as someone new to kernel development.

The intent of this binding is to signify that a serial port (namely a
UART) is connected
in hardware to a MIDI decoupling circuit, which then connects to some
(any) sort of MIDI device,
either directly to an on-board device, or via a jack/connector. In a
sense, the MIDI device that this
connects to is 'generic', as the identity of the device does not need
to be known to interface with it
over MIDI for most use cases.

I see how this is a bit of an oddball, since it's not specifically
describing a particular hardware
device attached to a UART (like some of the bluetooth modules are),
but thought this sort of
binding might be permissible because of things like the
gpio-matrix-keypad binding, which doesn't
describe specific switches, just how thoise switches are wired, and
what GPIO they use, which is all
that is needed to interface with them. Some MIDI devices implement
extra low-level features like device
multiplexing, but these aren't (to my knowledge) common, and are
beyond what this supports.


The reason that the corresponding driver written has the name
'generic' is for an entirely
different reason. A "serial MIDI" driver already exists in the kernel,
however, it  interfaces only with
u16550-compatible UARTs. This driver uses the serial bus, making it
work with 'generic' serial devices.


If this comment was directed toward the use of 'generic' in the commit
message and binding
descriptions: I can reword them to be more specific and to avoid the term.


>
> > Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
> > ---
> >  .../devicetree/bindings/sound/serialmidi.yaml | 41 +++++++++++++++++++
> >  1 file changed, 41 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/sound/serialmidi.yaml b/Documentation/devicetree/bindings/sound/serialmidi.yaml
> > new file mode 100644
> > index 000000000000..38ef49a0c2f9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/serialmidi.yaml
> > @@ -0,0 +1,41 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/serialmidi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Generic Serial MIDI Device
> > +
> > +maintainers:
> > +  - Daniel Kaehn <kaehndan@gmail.com>
> > +
> > +description: |
>
> Don't need '|' unless there is formatting to preserve.
>

Will fix.

> > +  Generic MIDI interface using a serial device. Can only be set to use standard speeds
> > +  corresponding to supported baud rates of the underlying serial device. If standard MIDI
> > +  speed of 31.25 kBaud is needed, configure the clocks of the underlying serial device
> > +  so that a requested speed of 38.4 kBaud resuts in the standard MIDI baud rate.
> > +
> > +properties:
> > +  compatible:
> > +    const: serialmidi
> > +
> > +  speed:
>
> Not a standard property and we already have 2 of them concerning baud
> rate.
>

Thanks for the correction - I'll switch this to the existing "baud" property.

I somehow missed that there was a fixed list of standard properties to be used,
and just chose 'speed' as opposed to 'current-speed' which I saw on
serial bindings,
since this speed is fixed and can't (and shouldn't need to be)
changed. "baud" describes
this well enough.

> > +    maxItems: 1
> > +    description: |
> > +      Speed to set the serial port to when the MIDI device is opened.
> > +      If not specified, the underlying serial device is allowed to use its configured default speed.
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    serial {
> > +        midi {
> > +            compatible = "serialmidi";
> > +            speed = <38400>;
> > +        };
> > +    };
> > --
> > 2.33.0
> >
> >

Thanks,

Daneil Kaehn
