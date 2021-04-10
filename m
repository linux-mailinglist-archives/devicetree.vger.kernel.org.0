Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A69735AD56
	for <lists+devicetree@lfdr.de>; Sat, 10 Apr 2021 14:40:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234334AbhDJMkc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Apr 2021 08:40:32 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:45749 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234262AbhDJMka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Apr 2021 08:40:30 -0400
Received: from mail-ed1-f71.google.com ([209.85.208.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lVCuL-0002YR-As
        for devicetree@vger.kernel.org; Sat, 10 Apr 2021 12:40:13 +0000
Received: by mail-ed1-f71.google.com with SMTP id j18so584296edv.6
        for <devicetree@vger.kernel.org>; Sat, 10 Apr 2021 05:40:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k8kbv7tLUPin7vEZz6Y8S8Ho2i9EHLVgMoQhgUpPZTc=;
        b=azRiUEYS9qXWjzZnxGnZ5Ji7hUeA4jLzOlPkPAmk1MjXs/bgc/UbZWAyt1pzXrQ0bz
         m9tqNL/l1iETsOmFemwD78KmVGRbFKa07nrMzS/BcVCbNwTAUws07SkzlI533gMDjC0l
         86aRKLw2pNjJiiRUprdwRVzAl6ki6wywQXaH9JCyWD6BsXGSYc6NUQpCMkqQUBw4/BS/
         0QQPro4e1KOtFPryo46K4T5cC8ef/+iNrcEmgW5iFlyFaHq/a+oclKmCiHqjCJm7iI7R
         C6WgRcfDac3555dzll0M+GTQ0efapLFKdvviFzrPmoRgo9TmeQj964brPVzU9ZL4Qw8M
         36PQ==
X-Gm-Message-State: AOAM5335Q4DgyEZu4xq2yNE2KS1Nm6I6hDTUq0O7PjUuylCQYraVlTB1
        +MxCIyUgg0tXDpNho6Awh/MM2c6nR9bOOXdI5evChmciiZREUJuskCwhOIsx1huyynKTN0FjY5F
        8f63D8uHTy6Q1YSqRhBtg8GRuvwpIpYn0CYUh1Bw=
X-Received: by 2002:a05:6402:148a:: with SMTP id e10mr21482440edv.377.1618058413095;
        Sat, 10 Apr 2021 05:40:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnEqzqI9N9YfHRefBuhHMer8IAZFUeA1p/w31AAx1VON2hHKiqTW68RFjQfE3PCZ9Bpj9RyA==
X-Received: by 2002:a05:6402:148a:: with SMTP id e10mr21482422edv.377.1618058412954;
        Sat, 10 Apr 2021 05:40:12 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id d6sm3149960edr.21.2021.04.10.05.40.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 05:40:12 -0700 (PDT)
Subject: Re: [PATCH v5 04/16] memory: mtk-smi: Add device-link between
 smi-larb and smi-common
To:     Yong Wu <yong.wu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Evan Green <evgreen@chromium.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Tomasz Figa <tfiga@chromium.org>,
        Will Deacon <will.deacon@arm.com>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, youlin.pei@mediatek.com,
        Nicolas Boichat <drinkcat@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>, anan.sun@mediatek.com,
        chao.hao@mediatek.com, ming-fan.chen@mediatek.com,
        yi.kuo@mediatek.com, eizan@chromium.org, acourbot@chromium.org
References: <20210410091128.31823-1-yong.wu@mediatek.com>
 <20210410091128.31823-5-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <ea7ed30f-050d-2d38-7c61-1e0c192f6ded@canonical.com>
Date:   Sat, 10 Apr 2021 14:40:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210410091128.31823-5-yong.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2021 11:11, Yong Wu wrote:
> Normally, If the smi-larb HW need work, we should enable the smi-common
> HW power and clock firstly.
> This patch adds device-link between the smi-larb dev and the smi-common
> dev. then If pm_runtime_get_sync(smi-larb-dev), the pm_runtime_get_sync
> (smi-common-dev) will be called automatically.
> 
> Also, Add DL_FLAG_STATELESS to avoid the smi-common clocks be gated when
> probe.
> 
> CC: Matthias Brugger <matthias.bgg@gmail.com>
> Suggested-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/memory/mtk-smi.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)

I understood this is a dependency for other patches, so:
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

If I am wrong and I can take it via memory tree, let me know.

Best regards,
Krzysztof
