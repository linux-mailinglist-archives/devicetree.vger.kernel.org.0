Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E9D96D5AFA
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 10:33:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjDDIdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 04:33:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233478AbjDDIdw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 04:33:52 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D454819B9
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 01:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680597181;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=DLHxW7OoQshnacuWjV5juyoD/NSSMgV+DMSPL4rEmJE=;
        b=QB7gQNmE/rSnmaHBOAF29sI959/Qmf4SqElcPfJWws4j/vTJhKBBfd4JeV3odBTf4oanT8
        yTNgJ4kaH+fJlK0Qei2bzgtrecv64+v6FSkC9WSWvi3+L5tP5A5oG01haQXzqBHgTz1nSD
        b3yUn2kjcmYZpfZnic75i4S+5P1/eAc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-62-H17Z9SNiP-a-2STWuXW-Lg-1; Tue, 04 Apr 2023 04:25:56 -0400
X-MC-Unique: H17Z9SNiP-a-2STWuXW-Lg-1
Received: by mail-wm1-f70.google.com with SMTP id j27-20020a05600c1c1b00b003edd2023418so17420706wms.4
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 01:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596755;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DLHxW7OoQshnacuWjV5juyoD/NSSMgV+DMSPL4rEmJE=;
        b=m8h2rEVXegfQRZKLkzKkoTn/HpBn8GWFGEtbPrdLaS+MJOOg7ODV7pmZCDDuhOTmFW
         60e/sxfKFVDfA2vj0ngRraY0VrDZLvPWXmV34nMQ8gQIrnaOzzh2CdUj0bLxKkK3IDDv
         yDAzxB+6acdbyX9baqlTTfvy5tcKbtt2VJErSP6HNaVxCND+LcQC+WYjFpf2JlXdMx9g
         foPuAmCIKErn7Sw7mFqDDRQiGSNkWMQPL2AkC0ds4S3A5XugWEWGyz5rfNQdfKS/bNr1
         iOS3yd9NPDEiwsp2Gex1gzhmp6FqkjTTfbn2L7qeLyX2b3X223nDhZSRrfoH9o0anoYD
         W3ug==
X-Gm-Message-State: AAQBX9fzI4xQrDEZQ4U2LjycMkO1qZpFRgrtMxM5DYg69hxMLnTITzHY
        TDffmlegA9aVGoodL4Wh7RdO2xCBnIgHKkwo0MDaVX2msyGICteFYy6BhJN+fEnMQrw3eOh1fsD
        k30Q4L6IHLV+bgX42tgZAsQ==
X-Received: by 2002:a05:600c:1d01:b0:3ee:93d2:c915 with SMTP id l1-20020a05600c1d0100b003ee93d2c915mr15093495wms.6.1680596755415;
        Tue, 04 Apr 2023 01:25:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350ba7DBVeDjGlRx+Sx2kJBGjDFAgosCIOA4m76so9y/3HTIEUU7Q81F0CA4kOqiE8YLARn5ztA==
X-Received: by 2002:a05:600c:1d01:b0:3ee:93d2:c915 with SMTP id l1-20020a05600c1d0100b003ee93d2c915mr15093483wms.6.1680596755128;
        Tue, 04 Apr 2023 01:25:55 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u21-20020a05600c00d500b003ee4e99a8f6sm14389362wmm.33.2023.04.04.01.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:54 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Peter Robinson <pbrobinson@gmail.com>, Jarrah <kernel@undef.tools>
Cc:     Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        linux-kernel@vger.kernel.org, Caleb Connolly <kc@postmarketos.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <CALeDE9OVq8ys9Ymx6Na+a0oK6R8CpfD=fbM6FTtWGnJQn_SR5Q@mail.gmail.com>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
 <CALeDE9OVq8ys9Ymx6Na+a0oK6R8CpfD=fbM6FTtWGnJQn_SR5Q@mail.gmail.com>
Date:   Tue, 04 Apr 2023 10:25:53 +0200
Message-ID: <87edp0dpf2.fsf@minerva.mail-host-address-is-not-set>
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

Peter Robinson <pbrobinson@gmail.com> writes:

> On Tue, Apr 4, 2023 at 9:13=E2=80=AFAM Jarrah <kernel@undef.tools> wrote:
>>
>> Hi,
>>
>> On 4/4/23 17:51, Heiko St=C3=BCbner wrote:
>> > The interesting question is always if this will break someone else's s=
etup.
>> > I've never really understood the strange setting of 1.5MBps, but on the
>> > other hand it _is_ a reality on most boards.
>> >
>> > Personally I don't care that much either way, but would like a comment
>> > from the other people working on that device - if possible.
>>
>>
>> I don't have a strong opinion either way, but I would note that
>> Tow-Boot[0] which later models of this device ship with uses 115200,
>> meaning that this would put the device out of sync with the default
>> u-boot implementation from the factory.
>
> Upstream U-Boot support uses the 1.5m that all the other rockchip devices=
 use.
>

That's true too. In fact, the Pinebook Pro also uses 1.5m so people using
Tow-Boot already will have a mismatch when using that device. The PPP is
the device that is not consistent with all the other rk3399 boards.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

