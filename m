Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45D516D5B2F
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 10:47:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234097AbjDDIrt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 04:47:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233594AbjDDIrs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 04:47:48 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACDD810DD
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 01:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680598017;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=G99E3diY62ZpH4JZ1b4pZ2Ts787AInV4dhcYUQ8Vmz8=;
        b=AJb6H1Y63PWX5b4IVqjFG07GIH83/swVhQjLknWUuiCSKvkvikIqzBX0i0lseRgNBBf/sK
        DZtgdePYj9xTOSfWVj6Ubybz842gmdMM4by9Cguq6iXl0UOVPcHXrDUdPnO6jKk9q5Unwv
        5rSLm//X2vl3Gt5R1pxfcWWal6Mm788=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-147-FCs-z28rNGGBPKKNXC-VbA-1; Tue, 04 Apr 2023 04:46:56 -0400
X-MC-Unique: FCs-z28rNGGBPKKNXC-VbA-1
Received: by mail-wr1-f72.google.com with SMTP id k16-20020adfd230000000b002cfe7555486so3556157wrh.13
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 01:46:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680598015;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G99E3diY62ZpH4JZ1b4pZ2Ts787AInV4dhcYUQ8Vmz8=;
        b=0Rsm0McShnhTLWA4nSKZa2w/Q/FBeN2sa/VberUBOWC44PpP56MHKiQfoSdfcLJ0WK
         qXgzgas93xNn5OMGkJfBRa+EF7uCTxT9+EVDXgFE9KiMhGg8gYgcIy+5bcR+KdJIvvWR
         kUIm+XCEqlgrEED/2F8/kza5yLMIgNQ2xCHZJU9C4i3dkgnyhfW4zJZjLzfZ777URqd8
         O3o5yRq9qKm2QJ4Sr6Rb5DxcpPh6g6MKudnCCzEkzuoOI9rCXc/xF+5pAhdgVBiRrfoK
         0SUdMRA4kN+CZyPHcvTcLdQb5+BVp4YsA0vz/1GYqHdROT+fEeq2PWtj9LMAhpYfs6Xv
         FjmQ==
X-Gm-Message-State: AAQBX9e9UL6wztgu0kjK/XwAJCC7EwoWV85K7VoFQml8LohbCt0UVZzO
        7w04W99sXUUAS1jE+vyMnVyZq2DVZJCKMHnst6pLP9e0F3hVzlby4wFcVllF1YQebtOyrezDE4j
        1Cf3C+nqtEmBiA2FTwcqUmg==
X-Received: by 2002:adf:f005:0:b0:2d6:cc82:3c49 with SMTP id j5-20020adff005000000b002d6cc823c49mr931473wro.13.1680598015276;
        Tue, 04 Apr 2023 01:46:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350Z8i51Ygry+zzbcD2bOKjp+1nQQ1biyfzppPWMmvxDvdWIJCYlOOMGrJyFI4cevmr2NBMZoWw==
X-Received: by 2002:adf:f005:0:b0:2d6:cc82:3c49 with SMTP id j5-20020adff005000000b002d6cc823c49mr931458wro.13.1680598014942;
        Tue, 04 Apr 2023 01:46:54 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g6-20020adfe406000000b002d743eeab39sm11753376wrm.58.2023.04.04.01.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:46:54 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Jarrah <kernel@undef.tools>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        linux-kernel@vger.kernel.org, Caleb Connolly <kc@postmarketos.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <CALeDE9M4eNq1sfQ-UcNZr8naYThmLFxDpt=zj8WkCSzHPUY8ug@mail.gmail.com>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
 <87h6twdpi7.fsf@minerva.mail-host-address-is-not-set>
 <CALeDE9M4eNq1sfQ-UcNZr8naYThmLFxDpt=zj8WkCSzHPUY8ug@mail.gmail.com>
Date:   Tue, 04 Apr 2023 10:46:53 +0200
Message-ID: <87bkk4dog2.fsf@minerva.mail-host-address-is-not-set>
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

> On Tue, Apr 4, 2023 at 9:24=E2=80=AFAM Javier Martinez Canillas
> <javierm@redhat.com> wrote:

[...]

>> > At least for me it's been convenient to have both the PP and PPP use t=
he
>> > same settings while debugging.
>> >
>>
>> Agreed, all my other boards use 115200 as well, the only exceptions are
>> the Rockpro64 and PinePhone Pro for me.
>
> All Rockchips devices use 1.5m except a chromebook and the Puma, and
> this device.
>

Yes, I meant all the other non-rockchip boards I have. So I understood the
appeal of what Jarrah mentioned about using 115200 for everything.

Having said that, my vote would be to change the PinePhone Pro to 1.5 MB
given that it is what all the rockchip (but two) boards use in mainline.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

