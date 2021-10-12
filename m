Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 058ED429E9D
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 09:27:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233890AbhJLH3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 03:29:02 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:36974
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233860AbhJLH3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 03:29:02 -0400
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6C5623FFFE
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 07:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634023618;
        bh=k2NEwJTMkdNZ/mQBT62GUXF45y2w4za6ULFuaRm133M=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=hsSCYjtcroyuxwL45MBHQ8y2l8rmaE3oNDx9hQuhmxxzodwUd2XlbApModygJLtcz
         qTc3wwEGdpCOKIYEUwcKcEvWERH8Q6Jvjk8whx3khfjkt6vwyTrd+eXbz9pyNg+pWW
         tEFoMqdzs3lfzU2+0wZMV8gipxqKj9nvNpyYVs1SuV4IV5NB52SW1IG+HEAi5e1vhh
         zBUk6kiX0DK8PrIYLXjwW701qZyXB0tyVDMZzXPIcY1AqAfSdl1OyTPbk3U4JmB8Zz
         aFIOzvRvc56dSPkDMXPuIr9sxGnuLxx+7AbYZaxfMAsBAhn6Pl6CW1eTnPjcIT7DSW
         S1fuHK8eSOrHw==
Received: by mail-lf1-f70.google.com with SMTP id o5-20020ac24c45000000b003fd932e4642so3305688lfk.14
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 00:26:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k2NEwJTMkdNZ/mQBT62GUXF45y2w4za6ULFuaRm133M=;
        b=yBEfUP1p8zR3VGS++nDqdw7khwu5gIAOrOyo383lAA8jEIIzrURhuw1+2v9yBEeV1r
         BQm6Oh5fanOlKKdD89EpEOpYe/ybTsT+GhXudZCjNGkUAnvZQcXzvIW/vCsoshVlqdhw
         2sWfMy6wGSWO6RyC2ouRnsxRCRvrQ9t/xNBsLBz51xU8CMgGWyIm3gQK4H1eiIQq7LYK
         zhC0dt/0jpAewEa7WCZJ0XOXVrtaNZXUmki1BFjWMsLgZdNCB1sCWxjT7VK95ojq9uqO
         D14SuHqgDpcQBXpFZDvyfVy11OfHG4GOpek4JDXNPl4r/Ceq4Y79p8ORO6b1n1WHi6HN
         5ecw==
X-Gm-Message-State: AOAM532xNZR+QxAzKYWLcds1eXaVRIOJWMkMRrMdrN0mc72T+aq76chL
        QoAzGyfSB/NBGVHtFIBv2qEJuAfnspme9Cp3waschdNl/FkspgacwzkjEWoDmBsqXmM6X7BjBZx
        rpSMH7GG79kL2azOBfYHil0Vowan27dImgzqA01k=
X-Received: by 2002:a05:6512:1196:: with SMTP id g22mr8857300lfr.661.1634023617833;
        Tue, 12 Oct 2021 00:26:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4GFs4SsQ3dTIrIIjTkzK2fCPWl1cJOA8SGQyTyUrED6DMlpgotr7qOq4gqkacaBZsg7BKGw==
X-Received: by 2002:a05:6512:1196:: with SMTP id g22mr8857282lfr.661.1634023617586;
        Tue, 12 Oct 2021 00:26:57 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d26sm1185415ljj.45.2021.10.12.00.26.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 00:26:56 -0700 (PDT)
Subject: Re: [RESEND PATCH v2 1/5] riscv: dts: sifive: use only generic JEDEC
 SPI NOR flash compatible
To:     Alexandre Ghiti <alexandre.ghiti@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
 <CA+zEjCtTbJnvmrM1g-CR8ZUtT375Wd-4dt0YR1zLG5nOvtDyGg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <9a2a01af-3e34-b454-3ec5-930eba8b435e@canonical.com>
Date:   Tue, 12 Oct 2021 09:26:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CA+zEjCtTbJnvmrM1g-CR8ZUtT375Wd-4dt0YR1zLG5nOvtDyGg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2021 06:29, Alexandre Ghiti wrote:
> hi Krzysztof,
> 
> On Mon, Sep 20, 2021 at 3:05 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> The compatible "issi,is25wp256" is undocumented and instead only a
>> generic jedec,spi-nor should be used (if appropriate).
> 
> Why not do it the other way around? I mean adding this compatible to
> the expected list: don't we lose information using the generic
> compatible?
> 
> Thanks,
> 

We discussed it:
https://lore.kernel.org/lkml/ae4c58fe-0af5-3f1d-cc16-27b78772cbb5@microchip.com/


Best regards,
Krzysztof
