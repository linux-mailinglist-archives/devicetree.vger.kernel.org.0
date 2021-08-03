Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D08E3DE7C9
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 10:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234277AbhHCIBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 04:01:15 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:52134
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234246AbhHCIBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 04:01:15 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 882893F113
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 08:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627977663;
        bh=xcgPwRTVNnlB9Ca1BryW6jcXJ520XlA+QdA5eYCuNqY=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=DDLXhx2OZEybII3k7FgTgiBoIUPNrPqSKn76jx9CAWZreKOcUFuUr5x9QVMVOpd0z
         yvCxC/TYawRI8hnuDIzQmQzu8X7Y8OqtCggfbO7Dlp12Sx281JNVt4m2+pbSep56t6
         TrDY5QHxrkID69cH0lGiPvDurP5bJUqm3fgQU1fSHh93A2GYPGoV4IjeATbPFwgt84
         RnOH13h8ZmBXN1DJIC6ETcn9NM6r2kklQtGKGehvFnE8f1lQ9LDK7zS/fKuTEoHikF
         bSpVl5ZF01asVc/CzjGYCA2IIgVQaURlaSpFqHPukUq57nx6/qdQollWFnmf9Ebv2Y
         7Gys5qX6rFLNw==
Received: by mail-ed1-f70.google.com with SMTP id d6-20020a50f6860000b02903bc068b7717so10099197edn.11
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 01:01:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xcgPwRTVNnlB9Ca1BryW6jcXJ520XlA+QdA5eYCuNqY=;
        b=iQVJWIp2ogxt5OxvImJernCc6E+HHDU3BMWvnki6knHZRpF/vSJzO+ABufwNvL1HP5
         LYEFwtPGzGGDV11E6zHjQGmilHcUpyCRWt+Cv3YVVaFaRe6xnfegqW+fS9UAvzE03RYd
         aqVSUTzGSqy4S9JhxBei2ICAoD51bHWtSdvGZ50HwFdQd3F/wMfTjPjWyVwvF8bnJCFi
         ZvOe7c9bJlZsl595YYj7A1ig7GjSzY7pK+eErN6dHLeJVm1tBA74VPeuGwj5nQYs7lM1
         Iv8dKOZNrHSLFtr8ymPjjt500M3q6pMUwdzJuT1kIR6qHZv3A7a8HPZTdL+BkGRxwiUv
         IqoA==
X-Gm-Message-State: AOAM531o37KZI9zeyQfm01SMCdPa9NjDV/1350WpfQEUWSQtjkJj7txE
        bixNO5u6MCOwlBhXMWaP/LM/GMiYj+LQf0kAB44EbwB+IwmaAzUSznGfm+R6fJDanfX0U2UkRKS
        DhWIRMzSXxafgSBpMNkDx8WMTHkYAYXoUSOkXxWI=
X-Received: by 2002:aa7:d7c1:: with SMTP id e1mr23476345eds.251.1627977663348;
        Tue, 03 Aug 2021 01:01:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwj/qP1Q41wUE0MaM16YNSLHgwdPMzFI76UL7qB1dSy57AzxsYBf1Q0TLraQrcJ7Xxi0YM1oQ==
X-Received: by 2002:aa7:d7c1:: with SMTP id e1mr23476321eds.251.1627977663186;
        Tue, 03 Aug 2021 01:01:03 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.43.172])
        by smtp.gmail.com with ESMTPSA id c7sm7763197edn.45.2021.08.03.01.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 01:01:02 -0700 (PDT)
Subject: Re: [PATCH v5 3/5] dt-bindings: vendor-prefixes: Add another prefix
 for Mediatek Co.
To:     Tinghan Shen <tinghan.shen@mediatek.com>, ohad@wizery.com,
        bjorn.andersson@linaro.org, mathieu.poirier@linaro.org,
        robh+dt@kernel.org, matthias.bgg@gmail.com, shawnguo@kernel.org,
        sam@ravnborg.org, linux@rempel-privat.de, daniel@0x0f.com,
        Max.Merchel@tq-group.com, geert+renesas@glider.be,
        fanghao11@huawei.com
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210803075922.11611-1-tinghan.shen@mediatek.com>
 <20210803075922.11611-4-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <f084bd57-c6df-cade-fefd-217897caf88e@canonical.com>
Date:   Tue, 3 Aug 2021 10:01:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210803075922.11611-4-tinghan.shen@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/08/2021 09:59, Tinghan Shen wrote:
> Add document binding for mediatek.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 07fb0d25fc15..c4252cd570b0 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -760,6 +760,8 @@ patternProperties:
>      description: MStar Semiconductor, Inc. (acquired by MediaTek Inc.)
>    "^mti,.*":
>      description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
> +  "^mtk,.*":
> +    description: MediaTek Inc.

NAK, you already have one MediaTek Inc. I doubt these are different
companies...


Best regards,
Krzysztof
