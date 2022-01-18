Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3A83492D61
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:35:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244240AbiARSep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:34:45 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:43460
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1347865AbiARSed (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:34:33 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 75E1B4000F
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642530872;
        bh=2sNtXURDOFY5YeHmaa+6rq6KkuL9DgoBnkrsKI2ksQ0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=d9fYef2tNB6ehF92zvFjV3K2EE6XGUodRdbxbluAW0k0uyMJedXwD5dY1DfzAO9kE
         549do6eSe9xguqLlp3kOA/sqc/0v2ikRYUlN8OZiJ9dctEYqtTTh9qSNDjmJtScalD
         NaqzaY6C2lqXdRciSKSNVT92/n7s7P8nlfa76MSjtdr66/GMyqJaMtIEv4ysSvNFYQ
         S5oqpLiGOwwvb/ujUY+boGe+QXCzeXxUqegcXSj/+6a3saOJv88iXGnQlnT+LaoNl9
         BrF9f//q3TDJJRocp8WCjNZE/Qr5cNfAjUDDykZbKJ5hVEK99KJiTHWdlxInTP44/G
         pXwoQ2b/3NprA==
Received: by mail-ed1-f69.google.com with SMTP id bm21-20020a0564020b1500b00402c34373f9so5673554edb.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:34:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2sNtXURDOFY5YeHmaa+6rq6KkuL9DgoBnkrsKI2ksQ0=;
        b=RZ9VTZgSz1qZ+264Yy8l6+zAyztv2tMCaHGn224uQlrCaXRjR7Xcryq1T+Kmwni3Dn
         GdhH4p6QG4XtDIBHMkO5P8c3ZIMNeGV9GclS+HarDPQyhZ4l9mKb+UlSPJ51LW3EGwzz
         GO05s725FfB3wNQPbtEegPbkfBSmzz7bmmtm5pFDEE6NhGEgQzgO6b3idsnI3+D+gYo8
         hQRUXs+HYE1tl+rwNZOYevxaV12oFQXMnbdAVIeu+QREXPxLg/bDJ2o2tAGZwDhVoWXx
         VcWd3gdwcKPWiLsQJEifEN6ZGfdhlwWVVYBSx+wfjNllbC6hd7wwLPhvBeDF/ntTCp5d
         ozQA==
X-Gm-Message-State: AOAM532DByI5MVuaGYxqjfF+dwvP8HfOTkQ463AxYLGk/uoo/NS91qt8
        OzblbWvTyi6GndnqttKndWHFV7mC8IHDbnIvW0WqEqWbcYZU2MKJqXifA3He1dwKIss45BjjdT1
        YCz5Ia4f1OePav13S+ZIFOlOKEu35zjc6Pvkb/Ew=
X-Received: by 2002:a50:d69e:: with SMTP id r30mr1416865edi.284.1642530872195;
        Tue, 18 Jan 2022 10:34:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzFfk4qysqwQQ+JBGYnqeMFUI+XaHpezXkBv6eaAh0acQ0crMg2NxWfal3ZD4TuQozsNPJjAA==
X-Received: by 2002:a50:d69e:: with SMTP id r30mr1416854edi.284.1642530872062;
        Tue, 18 Jan 2022 10:34:32 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l10sm5590235ejh.102.2022.01.18.10.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:34:31 -0800 (PST)
Message-ID: <3c400f9f-9d02-050e-cf21-c3376bf15127@canonical.com>
Date:   Tue, 18 Jan 2022 19:34:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 06/16] clk: samsung: fsd: Add cmu_fsys0 clock
 information
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Shradha Todi <shradha.t@samsung.com>,
        Jayati Sahu <jayati.sahu@samsung.com>,
        Ajay Kumar <ajaykumar.rs@samsung.com>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150037epcas5p1624361eb48fa14cdf9ed88de6f890db4@epcas5p1.samsung.com>
 <20220118144851.69537-7-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-7-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> CMU_FSYS0 block has IPs like UFS, EQOS, PCIe etc, lets add
> the related clock information for the same.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> Signed-off-by: Jayati Sahu <jayati.sahu@samsung.com>
> Signed-off-by: Ajay Kumar <ajaykumar.rs@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/clk/samsung/clk-fsd.c | 302 ++++++++++++++++++++++++++++++++++
>  1 file changed, 302 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
