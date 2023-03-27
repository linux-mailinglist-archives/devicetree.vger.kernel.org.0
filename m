Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 735886CAA46
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 18:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229677AbjC0QQ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 12:16:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229525AbjC0QQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 12:16:56 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AC22524C
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 09:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679933759;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=tr+WD6+CTYSVy+3bIJpQprNnSLspmj5WbXleE2+KZLo=;
        b=hSlZllnPyhGUWC/ggdWe76pJGTlVIpmFzoD6LYPo/UJD3bhrZVlfAibwmizFHqIhI6qM4e
        m0EWM01qkycbCbs9dAAeGTnG1Rk5iclmSpjrIiN2Hl/+F4E+2OWZPVEgDnEUF4+pDkHCgt
        NfzfvzB8WWL2+13jaeYNf+lj39+iXaw=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-539-nXKVOyg9O0OeHt0_NtXTZg-1; Mon, 27 Mar 2023 12:15:58 -0400
X-MC-Unique: nXKVOyg9O0OeHt0_NtXTZg-1
Received: by mail-wm1-f72.google.com with SMTP id iv10-20020a05600c548a00b003ee112e6df1so5043384wmb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 09:15:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933757;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tr+WD6+CTYSVy+3bIJpQprNnSLspmj5WbXleE2+KZLo=;
        b=kKyjESfwaUg7pYlHKgTPsXgu/KEqkj/K/t7ZpGuqXGLlKvBvUdq8dzWJWP4YmB9Jee
         fvi8ajm1FikUcYXz3JT9gLUfV82d9jakY2WPijPvUp7DKl1wgQTBjPk0dadEIH4xoK5i
         G021lZKVNilhJPTZg1UqtgLrwVmnn3gw+Cd2J84lRSt95oRWgQJPqwih3EE2Yc8f7Hpr
         N5zbvUCx9m33ylpXUuWOEkdyC0qNRPw9jvG9V8/nSXkWfKXyZ0Q4tRhaki326EaXR4xk
         g4VxDqIb36RtZw38ZueMYEOUjWkah2U8ybxlA3xWAywxsxSAfeck4YDaB5Rhab3hyT6V
         pneQ==
X-Gm-Message-State: AO0yUKWQ+UAR6fAhctVpNMrMu8Ek6/+OD/NACdDkCnHy49HSWdqYSH29
        nnW6PfedLuU4qRqvCj+jZ+YKN8XOG1E5H9MB1rLWBIRJeD24xnuyNjYkfEjS/KkuFTvpQp78I74
        uHf6Upt1dASOxgPE0sCcASw==
X-Received: by 2002:a05:600c:2114:b0:3ed:492f:7f37 with SMTP id u20-20020a05600c211400b003ed492f7f37mr9156566wml.10.1679933757079;
        Mon, 27 Mar 2023 09:15:57 -0700 (PDT)
X-Google-Smtp-Source: AK7set9k+XPb+CPOEQbw1BrWiSX82Db3GJ1LZxPLDOINlpFxnu2WxagxZuxwLYswHAaRRCivF3Rkbw==
X-Received: by 2002:a05:600c:2114:b0:3ed:492f:7f37 with SMTP id u20-20020a05600c211400b003ed492f7f37mr9156549wml.10.1679933756765;
        Mon, 27 Mar 2023 09:15:56 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t9-20020a1c7709000000b003ed1ff06faasm14048979wmi.19.2023.03.27.09.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 09:15:56 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        =?utf-8?Q?Ond=C5=99e?= =?utf-8?Q?j?= Jirman <megi@xff.cz>
Cc:     linux-kernel@vger.kernel.org,
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
In-Reply-To: <1924921.PYKUYFuaPT@diego>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
Date:   Mon, 27 Mar 2023 18:15:55 +0200
Message-ID: <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
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

Heiko St=C3=BCbner <heiko@sntech.de> writes:

Hello Heiko,

> Am Montag, 27. M=C3=A4rz 2023, 17:39:57 CEST schrieb Javier Martinez Cani=
llas:
>> Ond=C5=99ej Jirman <megi@xff.cz> writes:
>>=20
>> Hell Ond=C5=99ej,
>>=20
>> > Hi Javier,
>> >
>> > I've tried the patch on top of linus/master and it works as expected. =
My
>> > DRM test app shows 16.669ms between frames. The display output is ok on
>> > developer batch pinephone pro, and is corrupted on production version.
>> > Display also doesn't come back after blanking. All as expected.
>> >
>> > Tested-by: Ondrej Jirman <megi@xff.cz>
>> >
>>=20
>> Thanks for testing.
>>=20
>> > A few more comments below.
>> >
>>=20
>> I'm OK with these comments but I did a git diff with your orange-pi-6.3
>> branch just before posting and this was the latest that's in your tree.
>>=20
>> So feel free to either post a v3 addressing the things you are pointing
>> out or lets land this and we can post any further cleanups on top IMO.
>
> I would really like to _not_ apply essentially broken code, so really
> would prefer the v3-approach.
>

It is broken though? This is what is in Ondrej downstream tree and I see
no issues on my Pinephone Pro. He mentioned some flicker when looking at
the signals with a scope and hooking a photoresistor.

But that's fair. I'll let Ondrej then post a v3 if he wants to address the
issues he pointed out, since is his patch after all.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

