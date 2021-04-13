Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 746C335E0E3
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 16:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237401AbhDMOFB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 10:05:01 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:56442 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237589AbhDMOEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 10:04:53 -0400
Received: from mail-ed1-f69.google.com ([209.85.208.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lWJea-0001PX-9q
        for devicetree@vger.kernel.org; Tue, 13 Apr 2021 14:04:32 +0000
Received: by mail-ed1-f69.google.com with SMTP id l9-20020a0564021249b02903827849a98dso1321857edw.6
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 07:04:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1zoVtByllhosC8xnCO3YIKw2vthWTwQhfS+DihX0pa4=;
        b=YXw9HQWXvRWBTGOFAj6TaR+6mwFW0ccV0Bco6Tq/roo9wso6LLyH3Qr8EVgSIp318D
         ij2kKKenxxar9vzD8nT7rHii/rnXstuFiQ3kD5pBbbm4gKLpFjFyUf/3yv4SNhO4PEBO
         rp3zeRILIk6aBrzm/A2XqI6fpYS2qLu0Y41lZdTqrjguqtUeBy7iGZ7NNXVxobQjLFRl
         bPXX7sor3QS5ogwVDYn/0j3fQsPqeRFQfQ3aeDeONDP3lAxK8P/fA3fVGy+TujmExioH
         yqBEczSe8/suJ0ApVhhgUwXxe9l7/w/j8H4e4/WJfR6DYGXcdZtoTAkNDhcZ1PBOz5ex
         9RZQ==
X-Gm-Message-State: AOAM532dFm0ZmMIL/5woVYSdHu/Avt/TDdno+orenVPGPwQRiJvwkrwq
        KD79Q4/EmefOvXfn4rH3NW0AoIxj4WhPZrFZcnpBaJRKsIJieMILpBC4GKQ4ggQgPOEhzb7sk+B
        P/XD8tcfnV+NuUTmY29F0GbYI4TpA165tRzoDcVQ=
X-Received: by 2002:a05:6402:142:: with SMTP id s2mr34982249edu.2.1618322671987;
        Tue, 13 Apr 2021 07:04:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytwQzQE5BkozQ2VOreQSdkoAGEAaqvJ0FgXGTACKHn/MAUy6h5uirgVHlAcudl2n8kdm1F6w==
X-Received: by 2002:a05:6402:142:: with SMTP id s2mr34982231edu.2.1618322671878;
        Tue, 13 Apr 2021 07:04:31 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id n17sm9379838edq.32.2021.04.13.07.04.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 07:04:31 -0700 (PDT)
Subject: Re: [PATCH v5 14/16] memory: mtk-smi: Get rid of mtk_smi_larb_get/put
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
 <20210410091128.31823-15-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <b015fd4a-f05b-5dc7-f23e-e517d40aeb21@canonical.com>
Date:   Tue, 13 Apr 2021 16:04:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210410091128.31823-15-yong.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2021 11:11, Yong Wu wrote:
> After adding device_link between the iommu consumer and smi-larb,
> the pm_runtime_get(_sync) of smi-larb and smi-common will be called
> automatically. we can get rid of mtk_smi_larb_get/put.
> 
> CC: Matthias Brugger <matthias.bgg@gmail.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  drivers/memory/mtk-smi.c   | 14 --------------
>  include/soc/mediatek/smi.h | 20 --------------------
>  2 files changed, 34 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
