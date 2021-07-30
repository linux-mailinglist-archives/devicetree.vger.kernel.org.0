Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16A763DBC37
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 17:25:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239746AbhG3PZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 11:25:09 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:35554
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239736AbhG3PZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Jul 2021 11:25:08 -0400
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 855C23F10A
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 15:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627658702;
        bh=x+6pX9ZPyUiM1Rt9roeiBBTX1oDHG2m/9+XL3uN84UM=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=D6JryoivxvbJZijNhsbU9QBiuFI7KQQ/VMLdi1YKtEnqwJoHhmGOKSOrszWcLLHfp
         bIQdmhJeH2N4LFBjwuVNYlCTfY8ZHb5MwHH3slOWqUSBBNfq7whDOPHxNRAWqLuOOF
         0iTGNI2kecRJ73W2iO/UgNttsK+6AfEfXoxLCYJGEmLvXZh3+sNgIo/Lid8rIKMnJO
         YeHqhv43wy0k+TiF8U8GVYxBYBJuHoE14Mo/TYtC25i+UNby1Vr2HfGhr6bEMzaEIg
         biFpnXldSI+pvpS2qFaMXyOT8cuEBAsPrZ7dnz6uuRrmrq2f1acV+jyxQl8xzFc+w6
         FzbHNwbqD6rwg==
Received: by mail-ej1-f69.google.com with SMTP id e8-20020a1709060808b02904f7606bd58fso3229178ejd.11
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 08:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x+6pX9ZPyUiM1Rt9roeiBBTX1oDHG2m/9+XL3uN84UM=;
        b=G2pXswGwqGWydbKdBYHWGZDWasemWeXWTAthJMu56x5A29dRDnockzM0OGLsLm+9+l
         BsCeMfIo01NrLNAK8K59OsUEzr4AgB1nUmJWlaUDX+k3dBd4CJeQto/3v0a7VFwEbusK
         U3I8jRMsSoAU666yGfN1HtUnWd9VvuKb9Ug1vYWpDIw2jaYS8eflCb1xOaeQ9i6bpF8o
         IJmiJDyM9VOP3PILpd5tKfVMu+ah3pYf5ymRn7A39LfuP+x0fTkVf4W8n7Su14sTQFN6
         /pzBbhLnLaBvl70jVshFDsAJTO9fPMPe2rEcTtj6D6Lw37V3/qBJrYIJ9KUfOyO30pQT
         rh+Q==
X-Gm-Message-State: AOAM531W0bGQIcfm10d4gnIkVzaFeC98MVF6xvSCm8pEoIJxUGOFzbD4
        QvBHtEbUWrJwfMxLJvoZ6lxJKo3OJ2Vrq5FLJwQaRxpAHUsQiIJxyAmJ3kOV+k+PFp2GqxZEXqm
        QOXCKoGksWiYBt7yW4Txgp2T5A6RwKyew5jgdjMQ=
X-Received: by 2002:a17:907:75cd:: with SMTP id jl13mr2947124ejc.327.1627658702304;
        Fri, 30 Jul 2021 08:25:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyqqUP+KIIGoq9q1WH1X67AGbVHunzdzYqA1b+ewcbCdTxqa8OY5fibzCtJefglr1Ece6TTig==
X-Received: by 2002:a17:907:75cd:: with SMTP id jl13mr2947093ejc.327.1627658702183;
        Fri, 30 Jul 2021 08:25:02 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id p3sm699984ejy.20.2021.07.30.08.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 08:25:01 -0700 (PDT)
Subject: Re: [PATCH 03/12] dt-bindings: pinctrl: samsung: Add Exynos850 doc
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-serial@vger.kernel.org
References: <20210730144922.29111-1-semen.protsenko@linaro.org>
 <20210730144922.29111-4-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <61a6c636-6f72-d086-79b8-e87dbab6b456@canonical.com>
Date:   Fri, 30 Jul 2021 17:24:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730144922.29111-4-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2021 16:49, Sam Protsenko wrote:
> Document compatible string for Exynos850 SoC. Nothing else is changed,
> as Exynos850 SoC uses already existing samsung pinctrl driver.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

The patch should be first in the series - dt-bindings go at beginning.
Although no need to resend just for this.
If the resend happens, the fix ("pinctrl: samsung: Fix pinctrl bank pin
count") should be sent separately (no mixing fixes and new features)
because they are independent and usually easier for review.


Best regards,
Krzysztof
