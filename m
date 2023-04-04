Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A740D6D5AB2
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 10:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233706AbjDDIZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 04:25:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234161AbjDDIYt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 04:24:49 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D1E010F9
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 01:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680596644;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eondYP41ZcdqHyBgCzp/QPl5U7NA+4YRH0vpX2vJSmw=;
        b=aMJiWkJ+uDN4uqL8QeRYIgq9SwwnMD0dLxZHXP9D1zggOuWTsb1f9jrOJpx4vqUYU7JYqD
        7Qpc//pF64h8+QNdQTq+Yv5tt3awmCgxiZLqGP7mT3+WAVD9WTW3wtzy7Qs+G2BI9ePJ7x
        +GBUcsdzaisLEwLHMOveW1jJWCiuUB4=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-609-KPmE2UgSMKSHDt2y_9RDzg-1; Tue, 04 Apr 2023 04:24:03 -0400
X-MC-Unique: KPmE2UgSMKSHDt2y_9RDzg-1
Received: by mail-wm1-f72.google.com with SMTP id o7-20020a05600c4fc700b003edf85f6bb1so17433525wmq.3
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 01:24:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596642;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eondYP41ZcdqHyBgCzp/QPl5U7NA+4YRH0vpX2vJSmw=;
        b=ZUKfds2FOplgpmsYU+7SAu2NHpEqseSx0lJ9nttBSRPA/uh+t0HdeFbIf7p8Orh5wY
         2lZkBExrd8iCtj3Z+EyawqhndDO8Y4CEbk0uXLiSsSXWq9oA59TdgUlMdonGXpAt+W0I
         OX7h7TrznSAdEBN8AhtiM92rqZVl5gqeIaivXSHeCN3hh6gCZWY9MAJez0hpq9orsbb2
         rHUs8wkmFIVK2mBMbl5CR3dUtTRevfWbCqTB8uZRHnTF2ONp+taTOCTXnWSAu0djGObW
         /XQrzjkP0bsdFYvad/HAUwFJ0rfem2fT6ZWudxkPxHOWf6NYHozme9VwjHxdB9YX7C7O
         zdmg==
X-Gm-Message-State: AAQBX9dWg8JAB339FBYsf16+aUP7l07vFz3Os1E7RrZnqcf7JNbUdnX3
        CPFSR1S8wJpc1ebUntqj40ZSbJ7rDY1jT8SduIimaVM2FnBfZUZS5XdTnpU3sxK2mpNpbyMvHeQ
        8ze6vIkbqigegA1zVaP16ag==
X-Received: by 2002:adf:dd91:0:b0:2ce:a8d6:7fc0 with SMTP id x17-20020adfdd91000000b002cea8d67fc0mr932728wrl.54.1680596642090;
        Tue, 04 Apr 2023 01:24:02 -0700 (PDT)
X-Google-Smtp-Source: AKy350YoPtRKLfybx/NG9s0tw4GfCQkv6MeuGZkQfNzEQNJjq+7mW5VyRM+BbQ98NkpmRNBnKgUKFQ==
X-Received: by 2002:adf:dd91:0:b0:2ce:a8d6:7fc0 with SMTP id x17-20020adfdd91000000b002cea8d67fc0mr932710wrl.54.1680596641791;
        Tue, 04 Apr 2023 01:24:01 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d63d1000000b002d1daafea30sm11682318wrw.34.2023.04.04.01.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:24:01 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Jarrah <kernel@undef.tools>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        linux-kernel@vger.kernel.org
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Caleb Connolly <kc@postmarketos.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
Date:   Tue, 04 Apr 2023 10:24:00 +0200
Message-ID: <87h6twdpi7.fsf@minerva.mail-host-address-is-not-set>
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

Jarrah <kernel@undef.tools> writes:

> Hi,
>
> On 4/4/23 17:51, Heiko St=C3=BCbner wrote:
>> The interesting question is always if this will break someone else's set=
up.
>> I've never really understood the strange setting of 1.5MBps, but on the
>> other hand it _is_ a reality on most boards.
>>
>> Personally I don't care that much either way, but would like a comment
>> from the other people working on that device - if possible.
>
>
> I don't have a strong opinion either way, but I would note that=20
> Tow-Boot[0] which later models of this device ship with uses 115200,=20
> meaning that this would put the device out of sync with the default=20
> u-boot implementation from the factory.
>

Probably we can't change then because it would break the setup of people
using Tow-Boot as a bootloader.

> At least for me it's been convenient to have both the PP and PPP use the=
=20
> same settings while debugging.
>

Agreed, all my other boards use 115200 as well, the only exceptions are
the Rockpro64 and PinePhone Pro for me.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

