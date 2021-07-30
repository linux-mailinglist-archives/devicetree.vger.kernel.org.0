Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CEC23DBD24
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 18:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbhG3QgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 12:36:01 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:52926
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229510AbhG3Qf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Jul 2021 12:35:59 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 3EAA73F043
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 16:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627662954;
        bh=r6WBOzzzU71Avbpbkb7MJv5FMhuteThAgMvx7ePk7s4=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=ezwLRmvHQ/MfPcVmQT1RbewuFDc5ZpJ/mMgMzx32gPb7jSD4dNQkO343EUQDi1j3y
         WEPsuTiNDBICn+1SSt7auYbrfp7tpP+diR626Es2wITargm0m2FEOPcH1Tu16ycUmF
         r2vbfpc+iHEtkjrGN49cHa27aNrWU7ziocUj4dvsfCXkq6Qv/Vlq2j2Pdoro1TDmVF
         nJ78AzLKgJfwg0KWjFpQyzXrhRnyPD5vdVa7tn6Xm75HD9cZK7tocPWGAX9FsQb8Hq
         4mgOnJtDtUpmbUNjVNICkOVatBnHvV/tykFZP+9Fl5T6vou8PqBHkDZrIFzlKb8a7S
         +truZ6NHC7QPQ==
Received: by mail-ed1-f71.google.com with SMTP id c16-20020aa7d6100000b02903bc4c2a387bso4816294edr.21
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 09:35:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=r6WBOzzzU71Avbpbkb7MJv5FMhuteThAgMvx7ePk7s4=;
        b=TrVCpSvhd3EXrReypBckzqdxbSO2b1CMdC2/SP7vhn+sBoj8/TcGc8OZMTjM9NTrQC
         swWhdZKitCh/dptW0BNDsJAmv4GtYB88TD58MM0UYkNEQYzWpcAwDTOqB/zYGT3jkLNL
         wxU3yrYqrT4NdqXTmeHdtHsZR53ZejZMeaSiUAS/l5y3/q0vdx1z215ac4+9D++W7/yd
         M0Gcv9MrpnrzrBRRIpZ6xn9rnbHdx+ISAKs5wzz9wt6VxJGNpvy0tAOySYnA0hWqj3cn
         ZvEFvG9r3fhyfWf6o8UzuLKIfVuPF+uXnLchb1Q8lwv/kYrgyk0yQb33D098wT+N/FPO
         1kmQ==
X-Gm-Message-State: AOAM533tcdMapM2N7cu8ahWnPbkwAHStF1NVrzFmabgVysyNTR7iU1OP
        dX3WgTPei1eLqzPKndEMkq+z9P5Oj2ihchbG881uMafIFifLSmhuvVi8ufwpRL1+zgFC9QhzYsL
        ye3enKu1LLy7Z0+DDO7f2bEd7lMeeNdOrnj0CfhM=
X-Received: by 2002:a17:907:766c:: with SMTP id kk12mr3257239ejc.525.1627662954041;
        Fri, 30 Jul 2021 09:35:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWkxEaV8vcHXDuB7QVly4oizqMQCUQ0S+bTlZqlWe7m7kMOzOsno/9k+vpyqKWr+t6iPU+7A==
X-Received: by 2002:a17:907:766c:: with SMTP id kk12mr3257225ejc.525.1627662953841;
        Fri, 30 Jul 2021 09:35:53 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id la23sm734067ejc.63.2021.07.30.09.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 09:35:53 -0700 (PDT)
Subject: Re: [PATCH 07/12] dt-bindings: serial: samsung: Add Exynos850 doc
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
 <20210730144922.29111-8-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <45da758c-d32d-293b-f4c7-12b58ebca8ac@canonical.com>
Date:   Fri, 30 Jul 2021 18:35:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730144922.29111-8-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2021 16:49, Sam Protsenko wrote:
> Add compatible string for Exynos850 SoC.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 1 +
>  1 file changed, 1 insertion(+)

Thanks for the patches!

Please put this one before other serial changes but does not have to be
first in the entire series.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
