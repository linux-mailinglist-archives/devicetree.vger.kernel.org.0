Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C18996D12B4
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 01:00:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231163AbjC3XAN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 19:00:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbjC3XAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 19:00:12 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B3F8D33C
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 15:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680217169;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=o6OjiitjPwr2q3+VgtTu4P0B7q8Y0XJ2G6/rSSRxlds=;
        b=iWl/ooRiCgE8BIIG4wHw80TW2kTzeZ9+WMEDXKLsFUC8uTyIYShhNnG0Aw5oDX/Q95re7S
        AuQZFEuFPQZoT5dwkX3J/ezWyGFekeUCZab//+9xu+82+G8OyT8b/x7fPsLdUyPcd7jPYi
        GX9i6Zv4dN6S34jXOFolt9HhoD2iudM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-673-jAmmWPJbPbOeDY8C1ztgsw-1; Thu, 30 Mar 2023 18:59:27 -0400
X-MC-Unique: jAmmWPJbPbOeDY8C1ztgsw-1
Received: by mail-wm1-f70.google.com with SMTP id d11-20020a05600c34cb00b003ee89ce8cc3so10150288wmq.7
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 15:59:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680217166;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o6OjiitjPwr2q3+VgtTu4P0B7q8Y0XJ2G6/rSSRxlds=;
        b=ukGsaoqaIZoMeKRo5u6h2FVbxjlD6IPR0hjtL6fwvkFc+GtZ1krA8LGLf2iVYP9txY
         hh/mdaDeyp5hgJzs55KlG+CzBPKgJRmH1w+941ckFZ+judwQHrd1kUD/gThSIXzhua4y
         6eo2wXqkuOuaRzY63yBAVnCdsJ7/OozmECoO4Zap5H5GiC/Uggaz7kCrAHJX3twsb4Dp
         +1VeH0YocyazUBBsWK/81w1OmnUxdmnj6z6Kw9zU4r0YdMKli2zxMesnydNkXyHbrcAe
         GJDqYdCkcEOP/ioeDnFRRQapd27i/6aqMM7BzXkeh02U1fZDNjGbDQQzBDT9jv7elw8f
         HJAQ==
X-Gm-Message-State: AAQBX9cqH+Dc2HKgb3d5UNPO0UulJKNPC9mhGuvMpaF1Y+EmTisyaSFp
        C9GwCLiUSmwL1mAk8dALVtOndR0qIpyf6P7a8Jb/wO4POa1ABoQoivyzGRRdE0mQvfJ1+kzp7+E
        r0pggxivrin1caUHU1BrXqQ==
X-Received: by 2002:a1c:7714:0:b0:3ee:1084:aa79 with SMTP id t20-20020a1c7714000000b003ee1084aa79mr4645670wmi.20.1680217166720;
        Thu, 30 Mar 2023 15:59:26 -0700 (PDT)
X-Google-Smtp-Source: AKy350Yecu73nIBzSwX6n9VC0rj75gvI4cfYDMCQVY5s6zogWVJi/S5ieqmyC8RCCI2B/05FAE9b9w==
X-Received: by 2002:a1c:7714:0:b0:3ee:1084:aa79 with SMTP id t20-20020a1c7714000000b003ee1084aa79mr4645652wmi.20.1680217166385;
        Thu, 30 Mar 2023 15:59:26 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id v13-20020a05600c444d00b003ee8ab8d6cfsm7846029wmn.21.2023.03.30.15.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 15:59:26 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Brian Norris <briannorris@chromium.org>
Cc:     linux-kernel@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Enric Balletbo i Serra <eballetbo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lin Huang <hl@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, zain wang <wzz@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove non-existing pwm-delay-us
 DT property
In-Reply-To: <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
References: <20230330220251.2388494-1-javierm@redhat.com>
 <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
Date:   Fri, 31 Mar 2023 00:59:24 +0200
Message-ID: <87355lg81f.fsf@minerva.mail-host-address-is-not-set>
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

Brian Norris <briannorris@chromium.org> writes:

Hello Brian,

> On Thu, Mar 30, 2023 at 3:03=E2=80=AFPM Javier Martinez Canillas
> <javierm@redhat.com> wrote:
>>
>> There is no neither a driver that parses this nor a DT binding schema th=
at

Ups, I noticed now that there's an unnecessary "no" and it should be instea=
d:

"There is neither a driver..."

>> documents it so let's remove it from the DTS files that make use of this.
>>
>> The properties that exist are post-pwm-on-delay-ms and pwm-off-delay-ms,
>> defined in the pwm-backlight DT binding. So probably what these DTS want
>> is something like following:
>>
>>         backlight: backlight {
>>                 compatible =3D "pwm-backlight";
>>                 enable-gpios =3D <&gpio4 21 GPIO_ACTIVE_HIGH>;
>>                 pinctrl-names =3D "default";
>>                 pinctrl-0 =3D <&bl_en>;
>>                 pwms =3D <&pwm1 0 1000000 0>;
>>                 post-pwm-on-delay-ms =3D <10>;
>>                 pwm-off-delay-ms =3D <10>;
>>         };
>>
>> But that should be follow-up change if that is the case. Because otherwi=
se
>> it would be change in behaviour, since currently pwm-delay-us is a no-op.
>>
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>
> pwm-delay-us seems to have been a downstream-only ("CHROMIUM", if
> you're familiar with ChromiumOS kernel parlance) change that seems
> like a combination of the two now-upstream properties you point at. I

Yes, that's what I found too. So it seems that this was an oversight when
the DTS for these Chromebooks were upstreamed.

> looked through the first use of pwm-delay-us on RK3399 Gru systems,
> and I can't find a spec reference that said it was needed; perhaps it
> was needless copy/paste imitation?
>
> So, simple deletion is probably fine:
>
> Reviewed-by: Brian Norris <briannorris@chromium.org>
>

Thanks for the confirmation and review!

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

