Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B4234504CA
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 13:58:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230228AbhKONBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 08:01:48 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59212
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230118AbhKONBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Nov 2021 08:01:08 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CCF873F199
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 12:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636981091;
        bh=2lXKGcDk8cSuLceqIHqxG7vShboL2N5LAEantx9d1mY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=j6zesks5ecStBYkVrR4ouZyd7cmC6TDkGRgu9GjlIOB8XkKGCdHbw2FIPfmB23h/J
         g/d7mduYK6ohSSRG323Kaorgk+WfDEs0NcDpiyF84c85C78e2VBGaZl3DSBJneEgyw
         eHkf3l51Quy80gOqXh0LIjBbdqrGwPFQWt8JJLX1WUZSmYXxnG5lsq+T/xj1AQspat
         pA7tfGIO8b/cmtQfAiCTVXcdjUAQv2AfsLs6f8d0OoxThjnc6IipnrmQKkgOug9x4p
         dWBCDy+CTOTtu9CamIAb1D8zywNZ6moSgv53/9mbccovDBeJ29/vOmfJqzuus5CPDV
         APeMXJUmZFfBA==
Received: by mail-lj1-f199.google.com with SMTP id y11-20020a2e978b000000b00218df7f76feso5076428lji.11
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 04:58:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2lXKGcDk8cSuLceqIHqxG7vShboL2N5LAEantx9d1mY=;
        b=geFDzq4iWcDBs+G/Ov+CC9lds/ByKl/1j7g8hbwPgGmzOQ1552O/rD3ykqx8eoNzjG
         saEsMGPbcfbQSDdqmso7B/hAvq4tIoL6KWw9aiqxqqJ9aWKYmO7nTWUzR0kiA3tH65iH
         /zJrqSqMEvLukMXtpIxAU7G13rhqZyrQ/p06/0ZbXQtdV7lLSdkI7pXQIj0WMYSzizT2
         HkAYsA8wW7Znq29VNUrVPCCBV2kIoJHfqLY2JWKK7uyqdiTVEMdxelnPhg2zEE2Y0T+T
         xSsLhfA6Cw1mxmwDSNrA3QuNkinSCnq7tFaLIE2eBzJq6wbunQovBrLyaGXnaCJcNIEb
         VYpg==
X-Gm-Message-State: AOAM533SMVkw7VEIC5pGwsE+VlQsz+Fhcuv6go2nCaY0SDUyjStYNmH7
        k1bHZauLlKU+5J4llZ0cNPLJNvEq0HbewXS7rvkMGsyj2i0j8/FkvE1p2+IMo+NVIAIJHq3zNCc
        d1K9Hb+6NcbPdrkfK3mVDgRXgpj/F2mouODaMB9g=
X-Received: by 2002:a2e:a696:: with SMTP id q22mr37826682lje.423.1636981091284;
        Mon, 15 Nov 2021 04:58:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwSSpA6BEigGpu15ImH+tj1eDb+rSEziSgrm62AcPCKMxkKiI/gEKtDBzBfK9v9+/JUjhbvUg==
X-Received: by 2002:a2e:a696:: with SMTP id q22mr37826660lje.423.1636981091086;
        Mon, 15 Nov 2021 04:58:11 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id x17sm1482167lji.96.2021.11.15.04.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 04:58:10 -0800 (PST)
Message-ID: <b4647d13-80c0-7f25-c987-a9f673b787bb@canonical.com>
Date:   Mon, 15 Nov 2021 13:58:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] arm64: dts: exynosautov9: drop
 samsung,ufs-shareability-reg-offset
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>
Cc:     devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        'Rob Herring' <robh+dt@kernel.org>
References: <CGME20211102065208epcas2p2213e346b2c37f315e73a04f511a1037c@epcas2p2.samsung.com>
 <20211102064826.15796-1-chanho61.park@samsung.com>
 <02d501d7da12$9ec499b0$dc4dcd10$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <02d501d7da12$9ec499b0$dc4dcd10$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2021 12:19, Chanho Park wrote:
> Hi Krzysztof,
> 
> Recently, Exynosauto v9 ufs patch series have been merged at v5.16-rc1.
> So, below patch is required according to the changes. Could you please review & pick it up your tree?
> Or Do I need to add "Fixes:" tag?
> 
> Best Regards,
> Chanho Park
> 

I'll take it to fixes branch with a Fixes tag for
31bbac5263aa63dfc8bfed2180bb6a5a3c531681.


Best regards,
Krzysztof
