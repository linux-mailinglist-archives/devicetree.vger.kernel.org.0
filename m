Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDD6465FBE
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 09:41:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356278AbhLBIov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 03:44:51 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47306
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1356270AbhLBIob (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 03:44:31 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A5F923F1BA
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 08:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638434467;
        bh=FIwRIWabElMuSh13dNs8xwk0guQGLGLYUJ8I7QxS5UA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=SumPOPsmyhEdvmd/bWWtffs0kQIDv4VD6P1/ao6wC7LrzuBRiZeVosav+SjoBrNzR
         nmGo3Sgolrhx0xFIzY8fP+KTXpqeCxlckP/QL6ljCrxUTyoHdTDyvvZOf1j2LIecfS
         FBbB+PWtI5W2AixwVXu28wXeuxPIg6pY9v3GJVceajTQMrTWHWMRLJVzCEI4PE6xQx
         PBBLpxBCLpOTlC+bZTRVg1seXsiAEKCqAk1PmlJFGo4mLZbcK6ltVj3L4Ox4wsHZn7
         ENW91J3ROE5i49x3Rod0IHnBUQv0w+7pImcaamqUS6Sl76UxUvtmpmdmJxdq7F5NQW
         8x7iBCnFdsiXw==
Received: by mail-lj1-f198.google.com with SMTP id p18-20020a2eb7d2000000b0021ba3ea3c42so7323855ljo.5
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 00:41:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FIwRIWabElMuSh13dNs8xwk0guQGLGLYUJ8I7QxS5UA=;
        b=6YzPeYYLsKdqQfh+JsFy9nLa+Le56S6jkJ1lJNMJPw35mdeT0dfjeOHVVTxFvi4piJ
         uwKNahmKm3chnollLB8WJM6ke5fHo7f1ENIEDo+Fu+U95f1kdY78Mkn7bNhlDQ36JV9k
         fc1scoq2UUsQqmzHxMdMoA5DvWObu0LYkUgCU66ALQUXDciCxGHUUDyLmZbgkmAgjwAt
         qEoWfwnIq3lyx9vc0XIZvFyIxwS7TR3t3ezLRCw2SYjvQZT16MBDYWDzJTbKp23GAxHH
         aqA/rD7BuUTCBzAbmN0g8RwsgrabpoH4AYYn+0cjH5Z7CxhNywFOIh/bMsDh2WioQYHs
         bxiQ==
X-Gm-Message-State: AOAM532XPfsk++tFEuJ8/OT01fv8sXA9Q+qUnBJhL8ic8yauVpWOGpYP
        cXwEvmasEC8/Ny2Pezc2ykF/O9/EnY+mDhwyDGfszn7rlNln3Z3SdXB8cU9IX4SgZlPpisnLb6i
        1UjCnI+U8IazfEqX4pFSN6H7Dd4y4rLE5O66YmF0=
X-Received: by 2002:a2e:8691:: with SMTP id l17mr10288234lji.119.1638434467077;
        Thu, 02 Dec 2021 00:41:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwOzAYA0rXNf6qxmuG4HJayRcLcb2MW0+iM9hyKq55/nQxtJmM0dNWEAgdHZ4YJPVsPd578gA==
X-Received: by 2002:a2e:8691:: with SMTP id l17mr10288212lji.119.1638434466896;
        Thu, 02 Dec 2021 00:41:06 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id cf34sm260062lfb.222.2021.12.02.00.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Dec 2021 00:41:06 -0800 (PST)
Message-ID: <c6a44fd1-ad48-06cc-4a96-818ca124afca@canonical.com>
Date:   Thu, 2 Dec 2021 09:41:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 1/4] dt-bindings: mmc: exynos-dw-mshc: Add support for
 ARTPEC-8
Content-Language: en-US
To:     =?UTF-8?Q?M=c3=a5rten_Lindahl?= <marten.lindahl@axis.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     Doug Anderson <dianders@google.com>, kernel@axis.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211201153804.27655-1-marten.lindahl@axis.com>
 <20211201153804.27655-2-marten.lindahl@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211201153804.27655-2-marten.lindahl@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2021 16:38, Mårten Lindahl wrote:
> The ARTPEC-8 SoC has a DWMMC controller that is compatible with the
> Exynos 7 version v2.70a. The main differences from Exynos 7 is that it
> does not support HS400 and has extended data read timeout.
> 
> Add compatibility string "samsung,artpec8-dw-mshc" for ARTPEC-8.
> 
> Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> ---
>  Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt b/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
> index 0419a63f73a0..161be451a1f0 100644
> --- a/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
> +++ b/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
> @@ -22,6 +22,8 @@ Required Properties:
>  	  specific extensions.
>  	- "samsung,exynos7-dw-mshc-smu": for controllers with Samsung Exynos7
>  	  specific extensions having an SMU.
> +	- "samsung,artpec8-dw-mshc": for controllers with ARTPEC-8 specific
> +	  extensions.

Artpec8 does not look like Samsung, so vendor prefix does not match.

Best regards,
Krzysztof
