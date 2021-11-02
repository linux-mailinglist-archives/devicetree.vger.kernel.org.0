Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C222442ABB
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 10:49:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231189AbhKBJv6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 05:51:58 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45940
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230000AbhKBJvz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 05:51:55 -0400
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6F49C3F1B6
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 09:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635846559;
        bh=QrINL26Fq3mxvitvfD3yGH3qJYhXNEC7YRh2TlZeXPI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ZidIcpIT/dzZutOzmYBOWIchiWSsy4TSFnBTh9apON4401WvLZWdbZ0tw2OmvE+pe
         lzeSu10aSJVVAnf63Mdz+m5tL71rVQ3vI4rRF6bP7fAMQwRlmcgkl9GbdKuaju3OTa
         fe9cTbv7FC3dOp9hIOCVS2L4ZxWmN91cPqFH3p/itxn/Kz19szWRyn5SOsq1S5fCcn
         SuoixzQZdmlgzNX35wKTC/Kbc+QbCGyTJ/jZao4i2pgbDHYxBQ9w+UH5h11YcBM03r
         7K5TNcYDM8EuXcTy4BRGuKr3A89WeuH3kOjYr4XFIxvGaJc4bIzOXYiJzBh2XmMZUU
         OCf0WAPoBCigQ==
Received: by mail-lj1-f198.google.com with SMTP id r13-20020a2eb88d000000b0021301170868so3800556ljp.9
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 02:49:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QrINL26Fq3mxvitvfD3yGH3qJYhXNEC7YRh2TlZeXPI=;
        b=Z+ZPhMIsn8Wu6xL2PL9hb850vqfaiMCc0mp1sEr7Ze927amVcUHJclbxTmq8B0OUxp
         dwxihEyXv2GCLW665/4Rmb2OYW2GnlrdMemJZwm293/qUWPVBS9Kj7512jtveRbh78MH
         KNmthbl4QWuI4hJBaoPboeRcdiGyOwQhqVPlQWptBA8bwXM5mnf1M1EdJvXe9OioCdFj
         BkPiGicRrFisrbL5J9yxZLGimd0AztnGOOepbV50jqoVqYKtTJNCr65q5/96GE9cWtx5
         IB33L8JSKQO5iPKefdAaWglNVTAqr/Cw12sThwhpdaJz7KcwwF7n0GoXMlOaMzbayK8s
         bfbQ==
X-Gm-Message-State: AOAM531YfSTAzBHgRTsFqnRFqTOK9o76AouKol86HPCx+T/9G8axi9h8
        YcgHjXByik/IsAt7uiT4gfnbjIGgOWFV8SUWqJZO8cNycX09kmqFgiNIb1HSopowoaq151BPJtk
        JboAC+7rdQE9XzNA6vP5HaItaT+49xxUpkfQCzN0=
X-Received: by 2002:a05:6512:3d13:: with SMTP id d19mr32048481lfv.607.1635846558914;
        Tue, 02 Nov 2021 02:49:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZhL4Q7sws34mo0mTkJjCcGCaFI2kTdF+p8TepT7dcTH529ZZiddbbTUJajTFNBjzOa96HBg==
X-Received: by 2002:a05:6512:3d13:: with SMTP id d19mr32048452lfv.607.1635846558648;
        Tue, 02 Nov 2021 02:49:18 -0700 (PDT)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id a6sm287917lfb.186.2021.11.02.02.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 02:49:18 -0700 (PDT)
Message-ID: <4e3271fd-d804-ca47-100d-7592d7ce425d@canonical.com>
Date:   Tue, 2 Nov 2021 10:49:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH v2 03/12] watchdog: s3c2410: Fail probe if can't find
 valid timeout
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211031122216.30212-1-semen.protsenko@linaro.org>
 <20211031122216.30212-4-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211031122216.30212-4-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/10/2021 13:22, Sam Protsenko wrote:
> Driver can't work properly if there no valid timeout was found in
> s3c2410wdt_set_heartbeat(). Ideally, that function should be reworked in
> a way that it's always able to find some valid timeout. As a temporary
> solution let's for now just fail the driver probe in case the valid
> timeout can't be found in s3c2410wdt_set_heartbeat() function.
> 
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
> Changes in v2:
>   - (none): it's a new patch
> 
>  drivers/watchdog/s3c2410_wdt.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
