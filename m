Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4B1947F2DC
	for <lists+devicetree@lfdr.de>; Sat, 25 Dec 2021 11:11:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbhLYKLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Dec 2021 05:11:25 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:52556
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229699AbhLYKLZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 25 Dec 2021 05:11:25 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 999B1402D7
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 10:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640427078;
        bh=I39oV/QZaWmlVgFT3DcbTijQiyG6xjSwFwSGQ0EVsOQ=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=EZQT3CtUQQ2gvjtwuwPnEYjZUl4pc0oL9rjmPqp4yF6mih0UOGbsk4FChjYQ97Iy8
         q4nRYtKlbEot5dC7VrKiGkTpY/BmD2xf4bF0AYrUV8Us5eaSvIpyf9um644hN4grVd
         CrUtw+Q7u4HppHy3KBPZ2MMdx9WqLvqqvY7qQHOLEDrDCviNqGKbE9cMRWBqvIeD2z
         xh5jyWaYfX+8QqmxXgy0xWAb6saP2na+4sVZyCFVaM/fdmyR7kMQ6MzGMlYxYy3eSf
         HwMSDJPadMyu/w31bb/v6gEIkteqond5l5j8jzLj4eTuOdJZOtMXKPLWsDXq8xxIYv
         WvS5uamwnQiAA==
Received: by mail-lj1-f199.google.com with SMTP id r20-20020a2eb894000000b0021a4e932846so2893493ljp.6
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 02:11:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I39oV/QZaWmlVgFT3DcbTijQiyG6xjSwFwSGQ0EVsOQ=;
        b=DFnsI9RLLSQeCdH3wPBZgpFOnUy1+yCC22G1jzB3N2qnQEzCM632AVqN2Py47+vLJY
         T7UiWZ0RCI1dMWyIyW785TK/nBd4FZm4zrUBWkqpqXiYYOXj3t9sdoGvbVpxkBIJaLEr
         zxCotAXzZ9CFk08SFm7zblONyaaIhiOcfV5ihdmhRVzwx8bsApfliS2feHrlPt0vbDsD
         prOQFi9bSFO5JR4POogxGbj8qrtsiCT4nAJUe8zTyESV5EyX74pUvqRk0hxLd/lP3C9n
         dXEhlL+cRKP+X/139SQvUC+P3nW7FeK/A3/pbkuY3vffmXDhNdqKNvpXoswTBPQGmEOC
         hZqw==
X-Gm-Message-State: AOAM531EI4kS0whSlWJXMAMCT2s/lLwjpV0dE/DqVms8xenv9sS0J0pX
        QfWSL3j0NarNmIvpgoMsg8FPv66yZsS79bV8Y3Hm9wMAY/6SHtIAKSSmKPaKjbzYE2M/2MbnUCF
        y2gUmT1Z/cwPHSy71ZbPyXKqyQO9nX9fjRm+oW9E=
X-Received: by 2002:ac2:4e06:: with SMTP id e6mr7482606lfr.295.1640427077469;
        Sat, 25 Dec 2021 02:11:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx4sjq+1CG+HpXFM71RWmF3bJveHv7XWD7dzylenrpt+oIJERl9BtbYscnpD8bEiahaL/dhKw==
X-Received: by 2002:ac2:4e06:: with SMTP id e6mr7482598lfr.295.1640427077285;
        Sat, 25 Dec 2021 02:11:17 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id f19sm183205lfv.100.2021.12.25.02.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Dec 2021 02:11:16 -0800 (PST)
Message-ID: <e20a52cf-69cf-747d-7cfb-0a2b58008ce4@canonical.com>
Date:   Sat, 25 Dec 2021 11:11:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v1 1/2] RISC-V: Provide a framework for parsing
 multi-letter ISA extensions
Content-Language: en-US
To:     Atish Patra <atishp@atishpatra.org>, linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
References: <20211224211632.1698523-1-atishp@rivosinc.com>
 <20211224211632.1698523-2-atishp@rivosinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211224211632.1698523-2-atishp@rivosinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/12/2021 22:16, Atish Patra wrote:
> Recently, there were 15 specifications/40 ISA extensions were ratified.
> Except hypervisor ('H') extension, all of them are multi-letter extensions.
> Going forward, there will be more number of multi-letter extensions as
> well. Parsing all of these extensions from ISA string is not scalable.
> Thus, this patch provides a DT based framework to for easy parsing and
> querying of any ISA extensions. It facilitates custom user visible strings
> for the ISA extensions via /proc/cpuinfo as well.
> 
> Currently, there are no platforms with heterogeneous Linux capable harts.
> That's why, this patch supports only a single DT node which can only work
> for systems with homogeneous harts. To support heterogeneous systems, this
> cpu node must be a subnode for each cpu.
> 
> Signed-off-by: Atish Patra <atishp@rivosinc.com>

Your from address does not match SoB. Please use consistent one - they
must match.


Best regards,
Krzysztof
