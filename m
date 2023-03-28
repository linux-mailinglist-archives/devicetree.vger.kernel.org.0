Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF0D36CB485
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 05:09:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231587AbjC1DJP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 23:09:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjC1DJO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 23:09:14 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498212128
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 20:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679972906;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=DF8xiGEDG2aydgSMMjZ0jG6716l6RkLPMVKpPTgA1LU=;
        b=EnH2t3iSn0oj/4pKz0maZmTbKodkXGS0IJ/UmDdMgbO6qHECqA379k5hhb6YUPzuIQ7f/Z
        uNhvjZoKlCB6HqvYZJEUBlVkirW+4cvvmxyuX4i/rtovj6uw/WLBJdJUz2Z5yfDlrcIdC0
        RvDDdsEeqkj7XvSpMegAbOEH/OoIyrQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-206-nOmUR1DEMtC-qxGxzgA9Tw-1; Mon, 27 Mar 2023 23:08:24 -0400
X-MC-Unique: nOmUR1DEMtC-qxGxzgA9Tw-1
Received: by mail-wm1-f72.google.com with SMTP id bi27-20020a05600c3d9b00b003ef6ee937b8so2362972wmb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 20:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679972903;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DF8xiGEDG2aydgSMMjZ0jG6716l6RkLPMVKpPTgA1LU=;
        b=i9KxpkbNZq9bFU5hPV+X7b5AOAL9danW+TGa8ICvQpiavqXLY0Omz2edAD0ncXSIIp
         +KdnliYo6fTMRmN2eDUajkqC0L4kJcPzpV9G6VzzgoR7LA0F3WaJY3uICrLue2Pc8/5C
         i/fGFchUl6/NUoe280driW21ukFZqrAslhgnkQqqx7UYSBkFG9ysYP2TZmpzzhIxWlmf
         kKKFxFXekvSJ9Hwfl0JRnhoIB2fqfnOmFcZ6YGwiRgjuDKetd9g/W6PU3bOdOFhjkqBx
         7FbkW4tasScLVDRq+quExZJ+Fx42l7SG8cgb13+cgslGgKjtSZFpOtTmpvJDGPP6t4Te
         2ElA==
X-Gm-Message-State: AAQBX9dBvtoOH51Tichmbja0tfB0hvZnilc+UIqh5aoK3fZzlrMLnSsD
        JhOEsOa/D2zuRuL1pjihoxdN3G6Jr/v094cIZW/DBfesnJTrkk2hJuSI+Aa5WrlWEpLD9j+R/cO
        FkFsfQ1FY3dgqcLkH5L1mkA==
X-Received: by 2002:adf:f1c3:0:b0:2ce:adbf:cb14 with SMTP id z3-20020adff1c3000000b002ceadbfcb14mr11653874wro.28.1679972903648;
        Mon, 27 Mar 2023 20:08:23 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZKIAjbXHGpog35RyWxzgmMXVcD6mNpoeRHryb054olGh4cgVbvxNpHT37A2iqHNRx4L23JiQ==
X-Received: by 2002:adf:f1c3:0:b0:2ce:adbf:cb14 with SMTP id z3-20020adff1c3000000b002ceadbfcb14mr11653856wro.28.1679972903250;
        Mon, 27 Mar 2023 20:08:23 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id d10-20020adfe88a000000b002c70e60abd4sm26534411wrm.2.2023.03.27.20.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 20:08:22 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc:     Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        linux-kernel@vger.kernel.org,
        Robert Mader <robert.mader@collabora.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Martijn Braam <martijn@brixit.nl>,
        Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <20230327194518.qkm5qgap6vkivpeg@core>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
 <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
 <20230327174855.xpxrdfldqcxk463r@core>
 <87jzz2rrfr.fsf@minerva.mail-host-address-is-not-set>
 <20230327194518.qkm5qgap6vkivpeg@core>
Date:   Tue, 28 Mar 2023 05:08:21 +0200
Message-ID: <87a5zxshcq.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ond=C5=99ej Jirman <megi@xff.cz> writes:

> On Mon, Mar 27, 2023 at 08:15:52PM +0200, Javier Martinez Canillas wrote:
>> Ond=C5=99ej Jirman <megi@xff.cz> writes:

[...]

>> > Just because something is in my tree doesn't mean it's mine, or that I=
 reviewed
>> > it in detail and prepared it for upstreaming, or that I'm interested in
>>=20
>> Thanks for the clarification. Because the patch had your authorship I
>> wrongly assumed that came from you. Sorry about the confusion.
>
> Ever since base DT support for Pinephone Pro was merged, none of the DT p=
atches
> in my tree are in the original form as prepared by the authors + fixes I'=
ve
> added. That's simply impossible anymore.
>
> To look up who did what, you'd have to look at older branches, pre-merge.
>
> Patches after the merge just came from squashing everything into one patc=
h,
> cleaning it up, and re-splitting along some vague functionality boundarie=
s,
> while trying to keep best-effort original SoBs as faithfully as possible,=
 so
> that I can keep maintaining the PPP support in a sane manner.
>

Go it.

> Anyway, SoB's are added in chronological order. So:
>
> https://github.com/megous/linux/commit/471c5f33ba74c3d498ccc1eb69c098623b=
193926
>
> Means the author of the changes is Martijn + Kamil (roughly) and I may ha=
ve
> a line of code in there too, since my SoB is last. For some reason, the o=
rder is
> inverted in the patch you posted, making it seem I developed these changes
> originally.
>

Since the patch had your authorship I changed the order so that your S-o-B
was first but I'll then change the author in v3 and make it match the
first S-o-B entry in your tree (Martijn) then.

>> > upstreaming it. I'm just trying to help you with your upstreaming effo=
rt by
>> > testing and review since I got to know the hardware quite well over th=
e last
>> > years and can check the schematics and datasheets quickly, and I like =
to think
>> > upstream code is held to higher standard. That's all.
>> >
>>=20
>> Appreciate your help and I agree that upstream code should be held to a
>> high standard. But since the DTS in mainline is pretty basic anyways (you
>> can only boot to serial right now), is not really usable for other thing
>> than development and keep adding the missing support.
>
> Having wrong frequency used is not a missing support for something. Sorry=
 it's
> too bothersome to get the review piecemeal, but sometimes people have mor=
e time to
> look at patches in-depth, and at other times they don't and you just get =
surface
> level or no review.
>

Ok.

> One point of posting patches to the mailing list is to get review. And it=
's not
> that great to do in-depth review for you, up to going through schematics =
and
> datasheets, testing, and even proposing and testing solutions for found i=
ssues,
> just to be dismissed without technical reason.
>
> The thing is this review will most likely happen just once, and noone wil=
l go
> back, read through the entire huge DT along with a schematic, to look at =
whether
> this or that pullup is really necessary, whether some parameter is out of=
 spec
> from the datasheet for each part, or things like that. That's just not
> pragmatic.
>

That's fair.

> Instead, people will happily attribute non-obvious issues caused by these
> omissions of manual review to shoddy or slow or power-inefficient HW. "1k=
Hz
> + harmonics interference in codec because high power backlight DC-DC regu=
lator
> basically spews off 1kHz of 1-2W load + harmonics because it's driven
> incorrectly? Ah, the phone just has a shitty audio codec!"
>
> So, don't take it as some perfectionism. Upstreaming just seems like the =
best
> time to look at things that were overlooked in the past in more detail an=
d get
> these little things right, because the DT additions are done piecemal and
> slowly/gradually, so it's more manageable to review and fix right away. T=
his
> will just not happen later on for these obscure devices like Pinephone Pr=
o,
> where the whole effort that goes into it is like one half of a fulltime
> developer time split over 4 mildly interested real persons, slowly taperi=
ng off
> over time as the device ages.
>

Makes sense. I'll address your comments in v3 then and also include a
separate patch (again with Martijn as author and the S-o-B as ordered in
your tree), that includes the touchscreen DT nodes as well. Since Jarrah
pointed out that there's already the correct compatible string in the
driver's OF device ID table.

> regards,
> 	o.
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

