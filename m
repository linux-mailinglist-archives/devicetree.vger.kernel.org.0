Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 387EF571B4A
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 15:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232760AbiGLNbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 09:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232752AbiGLNbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 09:31:04 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84F41B5D21
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 06:31:01 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id bf9so13912414lfb.13
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 06:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IXccb145xbl9bZhb8fRE6pZvNgKdIysmieigHeIfmZo=;
        b=K+cxKClQT+nal2Ss/wSUwNnUruBN00qnV6lGjcHmhKsfL4g1trgVLYIAwWkJpMJ/jb
         I9RHCUfxN8RN+wqPu13MlDp9p7p5OiQEUDOMS17jHgLTjcPzOsAdINmszGICLTYx8AAs
         9e0onp1pHq69byA37r+scqmt8RukZqPUKFKZnWnxJQzum0Od/eSryRJJXsCxQgHVqaw+
         93IzQQENvGMVzpffb3bJvK5bMi376UDDnc9zd9cwUl/TZKfQtBLpuElEoqjhtY0TMw4y
         riWZusM8mkxeEwWhdZU9qVrfTF3tDXJO80PH5xBUvDe2cz2EKARRLCeNre0yFkZBvPHZ
         MlEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IXccb145xbl9bZhb8fRE6pZvNgKdIysmieigHeIfmZo=;
        b=BAP7ymJ3ttNSd4in49kAZxEYxnunBebN7+ytOLsAwefBGKblNXL7mYwV/Pnxs/1etD
         SNJarxe5xWMoW0aLE0hO80FLW9TJXXtA+yvNWTN1nezc6s2wwf1tDm/WOBP5DJKRaHyr
         zyabGSTAByuttWMyp4gtCA2uhNwOjUbVan9bR+mZ6mgirl+WIavNgdnUITuIBq/IR81W
         03Y6ZAxpuD9Cuh5P1RFBKiiH2V9KPU/CDwONl4vjH5IP9y8vB64nhH+ODVChNh8x6bmB
         W0yVYuRkt2bBsW1CoFbW/HeeC6y6r+hdxE908lqTjQH9qbkpubntul3+ExQXFlihYa5/
         ZMHA==
X-Gm-Message-State: AJIora9M6Wj8/1S6EyICD+dog3UxhqL3uV7T+REDiu3j8OyMwc2cqIfA
        xkrYcTwLA4ZAeuaAfhCCYujghQ==
X-Google-Smtp-Source: AGRyM1vMk2is/L2k4CTCicsaSu7ob3Bblj9cJOjz7rVfS0kLH+Eqq7Q53d+A5Jqs36ZWxIETg1pngQ==
X-Received: by 2002:a05:6512:1381:b0:489:cd0b:3a03 with SMTP id p1-20020a056512138100b00489cd0b3a03mr10959222lfa.583.1657632659774;
        Tue, 12 Jul 2022 06:30:59 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f19-20020ac25333000000b00478fe690207sm2180771lfh.286.2022.07.12.06.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 06:30:59 -0700 (PDT)
Message-ID: <f7eee4e8-05fa-4c83-9168-64e5ea4c510f@linaro.org>
Date:   Tue, 12 Jul 2022 15:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v1 08/16] arm64: dts: mt8195: Add power domains controller
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     iommu@lists.linux-foundation.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220704100028.19932-1-tinghan.shen@mediatek.com>
 <20220704100028.19932-9-tinghan.shen@mediatek.com>
 <3b65405d-167f-a0c7-d15e-5da6f08d99b3@linaro.org>
 <eec6aee5cd023fff6d986882db0330e1ab85a59d.camel@mediatek.com>
 <0301ebc6-1222-e813-f237-f14ad8444940@linaro.org>
 <b6523c64-dfe2-13b0-db60-fb4f53ed1e31@collabora.com>
 <1eb212ea-c5a9-b06f-606f-1271ac52adf9@linaro.org>
 <c243bc9c-0862-450d-6bff-00ec5591e791@collabora.com>
 <d8bc3b20-45db-a869-2aff-9cda8e0fca92@linaro.org>
 <83162e4f-a31f-79cf-ba01-58b45fd4f62e@collabora.com>
 <410cf9aa-471b-644c-9540-9bc0b89b8fd9@linaro.org>
 <0ca0e46d-0685-8228-4d26-c6cf20d7a9fc@collabora.com>
 <4795d9a8-3a57-ffe5-c0e5-9877860f5107@linaro.org>
 <4810356c-29bb-7732-c180-943c5a41b49a@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4810356c-29bb-7732-c180-943c5a41b49a@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 15:03, AngeloGioacchino Del Regno wrote:
>> and you keep telling me that it is a power domain provider and MFD and
>> something more.
>>
>> Anyway neither syscon nor simple-mfd can be without specific compatible.
>>
> 
> I believe, at this point, that adding a compatible like "mediatek,scpsys" in
> mfd/syscon.yaml should do?

Yes. Or dedicated file, like other mediatek syscons.


Best regards,
Krzysztof
