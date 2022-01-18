Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75AE5492D67
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348108AbiARSfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:35:13 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36562
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348098AbiARSe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:34:57 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 73BFE40515
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642530896;
        bh=el8J3PPct0S+ev5GdXyAPVCnFytQqf1PBg78OHl8Ffc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=qkJpGJOQE2H3w73Q3dtLSxheHguD158HyudbvZxNCGWqzsMX36jHPSiXcaSv8lDB9
         yBBr5cjAr2dW23+bFHnSuiRBtbkieeKhRyFL1Y2LuaVv0vukwIGDAtMyGxDre46GyI
         1w116ZAmPh994R/rbtHfeaxz5q1WtW0l8ztecM9LnDAmymh3mDaM9KtOLo/YArmWAa
         EH9DZqYcJ5NL54sdidySMNb3p2rancTtheu4N/DTmLscR3EMqd6CRjXNBNJyJ6wOJQ
         HqNZMbcQwiNsrSN9ItEEUhpnkK21+9YEodqolxcaR0vX0UkMlx0icBOSKoeW5S9Czy
         W9Fr5KdGS2GXA==
Received: by mail-ed1-f71.google.com with SMTP id i9-20020a05640242c900b003fe97faab62so17728450edc.9
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:34:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=el8J3PPct0S+ev5GdXyAPVCnFytQqf1PBg78OHl8Ffc=;
        b=P3kYVsDuG4WfKisDh5iMydAsUovlFKC1bWy2LZjUVYlMB20AT6SbJwm9xNXGzpexiS
         woMXvpR2XBLjX6ARob9GzMSeFQQKEWA9h/RreDNByAPMBzJu3keMxceOyPh4qRBtBvnb
         d9cU97tlVvZMQ9kwwkWsHEE3VZUCv3idm1XLw2BdTM7GM3ojMBUDilDTQLi3kRyeTFNZ
         h+ZnB6w2XcbKu2YexZltOHZKwpa16YbHOuw2xQkcJYUrKYczTAqMGjTaRGeNCqMbPF/j
         MA5qHrntvSYflTYib9P4+hrUAF4Q9+u0x7MP1mxZV1iFHp/dcIlq92D8trmE/xkgjjxE
         SkEw==
X-Gm-Message-State: AOAM5320rzuM0cquE6TCeqpmC+/Gkx+yFkluSdbLP6Yt47XVjntVMCiV
        OtL3InsuPZ39YqIYnoreWREvTpRC2DUiPnm3g86jXBGoLocAFiVB6R6nlg64w3rA/rpcO8IfC/S
        vNNm5vcmwvYjzeDweFZAxoPuKsWyQyhjovSKst38=
X-Received: by 2002:a17:906:26cb:: with SMTP id u11mr22377071ejc.630.1642530895900;
        Tue, 18 Jan 2022 10:34:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhvVGjHzZuQ09wopbadcVRPRuqKkPuSKlwacLl86koXiI0x4vNr1HBDnVEXOEfMu4WgODVng==
X-Received: by 2002:a17:906:26cb:: with SMTP id u11mr22377049ejc.630.1642530895742;
        Tue, 18 Jan 2022 10:34:55 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h11sm194326eja.119.2022.01.18.10.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:34:55 -0800 (PST)
Message-ID: <ea4d5b07-c14c-4558-9ddf-c55e9a6ff657@canonical.com>
Date:   Tue, 18 Jan 2022 19:34:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 07/16] clk: samsung: fsd: Add cmu_fsys1 clock
 information
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Ajay Kumar <ajaykumar.rs@samsung.com>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150041epcas5p2634381919d0e9f60867d6087162fa134@epcas5p2.samsung.com>
 <20220118144851.69537-8-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-8-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> Adds cmu_fsys1 block clock information which are needed
> for PCIe IPs in block FSYS1.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Ajay Kumar <ajaykumar.rs@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/clk/samsung/clk-fsd.c | 175 ++++++++++++++++++++++++++++++++++
>  1 file changed, 175 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
