Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 376B4654D97
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 09:39:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235895AbiLWIj3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 03:39:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235633AbiLWIj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 03:39:28 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8180A357B2
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671784718;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=cZaM5RaawEocKEQbKOSqiq42IHOql7KbQpJo4YjSpeA=;
        b=eZLEGSh26G/XMRjRdB5QrfbcpUNDwxnyOLAYnrNxvOz2UZtjGBqR9n/XN4elwPam6fnrOf
        HHzOacpGUX6FfO6xQX/o5a12bytkfTBW/vsqvXQjL0AilnI147TF3E1aOHLxsc/3PYzIZh
        ngkWr/KUKLvW5MfGHStkJOyDeloVkKc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-215-VEeCrwkDNnm10qE5Vc1Pyw-1; Fri, 23 Dec 2022 03:38:36 -0500
X-MC-Unique: VEeCrwkDNnm10qE5Vc1Pyw-1
Received: by mail-wm1-f70.google.com with SMTP id 21-20020a05600c021500b003d227b209e1so958959wmi.1
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:38:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cZaM5RaawEocKEQbKOSqiq42IHOql7KbQpJo4YjSpeA=;
        b=URxUceiE1wkGf5nFsQkVB1GSLesNosuz/s1QvCBrz9eOgicLXk0Ehee8UisHoMIosu
         c5BBag2D2olBuktKW6pZiOxyPKdastzGaIAy73/Gjw4JDJA71+e5jmsl+/ODedYhDzFI
         bsR/9yELqEdbHiqlpFLrod3QVokE5n9dSdV+3atji7hxDj+Io0BcJzT+oHGTr9e+VQeS
         hViL1VE30vVOcYYOXTCBc31yU72WOPXXyfAMXYqSjrrSTbM7XQwXNqwHqSpAF8G8qF2d
         4+bZXXfOwK7JWR6yowmeQEm6jFj1fQZ2ecAf+iwtkC3nW+JolJJW9TNnYpwrrNJFYIsi
         HfBQ==
X-Gm-Message-State: AFqh2kpiqBcwOFkkK2yeatfydwzGTZuSkiBB1sWh5GJ5lXJDLm29cJ3N
        3dwV+1s+/RssUYvqvpIWCKeKWZOiqAbCF+cLPVv3KmBPbda86sLd7mav6xrOLg71bjG0JChG08v
        S+nmv2GdQ8mox4amQLpGCSw==
X-Received: by 2002:a05:600c:22c4:b0:3cf:8ed7:712d with SMTP id 4-20020a05600c22c400b003cf8ed7712dmr9226050wmg.14.1671784715688;
        Fri, 23 Dec 2022 00:38:35 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuHR0lUeavKdI1qt8CqUCBjmUtjFYm6N205U+J8Kt1KyzbAi6jBgUST6zdEQwLA+dJN6GrcCQ==
X-Received: by 2002:a05:600c:22c4:b0:3cf:8ed7:712d with SMTP id 4-20020a05600c22c400b003cf8ed7712dmr9226037wmg.14.1671784715464;
        Fri, 23 Dec 2022 00:38:35 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m22-20020a05600c161600b003cfa622a18asm8000118wmn.3.2022.12.23.00.38.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:38:35 -0800 (PST)
Message-ID: <ad8acc7d-7f23-2ab3-bd1d-445d6e5f74fb@redhat.com>
Date:   Fri, 23 Dec 2022 09:38:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Content-Language: en-US
To:     Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
        Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
 <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Maya,

On 12/22/22 23:57, Maya Matuszczyk wrote:
> Nice to see Pinephone Pro getting worked on.
>

Appreciate your feedback.

I agree with all your comments. Was too focused on the panel driver and didn't
pay that much attention to the DTS snippets. I'll clean these up on v2. Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

