Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 126994428F1
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 08:55:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbhKBH6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 03:58:10 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56024
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229720AbhKBH6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 03:58:09 -0400
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7A15B3F1AD
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 07:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635839734;
        bh=TL9ujWaRC5QrK/omsBGAzgL+mAn1UaLwIFZhjmwNN9I=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ExQCg3V+trrItHD3VZ6u7EPN285MG1j7302uaICCX+DirvLS8Qcnxusodz+LCKh/3
         euVrH+Scp5HK1zKc7hwRgOYoaID9vpyA0zW6poT8k5pNuoSDS8FFJj0WM5BMUAFVHq
         vlL90A6KAd9wKzQlyccLkbCtN0efyGwuPWhK+4zIeEVvMpNx/B+MenjIWetoBoMFyp
         Y3SdVfmM4ANZyz4K1+6aNJQMzbqX4ad+n/9XzRaC2mgpfjpOL4Iil+BOcsj81dh69h
         wNs//havHbZeS3ODg5DDVvdy8BcYzIJsrudZD3WCpKpwV0rmr/rZ3IMWlTKUiPuMsk
         qDgA4Lz+KYjkA==
Received: by mail-lj1-f198.google.com with SMTP id y18-20020a2e7d12000000b00212b22bc3a4so6249754ljc.2
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 00:55:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TL9ujWaRC5QrK/omsBGAzgL+mAn1UaLwIFZhjmwNN9I=;
        b=yOQsFacMEfmRIZ9WuwvlqOJmF5h1l+4Rw2ZznEULEU38vs9hpwwgdf79bJMW544btI
         UW8d0T9B1jUTD5FhDLGAqDbE4uiNjvdgTxfHEXah/FDGtrZ03PTIcpQE3lIHvDkNdoSv
         IjqxzbFeFJ0+FhaGPILHweWVPUbbegBNfwPNpTMKLwGyZxi6OHqQYvQ+JOCVhI5XqUTK
         RbqGQf17+LFstdEV57sbN7S7dbzzlrTuZI0n/dGPoCjW7lLpqNiFFSEqpzJuSeuN5ura
         uL0z9RiFozmwiDMqE0MeLNWAsif2ce/Q59Wbwc8km6JssIVj1ykgLG0GPWDgBENXKASP
         yIaA==
X-Gm-Message-State: AOAM532S6WS66tBm0/mZsOkiTyFE/vQsvcSXj8StYp++Nnry1xCVpoxX
        4ohNOaMznVrdYtUp1uf+PW16VA71U+zWJlbVk5IRoK+Mkrxw9UJpjgfC/kNyofe8QqHNTob1/DR
        MSgBjWhVurTVeK5c/mA9yuLleTf3mvuNDNF5w+EE=
X-Received: by 2002:a05:6512:b83:: with SMTP id b3mr32712049lfv.654.1635839733926;
        Tue, 02 Nov 2021 00:55:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWfHYARD0cMK/UpHT4OBoPI1WgrZQDQUCrOlg/dE4Y6zJh9PI9MVX5Aw/N+Qh4RKsTqWkJwA==
X-Received: by 2002:a05:6512:b83:: with SMTP id b3mr32712035lfv.654.1635839733798;
        Tue, 02 Nov 2021 00:55:33 -0700 (PDT)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id s1sm111943lfi.124.2021.11.02.00.55.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 00:55:33 -0700 (PDT)
Message-ID: <a7697cc9-1872-d466-0fb7-683df9c46af9@canonical.com>
Date:   Tue, 2 Nov 2021 08:55:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: samsung: Document Exynos7885
Content-Language: en-US
To:     David Virag <virag.david003@gmail.com>
Cc:     Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20211031231511.46856-1-virag.david003@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211031231511.46856-1-virag.david003@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/11/2021 00:15, David Virag wrote:
> Document compatible string for Exynos7885 SoC.
> 
> Signed-off-by: David Virag <virag.david003@gmail.com>
> ---
> Changes in v2:
>   - (none)
> 

Both patches look good, I'll take them after the merge window.


Best regards,
Krzysztof
