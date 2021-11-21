Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DBD3458565
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 18:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235958AbhKUR0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 12:26:46 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:33114
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230330AbhKUR0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 21 Nov 2021 12:26:46 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9030E3F1B0
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 17:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637515420;
        bh=8EKhvAzuNETIXPZvBdvtzzbJxkmJKv3T8xcGJE2o9zc=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=Vcq5ocBFePw1joK3tninNkDLh7L4qkTioKUzYWhvcBRKQhTSqwFc5KUbYrbMtdjVa
         8Ba58iEGUsziz6d2KxMiE9yLepucEtumHSTopd+Ex9mZrgf0j7QfdugLLCEthnTODh
         mhNhNq6EyZnlx+PqXn7Vfq2XZjOmBP9STfssmPVkMiaJn+SfGc8PHmkNkJTdS4zUgE
         osy00h2UR+g2YgVeUInvGr0auuzd+lRyZhQ8h0VpA8TajFIbOsw+az+6I9OoRIy/BL
         rleVXLjXQ0REQPkEI1qPDtj1OwvgiibBhjuyqDjU/oAdfg5giVHZWljX58ykSxAFGP
         /9f0bq+eTzSIQ==
Received: by mail-lf1-f70.google.com with SMTP id bi30-20020a0565120e9e00b00415d0e471e0so5005100lfb.19
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 09:23:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8EKhvAzuNETIXPZvBdvtzzbJxkmJKv3T8xcGJE2o9zc=;
        b=H9vzqqa+yAjpnFOl+FR7A+WhEuMbZq8MzB3foZKY0Lhc4751EGONwtFLBGltrr2OxB
         IYZrd9pCm/FQ91x2+1l8K4wE6OgMS4cUokTycZkseHScPOprjOljrwbdeHPPOlMRrO+G
         Aib2xeYEOsAJvZw3z/jMUuCeoL0abpqWXQw/kSUWNAjIAVJreDvLdR4M8Bp2EMEIz4Fx
         Pc5L88TpL91kJMo/5x8DF7RZRYvtAAg2g9DL1EGFnAa4YnkMc+GlDI2407z6EjOXd0zm
         fb5ei4iZ5ow3LfjKoBqkT7YNbzmxLr662V9b2SlsThJ3KHP3+FNsR10uEp/EfzbzqBnN
         cynw==
X-Gm-Message-State: AOAM532muffmqX3wWfOqKWLyAaqKTwhPNWL/8SYgFy0qeazaBCaqzuoc
        uA2B6XfTcxliKS7XsWmEg/N8ZxTOW3/fE3F5IzeY4CvJPi/VZD155lq8+TKOIBcBGc5Rz07kprA
        Kx8A7mGxg/piPGL45pm3zDt7NKPHXc/sq25fzyOA=
X-Received: by 2002:a05:6512:104f:: with SMTP id c15mr51372077lfb.256.1637515419964;
        Sun, 21 Nov 2021 09:23:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx1jPqSJFTGZGAENICSqrdk2/BOSkXQMTiiA8ICivNbDKs03/7WG+pTjnVWK2WHcqcaxqwhpA==
X-Received: by 2002:a05:6512:104f:: with SMTP id c15mr51372056lfb.256.1637515419800;
        Sun, 21 Nov 2021 09:23:39 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id u23sm701037lfo.35.2021.11.21.09.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Nov 2021 09:23:38 -0800 (PST)
Message-ID: <a6111407-c0a4-0c35-dc26-f30022df775b@canonical.com>
Date:   Sun, 21 Nov 2021 18:23:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v3 2/6] riscv: dts: sifive unmatched: Expose the board ID
 eeprom
Content-Language: en-US
To:     Vincent Pelletier <plr.vincent@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        David Abdurachmanov <david.abdurachmanov@sifive.com>
References: <378c64fb868b595430b0068a9af10fdbeceb8e12.1637362542.git.plr.vincent@gmail.com>
 <589539cd08e35c35b269a769caeac40b85ffd01c.1637362542.git.plr.vincent@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <589539cd08e35c35b269a769caeac40b85ffd01c.1637362542.git.plr.vincent@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/11/2021 23:55, Vincent Pelletier wrote:
> Mark it as read-only as it is factory-programmed with identifying
> information, and no executable nor configuration:
> - eth MAC address
> - board model (PCB version, BoM version)
> - board serial number
> Accidental modification would cause misidentification which could brick
> the board, so marking read-only seem like both a safe and non-constraining
> choice.
> 
> Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
> 
> ---
> Changes since v2:
> - Fix end-of-commit-message separator so change lists do not end up in them.
> Changes since v1:
> - Remove trailing "." on subject line.
> ---
>  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
