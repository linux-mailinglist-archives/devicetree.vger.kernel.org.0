Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A34961E193
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 11:28:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbiKFK2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 05:28:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbiKFK2D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 05:28:03 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D428D64D4
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 02:28:01 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id g7so13128889lfv.5
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 02:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DI2wXka1VPadT80guBcm7zD76/m9DkDi2ofoECszAB4=;
        b=jhgcp1ofKi8CJNeepvC5AR0U4tw6fExjpPcT83RAe07y/NTity7qnNXs0wcWITUjfp
         WP4uRJCrqecyhOzyjKyxCmhiElB98snuqxq0ApmCHpkR7/XYF85ZZbUge05N1z/yvsQ/
         WwRgcfs1G5U4oQ/zPZqImVS8AmcEQI1GH/nF7MmZXaiS1hPEiZvgQ9Md/Omg/mJwhQ0q
         Jw8Q8E9g9uJeCvr41nMbQwCIGNarqEAM2aPs5dLnq8lP+dpFK1cOnhUQ3Iuj+jjVzA+G
         w4t/phl0rKWlFtjA2RksIPxr9MpharsOvhY71fJkkwpVyLEpSZbIwTPpljGgEqHydXsE
         1JUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DI2wXka1VPadT80guBcm7zD76/m9DkDi2ofoECszAB4=;
        b=FTU6v00NQU3cL+G4hC0HFHBsJRVwd60REPDM2sv8G7m7TAURZvcIY4mXhjyqMOJMge
         uUm47kKgYvsoc+w0LqH+FQF8wPPxAi1TStBTMRw97Amo9ykQew8zYJ2VLK/RTbrk7nwQ
         02ZMakXcYloV5Qv1j3lDGmwqJZqiSVPWMifI2I+ySmoO1PUVlUmihH7VnjoETTF99U71
         CpoH7s3tZpqIFAUMiW8tP+FMby1dJ9up9NGR9sFA6GqbKzd5lJwVjuLwWNsArI5l6Bzi
         26/t2k3GOxsEHoRsLoq3D64Wmzt4jt/GVjDKatubkMV5B3xmi4VxRjwE/3Z/3lHeyeje
         KruQ==
X-Gm-Message-State: ACrzQf0FYLV9GdFDdcEN1rcQ+/AhHiusNeMlWIUGCIzj/s2bmVJpZ8Hk
        O623S7pyGAOj4ltFGd24AENCqQ==
X-Google-Smtp-Source: AMsMyM6iECEVS+TMPYiJoxK6Wgqo3Wojp65hLGJ1ilpUTfDe6RaCnWsjg7cygqvuDwjeN9z/l3JOiw==
X-Received: by 2002:a05:6512:1156:b0:4a2:7e73:1f28 with SMTP id m22-20020a056512115600b004a27e731f28mr17946406lfg.38.1667730480138;
        Sun, 06 Nov 2022 02:28:00 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id x18-20020a0565123f9200b004972b0bb426sm632697lfa.257.2022.11.06.02.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 02:27:59 -0800 (PST)
Message-ID: <bdb46b7c-6e08-26cf-491d-ca68d36f29af@linaro.org>
Date:   Sun, 6 Nov 2022 11:27:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/2] dt-bindings: gce: add gce header file for mt8188
Content-Language: en-US
To:     "Elvis.Wang" <Elvis.Wang@mediatek.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20221104074443.26172-1-Elvis.Wang@mediatek.com>
 <20221104074443.26172-2-Elvis.Wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104074443.26172-2-Elvis.Wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 08:44, Elvis.Wang wrote:
> From: Elvis Wang <Elvis.Wang@mediatek.com>
> 
> add gce header file to define the gce thread priority, gce subsys id,
> event and constant for mt8188.
> 
> Signed-off-by: Elvis Wang <Elvis.Wang@mediatek.com>
> ---
> Thanks for the reviews, I have removed the incorrect reviewed message.
> ---
>  include/dt-bindings/gce/mediatek,mt8188-gce.h | 966 ++++++++++++++++++
>  1 file changed, 966 insertions(+)
>  create mode 100644 include/dt-bindings/gce/mediatek,mt8188-gce.h
> 
> diff --git a/include/dt-bindings/gce/mediatek,mt8188-gce.h b/include/dt-bindings/gce/mediatek,mt8188-gce.h
> new file mode 100644
> index 000000000000..e2e2c56016a1
> --- /dev/null
> +++ b/include/dt-bindings/gce/mediatek,mt8188-gce.h


What is a "gce" subsystem or type of hardware? Why do you put headers in
"gce"?

Don't continue this pattern. Mediatek devices do not get specific folders...

Best regards,
Krzysztof

