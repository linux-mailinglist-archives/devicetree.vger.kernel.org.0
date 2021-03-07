Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F41CF330061
	for <lists+devicetree@lfdr.de>; Sun,  7 Mar 2021 12:36:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230083AbhCGLf3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 06:35:29 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:49491 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbhCGLe7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Mar 2021 06:34:59 -0500
Received: from mail-ed1-f69.google.com ([209.85.208.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lIrgX-0001p6-2L
        for devicetree@vger.kernel.org; Sun, 07 Mar 2021 11:34:57 +0000
Received: by mail-ed1-f69.google.com with SMTP id v27so3582552edx.1
        for <devicetree@vger.kernel.org>; Sun, 07 Mar 2021 03:34:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Op5mu56rLKVeXZ5BYHLLFs3XBf2gdeKehd8++u/6LDA=;
        b=QTSh+akIyHfqx4Sv7r7a+tr3y7/QDc1+aamghayNLr0Bb5pGMokzgvnywnQ5FQDhZw
         wEhArV+5oltzVnhTFsQ7sCpZrlv8WB/LAJNpwfM7Z2rqNbQnSCOrxoVrka8ENA3IMZia
         az0e6KZxpubRw/hSFzKQFcaTquohI4Vtg+CnYqLOrfNEeM65B6RifaLaXLcFJhtKmYDs
         qCUNX2k6PVHW/VC/rwAkBb3y5nowBmiixVFZxgmnrxI1Ztgnk3upnU1FdxgURYMw6d/0
         mdcFwEC0odBABtu8sn0tRDsMRqGB6Mw88O0Qib/pAWGrsM1+h2ARZoDl6nn35+sInNM8
         eNiQ==
X-Gm-Message-State: AOAM531HrLrW0BohYtHOj84ofFGqYy51ePH162WtY4kQWHblyKf6EhC8
        ift/sz4CPE2pYjpiuw7EbTQH+HK/Am1MHZ15o5mOTL/SstKp8Or7djylj5LYAqn5nFZJfd3Z81f
        U9/8DJH3YopOodJzutaYdEo+vi+hFY2meFDHNBzg=
X-Received: by 2002:a50:fa04:: with SMTP id b4mr17812444edq.293.1615116896806;
        Sun, 07 Mar 2021 03:34:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwN50SNAvRJvyv1TTGSoHps9ZM3d2RwZosjPBjKJrezHq2PpQu4f0MDG5tTUROmsW8Jne4o4A==
X-Received: by 2002:a50:fa04:: with SMTP id b4mr17812435edq.293.1615116896694;
        Sun, 07 Mar 2021 03:34:56 -0800 (PST)
Received: from [192.168.1.116] (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id g25sm5016167edp.95.2021.03.07.03.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Mar 2021 03:34:56 -0800 (PST)
Subject: Re: [RFT PATCH v3 21/27] tty: serial: samsung_tty: IRQ rework
To:     Hector Martin <marcan@marcan.st>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Marc Zyngier <maz@kernel.org>, Rob Herring <robh@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Tony Lindgren <tony@atomide.com>,
        Mohamed Mediouni <mohamed.mediouni@caramail.com>,
        Stan Skowronek <stan@corellium.com>,
        Alexander Graf <graf@amazon.com>,
        Will Deacon <will@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Christoph Hellwig <hch@infradead.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Linux Documentation List <linux-doc@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Linux-Arch <linux-arch@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20210304213902.83903-1-marcan@marcan.st>
 <20210304213902.83903-22-marcan@marcan.st>
 <CAHp75Vc+t9_FNHZ0xYNaJ1+Ny+FFeZKA79abxV2NAsZvpBh3Bg@mail.gmail.com>
 <535ff48e-160e-4ba4-23ac-54e478a2f3ee@marcan.st>
 <CAHp75Vd_kwdjbus3iq_39+p_xRk3rum2ek3nLLFbBDzMwggnKA@mail.gmail.com>
 <05ccc09f-ffea-71cd-4288-beed3020bd45@marcan.st>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <d33fffec-28bd-99b2-a8b1-cc83b628e4b3@canonical.com>
Date:   Sun, 7 Mar 2021 12:34:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <05ccc09f-ffea-71cd-4288-beed3020bd45@marcan.st>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/03/2021 17:29, Hector Martin wrote:
> On 06/03/2021 01.20, Andy Shevchenko wrote:
>>> I am just splitting an
>>> existing function into two, where one takes the lock and the other does
>>> the work. Do you mean using a different locking function? I'm not
>>> entirely sure what you're suggesting.
>>
>> Yes, as a prerequisite
>>
>> spin_lock_irqsave -> spin_lock().
> 
> Krzysztof, is this something you want in this series? I was trying to 
> avoid logic changes to the non-Apple paths.

I don't quite get the need for such change (the code will be still
called in interrupt handler, right?), but assuming the "why?" is
properly documented, it can be a separate patch here.

Best regards,
Krzysztof
