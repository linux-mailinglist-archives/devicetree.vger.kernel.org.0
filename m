Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38C0040C043
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 09:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236469AbhIOHNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 03:13:50 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:43720
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231301AbhIOHNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 03:13:50 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2C09040260
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 07:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631689951;
        bh=191SUmgkCeF6ZQfCKm5T3c+lIG15mkBcbqwnFyOCstI=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=KkDhMzcW8X8369iUkGo5nfyP5Tn/MGOOdkiPhJZ/k9+t+9rJZKuM9a+8QdP2Yj3Cn
         qJjEuHMNsnbrQ/BqIrpAmiNNmcfesF0pC3IsK+7MZxC6w8weRuYGmYqEUUUwmW7hsS
         SsodyRCz0rMeLxJOguGQroS/nCd4oX6do/gMZzZRffQ1FJKgXdtCfBOVvu8thiemlH
         e+qky4n+rapJ4iRgk7UUKyBX1KwWkJrnBslYlX3DCA9EyLer2sjzIUW0k5qb7iG3Mt
         UnGkOqCEVdYPeIrwMorEz8YRl8UmEE6K8N3TLhkfyOOww+CGmfIFTj7TOXnOW79BN3
         b/iEpnda+7Maw==
Received: by mail-ed1-f71.google.com with SMTP id s12-20020a05640217cc00b003cde58450f1so1055109edy.9
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 00:12:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=191SUmgkCeF6ZQfCKm5T3c+lIG15mkBcbqwnFyOCstI=;
        b=SaIFVTE8OTc8eNRoDZAVcih9LbFzcTt3wERDyNpNKl0fxpEq18s4iNwQxab7jQ8pii
         ipJ/fO79h/fEJxx047SscFXfSO0VpAOmpY0pMt75CQM+0EqhI39+m11mfK3O+cWEpTuD
         nWNFy6hermORS7C9f1ZPmjUGYlRhuUlSx4VZ/vzxL7pfTWBZru22XC6Ch28C0ith4i6j
         BcCsrLNekCyKRhcRd0Zyl09bxqjepY341isutdi/EWrb3tExNaCKF4ltjdY2LSoOh8ks
         dWHf/IYNRBij5MGqDndHuBu4gdEI+rQBAC49Kh5M9Z6oT2QI5E7zz1avxYGSmlq5Aizs
         s2UA==
X-Gm-Message-State: AOAM531DWOO7yyeukWq5hC6twaXqKtELmgJErb/MMx5RDge+fq8hzjD4
        oryGqZDAlCKa8+yPhbNTg1ByQuHzAwAK+baIne532a2ndfUL2jyKmGW7b9upA4IsPeN9AHenC2O
        Hbp9YgXLEXXPRGNBwIZ4Nm1g+D6UGWtWq06fW+sM=
X-Received: by 2002:a17:907:1df1:: with SMTP id og49mr23623905ejc.35.1631689950797;
        Wed, 15 Sep 2021 00:12:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5UTlhBkXQsaIUzYd+PTbm7+gO6+qavmcR/SDNB3M32OjLvLJ+G9bwfmFaihvVDi3NUULxjA==
X-Received: by 2002:a17:907:1df1:: with SMTP id og49mr23623889ejc.35.1631689950598;
        Wed, 15 Sep 2021 00:12:30 -0700 (PDT)
Received: from [192.168.3.211] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id p23sm6916478edw.94.2021.09.15.00.12.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 00:12:29 -0700 (PDT)
Subject: Re: [PATCH v4 8/8] memory: gpmc-omap: "gpmc,device-width" DT property
 is optional
To:     Roger Quadros <rogerq@kernel.org>, tony@atomide.com
Cc:     robh+dt@kernel.org, grygorii.strashko@ti.com, nm@ti.com,
        lokeshvutla@ti.com, nsekhar@ti.com, miquel.raynal@bootlin.com,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210914122705.15421-1-rogerq@kernel.org>
 <20210914122705.15421-9-rogerq@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <e0c4759b-7c2d-e32c-f912-8409c1f65b49@canonical.com>
Date:   Wed, 15 Sep 2021 09:12:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210914122705.15421-9-rogerq@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/09/2021 14:27, Roger Quadros wrote:
> Check for valid gpmc,device-width, nand-bus-width and bank-width
> at one place. Default to 8-bit width if none present.
> 
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  drivers/memory/omap-gpmc.c | 41 ++++++++++++++++++++++++--------------
>  1 file changed, 26 insertions(+), 15 deletions(-)
> 

All the comments from v3 are still applicable because it seems you
ignored them. Please respond to them.

It's the second patch where the reviewer's comments got lost, so it
creates rather poor impression.


Best regards,
Krzysztof
