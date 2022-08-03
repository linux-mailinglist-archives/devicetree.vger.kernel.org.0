Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 048B4588AB7
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 12:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232079AbiHCKnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 06:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235698AbiHCKnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 06:43:04 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CF8248CB
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 03:43:03 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id y23so8140664ljh.12
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 03:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y8guwFRu5Cqttb+XuOtzMQ+iyWYv+5edvz/dSBNOIpg=;
        b=LmcsdAMhL0mUMJHowkbaNxLItPQefTs8KuMWDXq1uzz4t3153ei+MhAs7InTg5l3Dv
         3AFNxfFxX0FZQvvZWP7bnlNPNBWVjLXwsTW0Mmsu+ZBEo6HImVQ7K3JnK7rbkAZJifzU
         8oiIxCrwH6fHzksUU3YzRZnE0OBjreW8c4dVWOx8IzTeDxINsSCmgsJ7ugccjHWK++hh
         toIzd6hJPkZA+F2z6nQFWh5vypwfAJ463OlvG+lpKWG0NOv9JAnNE08PDyft7sN1rtXn
         8vKtd0P5r7XQYa7+W+hwiaIvvFjgcasNpHTgRypEAc3zpnTMY1KecPcJnIJPZG512UrU
         9Kjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y8guwFRu5Cqttb+XuOtzMQ+iyWYv+5edvz/dSBNOIpg=;
        b=w30SxUNwC1SPUGelHMPrccQh0fooivuFpuxbcbUQLw6lNZISbRQ0PJmpRI6kVElZUM
         DwcLt4u1pl/8bnjoF1H1mljjPCwS/iPX71O+qDaKpcJJqqRNw2iR75lvj6murmGbySs/
         PL76GsUAYim+HImDRxF+mMqAudIJjYjTpr783aWOcFPMGfVC5YrK4Jkvny6aMRGlgpZN
         5QFqbfhJof/E9N5IWaREXCcyr47RyCk8yBwHp7krfzcfPaHIOanPMzIdGEfyf9mtllUK
         0EgRag4P8O4gjM5Hwmdk/Z4Nl4A912Dyct70QV4oM0o7mBvxCaZVk+7fjWSMN9H/RyDy
         l7Mg==
X-Gm-Message-State: AJIora+G9pDMaBdXjxINhqWswNjGOLPVyt3J1ZS3l1uPtdcO6WD8G6pt
        EADnw89gQr9vYPQMq/IZ2bTt/w==
X-Google-Smtp-Source: AGRyM1u1s3fUQuSzb8gjKq34siziQh0H8dCeEG8J+QAUMdHQm9fzWYP+GaPzsnrCbXDObriKFNUPtA==
X-Received: by 2002:a05:651c:2c1:b0:25d:79be:766a with SMTP id f1-20020a05651c02c100b0025d79be766amr7651031ljo.225.1659523382076;
        Wed, 03 Aug 2022 03:43:02 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id dt9-20020a0565122a8900b0048b23c609c9sm135352lfb.102.2022.08.03.03.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 03:43:01 -0700 (PDT)
Message-ID: <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
Date:   Wed, 3 Aug 2022 12:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
 <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
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

On 03/08/2022 12:24, Jagan Teki wrote:
>> Vendor in filename is needed.
> 
> Yes this follows how similar rockchip vendor notation
> 
> $ ls include/dt-bindings/power/rk3* -l
>  include/dt-bindings/power/rk3036-power.h
>  include/dt-bindings/power/rk3066-power.h
>  include/dt-bindings/power/rk3128-power.h
>  include/dt-bindings/power/rk3188-power.h
>  include/dt-bindings/power/rk3228-power.h
>  include/dt-bindings/power/rk3288-power.h
>  include/dt-bindings/power/rk3328-power.h
>  include/dt-bindings/power/rk3366-power.h
>  include/dt-bindings/power/rk3368-power.h
>  include/dt-bindings/power/rk3399-power.h
>  include/dt-bindings/power/rk3568-power.h


So when are we going to switch to vendor,device pattern if you keep
adding files with wrong naming?

> 
>>
>>> new file mode 100644
>>> index 000000000000..38a68e000d38
>>> --- /dev/null
>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>> @@ -0,0 +1,35 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>
>> Dual license, please, unless some copyrights are no allowing this.
> 
> Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.

OK


Best regards,
Krzysztof
