Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC161431EB0
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 16:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233883AbhJROFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 10:05:07 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34692
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232761AbhJRODB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Oct 2021 10:03:01 -0400
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 24BFC3FFF9
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 14:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634565646;
        bh=hOmDJ63rwjyLjUsGk3cIxatC7VRnjyU/42JZ0Lta5uc=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=HbO9LcBJTuNwrv8yrh7idxR1sNlM8wbU/8ucNuiJ7bg/kdUJl2QeoufD15u8ypcuR
         LAvDA6BZBP1Ncz6rWrrnCUuAGXx49JH3JhY8IC3afc094eT1FMjDAvJfODCtFBTk2Y
         cSzPPYd0BtwKeOYng1/1QzpEgcCi+fsp2E9mKuzpSgMPrviEC6eGN3Nt9BZvNWRQMP
         7GkfPn65u85a+AeDgdS6KyFRjmTTSafFGyuQ1kb4La5/UgYjcqAurnE3bGdb/AcpRT
         GwoTSd2jTQ9WZidWZnYGD6R9NDDuGlIVWWJL0trAbPIpmxUd946/buXYoD0S/vyWdD
         VNTNgSc9pl3zQ==
Received: by mail-lj1-f197.google.com with SMTP id f13-20020a05651c02cd00b00210dee0c36eso1617597ljo.23
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 07:00:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hOmDJ63rwjyLjUsGk3cIxatC7VRnjyU/42JZ0Lta5uc=;
        b=hYW3k0BKyPEsT9IosMey+mYasNr2t7AJpE53D8jp53BZp16FigNLD9eZp9Z4uTZcCZ
         PKsedtYL8lKn0If1WKRVloi5lGAu0T3/Vf9zgO3Xmx2u8EGTcBNm2FbjbJU5WBPZbqyL
         pZhDubZoFEMM80UmbRnfTdqHMgoRNDkqw7Vin0/Vpq2/BogHt7QF98IV9gM0Mh7vRDAQ
         wKfGnVa9W6RXi9qX1u8+7iZ5b3Me1WaHCSpl6dcLyBGZ4GtfhC9bPer9ZqHAc5ikQnox
         vSA/hcde+kcYoO4CKF8ktS3+40wRW9DMB9nnrzToDPcuhPIGfWF4ga2FXzymB4PX0Amy
         0rGw==
X-Gm-Message-State: AOAM530p1gFbIPt0rYFUNAgalx981XhfiJ4HkdnuPhKUCdN0qco+AEsD
        SfjsA2vWQQgL6lSiZawDrvwoMfXeMu5WWfjpK4MJaWzTwORVTo2Kwn2HTlTL1/yCu4zsd3bD967
        2j7EiQG5o0rpUjFe/ju7AooOEBpjdxQNoNGH0kuU=
X-Received: by 2002:a05:651c:1589:: with SMTP id h9mr34118280ljq.151.1634565645349;
        Mon, 18 Oct 2021 07:00:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGdsMC2+F7dPtQ5pAWFxgiy/MsdPyqcyjp+s7nAs9s60aNFddvh5hV8IScSftVcxS6IHnyDg==
X-Received: by 2002:a05:651c:1589:: with SMTP id h9mr34118264ljq.151.1634565645191;
        Mon, 18 Oct 2021 07:00:45 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h6sm232919ljh.67.2021.10.18.07.00.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 07:00:44 -0700 (PDT)
Subject: Re: [RESEND PATCH v2 1/5] riscv: dts: sifive: use only generic JEDEC
 SPI NOR flash compatible
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2b5cacd3-811e-fc4a-2257-19d968331825@canonical.com>
Date:   Mon, 18 Oct 2021 16:00:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2021 15:02, Krzysztof Kozlowski wrote:
> The compatible "issi,is25wp256" is undocumented and instead only a
> generic jedec,spi-nor should be used (if appropriate).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> ---
> 
> Changes since v1:
> 1. New patch
> ---
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 2 +-
>  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Hi Paul and Palmer,

This set is waiting for quite a long. Do you pick DTS patches for Risc-v
or shall I send it to Arnd/Olof directly? I can do it, but it would be
great to have a confirmation of such merging path.

Best regards,
Krzysztof
