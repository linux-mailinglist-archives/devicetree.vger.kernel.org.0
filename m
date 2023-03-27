Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC0FA6CA9F7
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 18:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbjC0QG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 12:06:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbjC0QG1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 12:06:27 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C74B93C29
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 09:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679933138;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=L8sIf8fNOSA0LrsvSZrNL5VZXX1uPBBClTOCqCvRs0I=;
        b=VFoU62JjxUZujmDzvSvUgqVp/DzEVQK7T4Ilrf2A10wKiuatDPb1HbxXEtV6EAE7Mzd4Ht
        MhNHzD+qBhEwbcagoaNPCzr1UvrAZyICd5HbPbes4k7CoiGj6w4y66fKBuutljS6ip93Qo
        Snks2N+gniyMVC4CgpPsqDiM6l8+9nY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-641-JYgLhHNFPkCuAS11frf0wQ-1; Mon, 27 Mar 2023 12:05:36 -0400
X-MC-Unique: JYgLhHNFPkCuAS11frf0wQ-1
Received: by mail-wm1-f72.google.com with SMTP id bi5-20020a05600c3d8500b003edda1368d7so5028097wmb.8
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 09:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933135;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8sIf8fNOSA0LrsvSZrNL5VZXX1uPBBClTOCqCvRs0I=;
        b=wvHD8NrSUt/p3VVtcVjLXibifgoFqO9Dvf7QYgfBOFfj/tzTD5Hp6xPRjVRYSHQ1Kg
         VCD0c/qGHM4n7t8TuzNPgmOx/HkunoZEjLviXLJtjcSwyuKpynOCXxJv8xdJyjfAeLAz
         9aEZIRU8pVodNFa5mRrtl6xTdIYbZL9Zzo5CLevicJxC3E1BLuG/8sXAr4u8ilR6TicT
         fP8QWevS5ECgttjPvhY03t8uM0gVPsjXqJttmPv6RjslrhssqU4+IQS1wzrc8L4mEhWJ
         0bOkpzDANhhM+STgbQxBcOuLSw2XYclASVUj7qHdss5EnRE905OMqC2AWa5baybjLSip
         ud/A==
X-Gm-Message-State: AO0yUKWqslI3zGQjFYPHZVDJ1122vmS0bBUui861or4KkXt3C9oZzZT1
        7HiXO69YFe+2YISQ91P5U2i9ey+c1Je3k4vEUPvplcvMkb3Wh7588sKUugBW3EuPYdXK3G427BP
        wyjaIrvOVwiBfxe+ODCRwSg==
X-Received: by 2002:a05:600c:220f:b0:3ed:fc8c:f197 with SMTP id z15-20020a05600c220f00b003edfc8cf197mr9512251wml.29.1679933135245;
        Mon, 27 Mar 2023 09:05:35 -0700 (PDT)
X-Google-Smtp-Source: AK7set/ueZGzGkRgkxHPRqizqte28dR8SgIO3HwkC7wFGoe8F/w4N5DuFt7NtQ/6iWmCYSxStxv8aA==
X-Received: by 2002:a05:600c:220f:b0:3ed:fc8c:f197 with SMTP id z15-20020a05600c220f00b003edfc8cf197mr9512213wml.29.1679933134969;
        Mon, 27 Mar 2023 09:05:34 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c510900b003ed793d9de0sm22523733wms.1.2023.03.27.09.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 09:05:34 -0700 (PDT)
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
Date:   Mon, 27 Mar 2023 18:05:33 +0200
Message-ID: <87tty6rxgy.fsf@minerva.mail-host-address-is-not-set>
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


> Thanks
> Heiko
>
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

