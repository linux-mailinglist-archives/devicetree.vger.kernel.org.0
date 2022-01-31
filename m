Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB6C04A3EE1
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 09:54:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348154AbiAaIyD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 03:54:03 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38144
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348141AbiAaIyC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 03:54:02 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7E8953F1E0
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 08:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643619241;
        bh=Nw4J5FSO0/NGyfqa9gmpjIM7NtP91GXWHGgvWMRkq1I=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=IUl201egHHisqQmietg/NqmPuNoswDoqYO0Ff0sKASmJjKry18kDkcUJdqCnSP3AS
         bFn6dOfVeuqNh4dlrINdXv1WPYnKvNe9aELr3HofmAe7Cit1hpAs5OjErE13HCEavk
         G8tEE8Szg04BvSY4NATn3F58+eTDwcOKc8t0Qry++fdycLbO7Jv45Qq/57rRR5BK1F
         bOAdBLbS214I/ecdPWmUj/xQ2YTSVHCM5CendkCSwAv+qvgrfI9iS5HOwUvPPVcGIZ
         gqX3Njrgov34POwqN+6qaAw0GLS76f1EfKbHqzZQeVRbpnKqovdYMXVyTUDgHWKi9l
         XNTQQm4CH4E0Q==
Received: by mail-ed1-f71.google.com with SMTP id w23-20020a50d797000000b00406d33c039dso6589828edi.11
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 00:54:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Nw4J5FSO0/NGyfqa9gmpjIM7NtP91GXWHGgvWMRkq1I=;
        b=grCB2thk3JzjfrGdLIS4ZdD/LhLrq/sYxKdN5AEfvqb538dahJGvu5yNkMOeU4AojL
         EbBeDPAXl9dUwCfZ1IEhqx5UsvRlEjFGz6RVJ0lM4rERj8djaLHKVKdiyJa5f7xHGmat
         Xs4rPlXDePl6qQRlJBvmqIJ3j00AY2c4cvI+8kJCnXGkuGU7nMhGcTBqEM4jLRAqrKb3
         E2bYA2dXWMKce5z5EXk2gxnFroEGrdAaigq/J/IDT68xJ3XTUGh3qmtRgfE2uhNLl18t
         lvsynFGH0hUEqKEYFsloD88O6ygvdwXBSnFbDsUZmww4YQ5VFu4IlIFhvyd9PDb2idy/
         PjQQ==
X-Gm-Message-State: AOAM533L59co91cqViTkNEspO5Tez8XK+IslmX/vjWFC7K3ayvpVnjbs
        6NC3IhAfXojSgR0464F/tTbyhck2FY3urv79KriK/ya5Ih1tmGDS4B0aLNx2X4+AvzVBQRTtjOP
        uqVnsfx73W5FW0QyuOUHFvDBp9MQ+fFA3PqrLc3E=
X-Received: by 2002:a17:907:8a1b:: with SMTP id sc27mr7678211ejc.300.1643619241258;
        Mon, 31 Jan 2022 00:54:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzi61kssgqB4iIEvZMFNY8TmBwEuHgoyp4eoG0qGYq2fPVOjqOPm5AcjRhPA7u3o1xiyozJ/Q==
X-Received: by 2002:a17:907:8a1b:: with SMTP id sc27mr7678201ejc.300.1643619241094;
        Mon, 31 Jan 2022 00:54:01 -0800 (PST)
Received: from [192.168.0.71] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v15sm17357839edq.35.2022.01.31.00.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 00:54:00 -0800 (PST)
Message-ID: <131c9bd9-b035-8a75-ca27-f9c2b3993566@canonical.com>
Date:   Mon, 31 Jan 2022 09:54:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ARM: dts: add 533 MHz step to p4note GPU opp table
Content-Language: en-US
To:     =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220129221452.GA36524@adroid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220129221452.GA36524@adroid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/01/2022 23:14, Martin Jücker wrote:
> The p4note devices support 533 MHz GPU speed, so let's make use of it.
> 

If there is going to be resend, please add prefix "exynos:" in subject.
Just like other commits (git log --oneline arch/arm/boot/dts/exynos*).

> Signed-off-by: Martin Jücker <martin.juecker@gmail.com>
> ---
>  arch/arm/boot/dts/exynos4412-p4note.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos4412-p4note.dtsi b/arch/arm/boot/dts/exynos4412-p4note.dtsi
> index 4ae6eb3091c4..d277b2337ae0 100644
> --- a/arch/arm/boot/dts/exynos4412-p4note.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-p4note.dtsi
> @@ -355,6 +355,13 @@ &gpu {
>  	status = "okay";
>  };
>  
> +&gpu_opp_table {
> +	opp-533000000 {
> +		opp-hz = /bits/ 64 <533000000>;
> +		opp-microvolt = <1075000>;
> +	};
> +};

This looks like Exynos4412 Prime. Please check also CPU frequencies and
if they match, just include exynos4412-prime.dtsi (like Odroid U3).

> +
>  &hsotg {
>  	vusb_a-supply = <&ldo12_reg>;
>  	dr_mode = "peripheral";


Best regards,
Krzysztof
