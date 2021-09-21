Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F99641329C
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 13:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232400AbhIULgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 07:36:04 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44426
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232387AbhIULgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 07:36:03 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 309CB3F335
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632224074;
        bh=zp2By6sGexWtGpbtuPzQQjvZBN+ptCF/Bgy4OAUD3Kc=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=nbSZ6FCbYI540AoED/pu7UBq5kv2JCsGDasSim1PWfOgMp5FlPNqwX/KzywwD0uf0
         +tzx/sXGSR1YJLyBGDEe+u/n6jShxas+5gb7B+i4nEDlFgc+Xs5wJPpMQki4PAMMlX
         whchkhQz87IbvCwrXjdxBBilsemLzkU448N1sVv13I2TlbgPsvf7GxQfDWNd+KNdrr
         wzgAH+16+ILPRR80D7zBwk2tBxiPW3V8p+XkR2/aE6CgRy7BRnZugvdVmlmH4s9YST
         1AlZ8gof/dX7jfFYr9R3CI3FZPV0KC+G3Z7disaRBcx8zBvJFfB67XQlCeOP4NGwOu
         O0Fhj9+sXOQuQ==
Received: by mail-wr1-f70.google.com with SMTP id v1-20020adfc401000000b0015e11f71e65so8576312wrf.2
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 04:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zp2By6sGexWtGpbtuPzQQjvZBN+ptCF/Bgy4OAUD3Kc=;
        b=32ZuLM7uESuRGQWNd+IGXxivGWn8Gb8uEk8SBp/dvFh8U5mIfPyPGDH/ZLgAZy+P5r
         WsgMElQ1fHr/hEt1S6y0nbljUftnQKyLVnVoQezikPWPVTfU2sy7JfFgUX6ukHiCVKxz
         4Rds1NJsUflBKETlc3jUVjpc8tJNVVp95mDMX0KgdwLg67S4eAtYmncfGlEi5Rf5Ywde
         RPtVmtY/kLaD3h7fESiZhiIp0G7+70/8H2svB4UrpliEGnZJlzZ7OCHISVlZWvdwmC1O
         HXsHuWq3V72F7O63d4Es/Krxk9AD2mVfI/NmVspi6FNe+vnhvDH25XT1c0KAcnX2wdc6
         RUJw==
X-Gm-Message-State: AOAM5313HdH6eSCFa2nw40tDLfMMK0adAxlXlnMq1mNuf0qTYPlP4dl8
        Ceqhv1akwAasISxUB+n3735cNTfh/V1LNlMoqieyOl7N8xoBz7IwLa4wOhkCixOtCS+Wvr6SCfQ
        7jm26Lx5dOPCnop8EKqK8xj4Nt5OMLYhV0H7paP0=
X-Received: by 2002:a1c:2313:: with SMTP id j19mr3965535wmj.189.1632224073874;
        Tue, 21 Sep 2021 04:34:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJykWXjszEYz06lQKp1hqKp6FQVhmCuATI+PXjITd/ZFG6FW/H9UPP+5M1aavL3U7syPXCMLjw==
X-Received: by 2002:a1c:2313:: with SMTP id j19mr3965511wmj.189.1632224073688;
        Tue, 21 Sep 2021 04:34:33 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id h18sm2630388wmq.23.2021.09.21.04.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 04:34:30 -0700 (PDT)
Subject: Re: [PATCH V1 1/3] dt-bindings: tegra: memory,bpmp-thermal: add SPDX
 license
To:     Bitan Biswas <bbiswas@nvidia.com>, robh+dt@kernel.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com,
        rostedt@goodmis.org, mingo@redhat.com, jassisinghbrar@gmail.com,
        p.zabel@pengutronix.de
Cc:     skomatineni@nvidia.com, broonie@kernel.org,
        linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20210921112716.3007-1-bbiswas@nvidia.com>
 <20210921112716.3007-2-bbiswas@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <8c73dbc0-2678-9c9d-dc29-d4bece29fd08@canonical.com>
Date:   Tue, 21 Sep 2021 13:34:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921112716.3007-2-bbiswas@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2021 13:27, Bitan Biswas wrote:
> Add Dual licensing SPDX license identifier for tegra186,tegra194
> memory and bpmp-thermal headers.
> 
> Signed-off-by: Bitan Biswas <bbiswas@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra186-mc.h            | 1 +
>  include/dt-bindings/memory/tegra194-mc.h            | 1 +
>  include/dt-bindings/thermal/tegra186-bpmp-thermal.h | 1 +
>  include/dt-bindings/thermal/tegra194-bpmp-thermal.h | 1 +
>  4 files changed, 4 insertions(+)
> 

Hi,

It seems you sent the same patchset twice.

Best regards,
Krzysztof
