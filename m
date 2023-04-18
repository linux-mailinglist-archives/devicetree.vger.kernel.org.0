Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6E26E60E5
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 14:12:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230231AbjDRMMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 08:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231546AbjDRMMn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 08:12:43 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F1C012C
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 05:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681819917;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=JkJh/B/i3KU/KW7H270nTjye9dmLNKxDnAlmOJnN0vY=;
        b=RUYQr6ua3oW39esn3cCMiA4eprZM+fHfe6V9CoM17v3Ea/VwWqo++wEmdeynNI6wtxt+Cq
        IsR1s9m8EZ4LR/k1y75+JWVj0EZeKbIrhGjIdw9oNx25puiLbk0WyrwLfPhNlVVQ9042Iz
        FEEF+zU9y616bi4Er3B1aH0kBooMzgU=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-25-OE4-Wi7aPRC8mOo7Wx1Z8Q-1; Tue, 18 Apr 2023 08:11:55 -0400
X-MC-Unique: OE4-Wi7aPRC8mOo7Wx1Z8Q-1
Received: by mail-wr1-f72.google.com with SMTP id s18-20020adfa292000000b002f562b8b12bso2527241wra.0
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 05:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681819914; x=1684411914;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JkJh/B/i3KU/KW7H270nTjye9dmLNKxDnAlmOJnN0vY=;
        b=PnrjNkZKTGCa9sYkFUBnOqiXdb96EM2+wW5+eHdd72Kb57svs50oYrmNexziA5EYUt
         K/+px2hyFPIpwzqCAerUbmiE3lkxMW5qC3p/u254UEFUbr/vNNSnV+MDJHlgOx+4G6ne
         ndY9zM61wfXKIiei8aYVi0h2J0sh+GyeVYNg0VYNi1WRKvBTUkmWfTewEKAinO8o8j/i
         h/F1e6ww63csMKMVYoinM/faCgPhRzd+StFH+Fj2cPDH+DKidENGrJ9paFuY/POMrZiE
         nyahdiwgep2hDyzY83pWeH4vX2llCbZBZaGPXtz4XiwQjnrscfXtn7OWbm9dF3W3Xnsp
         Uh8g==
X-Gm-Message-State: AAQBX9chhsU3+XlU8zlKLMXRTgdn7MM4JEN71ec795e/j7Dt//TFWZx+
        8el0Eu3nOD+HiIZxqBAzCvVMNSAlABby8ngmcKuPUepWrtU2PPIAcd+ywaGJ6JOJ1cLT1dToGpJ
        o5+CyEFx+4UkuKciVBRGnpQ==
X-Received: by 2002:a05:600c:2212:b0:3ed:711c:e8fe with SMTP id z18-20020a05600c221200b003ed711ce8femr14686236wml.2.1681819914709;
        Tue, 18 Apr 2023 05:11:54 -0700 (PDT)
X-Google-Smtp-Source: AKy350b65iCGtMf2oVoLYMy41tFWkUlUkLBuyvo6vU/7asGqIjHXB/GjSqEJ1yCvOz3n6/Bz0bD6nQ==
X-Received: by 2002:a05:600c:2212:b0:3ed:711c:e8fe with SMTP id z18-20020a05600c221200b003ed711ce8femr14686210wml.2.1681819914409;
        Tue, 18 Apr 2023 05:11:54 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c19cf00b003ede3f5c81fsm18542538wmq.41.2023.04.18.05.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 05:11:54 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Cc:     linux-kernel@vger.kernel.org,
        Peter Robinson <pbrobinson@gmail.com>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <3999080.iIbC2pHGDl@diego>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <CAMdYzYqT=vVZxFK=P6xYDAht_KWk3CTsTtruPAbGqx1K9EcJsQ@mail.gmail.com>
 <3999080.iIbC2pHGDl@diego>
Date:   Tue, 18 Apr 2023 14:11:53 +0200
Message-ID: <87h6tdie46.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Heiko St=C3=BCbner <heiko@sntech.de> writes:

Hello Heiko,

> Hi Peter,
>
> Am Dienstag, 4. April 2023, 14:52:02 CEST schrieb Peter Geis:
>> On Tue, Apr 4, 2023 at 3:55=E2=80=AFAM Heiko St=C3=BCbner <heiko@sntech.=
de> wrote:
>> >
>> > Hi,
>> >
>> > Am Montag, 3. April 2023, 19:59:37 CEST schrieb Javier Martinez Canill=
as:
>> > > This baud rate is set for the device by mainline u-boot and is also =
what
>> > > is set in the Pinebook Pro Device Tree, which is a device similar to=
 the
>> > > PinePhone Pro but with a different form factor.
>> > >
>> > > Otherwise, the baud rate of the firmware and Linux don't match by de=
fault
>> > > and a 'console=3DttyS2,1500000n8' kernel command line parameter is r=
equired
>> > > to have proper output for both.
>> >
>> > The interesting question is always if this will break someone else's s=
etup.
>> > I've never really understood the strange setting of 1.5MBps, but on the
>> > other hand it _is_ a reality on most boards.
>
>> The 1.5M baud is default because the clock structure on rockchip
>> devices does not allow a clean 115200 baud. By attempting to force
>> 115200, it will always be slightly off (either low or high depending
>> on how the driver decided to round). If this actually causes any
>> problems is the subject of much debate.
>
> thanks so much for this piece of clock-detail. As I wrote, I never really
> understood the why _before_ but also never cared that much to dive
> into it and find out.
>
> So your explanation closes one knowledge gap in my head.
>
> Thanks a lot :-)

Did you make a decision about this? I guess the clock explanation is yet
another argument in favour of switching the PPP to a 1.5 Mbps baud rate ?

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

