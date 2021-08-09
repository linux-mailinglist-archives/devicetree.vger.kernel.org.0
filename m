Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 293C73E4426
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 12:47:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234773AbhHIKr3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 06:47:29 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:40428
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234739AbhHIKq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 06:46:56 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id C66163F352
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 10:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628505994;
        bh=yt7czbeHRo3zFzMadQuUQl5b/q3O9yrC7ug3tMqy3VU=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=T2I//A3OdJNiwAnnwG3hT+O4mwcjbz0BPDHopOluAyWcBSK65/AosoSK8w8LyzkgL
         klGHexrmHTzmfKXVZVxbswWlzw49xZb5q8bu7PnhtASiE+U3bsmsnq9PInSVL4cPuo
         9Q380IOMtaGKrTZwESHjWcJ+rZYvhkTbQA+MOsyWmsLehJMEix1OyrtaLeQpZAD3Dz
         OPAEyUMDASq+A1KKSy6H+Dz2Mw2AsVf6gDbZCPXNpI3WxOnbfssBPo/pYOmWyDnq/T
         maBXZiLYunC3JSKwm91fFo9/BNpbsEA+5X66A9h0oNmBq1DVtcS9SRvph9cxWRYmY3
         P2Dffxlzr5E/Q==
Received: by mail-lf1-f72.google.com with SMTP id p3-20020a0565121383b0290384997a48fcso5985157lfa.21
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 03:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yt7czbeHRo3zFzMadQuUQl5b/q3O9yrC7ug3tMqy3VU=;
        b=RHhz7HTGVnv4jA5mfIVwZe6tW1p6UZ9StKClOtcp9OnuXDaAEF4ch0ZAWCdjybQ7y6
         ngYy8K2o9O3nJufy5W4Il6sy50RwpOZ7KeFm74si7iX4YF7NpL01xXt0MoU/2R99p8eA
         08staNvDDbX0y/sSq/k6LNYq0Cq0It6yy7uAJWnWRrTlrYFdqNG0OjYgmvxArdGlUP/b
         rbJpnAxePY1XMYVTRS9T/C031YzS6QSxokwo8yBVqqNGxzGPoEFlYcHIEhBNkAzrEWvm
         jHx8I3mtG/AL86MrOgUbYiQTxDxZll85JLbAUi0NqKtuwJHJy27iI+mpN+J6pSIjVQTU
         CWew==
X-Gm-Message-State: AOAM533IG/GDg2f/TRu6Gy82wHpZ52UaYV2XFWmZjFx2be1BKsjvxhDI
        aKOpTd4PU2SQbcnDqGOxmJQtXGzA8HOYu+0lMTcRGG8s3JUUArzfDa9l05IT3ocfcLNaKATxPnk
        lddPby9ofmudTdh7ttG+mqvCm0c7E42i48+cO5Lc=
X-Received: by 2002:a17:906:4346:: with SMTP id z6mr2946652ejm.403.1628505982425;
        Mon, 09 Aug 2021 03:46:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwilRElb69ECVZp5XBCmIh/rGOdeWiuwyHyABm9gfRG9GvWksDs334T+DetejTgQ1+PQ9rACw==
X-Received: by 2002:a17:906:4346:: with SMTP id z6mr2946634ejm.403.1628505982295;
        Mon, 09 Aug 2021 03:46:22 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id f5sm5733019ejj.45.2021.08.09.03.46.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 03:46:21 -0700 (PDT)
Subject: Re: [PATCH v2 6/8] tty: serial: samsung: Add Exynos850 SoC data
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Cc:     Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
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
References: <20210806152146.16107-1-semen.protsenko@linaro.org>
 <20210806152146.16107-7-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <6169e25b-2829-628a-f910-348ddd4b3030@canonical.com>
Date:   Mon, 9 Aug 2021 12:46:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210806152146.16107-7-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/08/2021 17:21, Sam Protsenko wrote:
> Add serial driver data for Exynos850 SoC. This driver data is basically
> reusing EXYNOS_COMMON_SERIAL_DRV_DATA, which is common for all Exynos
> chips, but also enables USI init, which was added in previous commit:
> "tty: serial: samsung: Init USI to keep clocks running".
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
> Changes in v2:
>   - Fixed default fifo sizes
> 
>  drivers/tty/serial/samsung_tty.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
