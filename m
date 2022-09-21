Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB2405BF742
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbiIUHLt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbiIUHLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:11:17 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F10E813E86
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:11:15 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a8so7629459lff.13
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wiXy5ZIaldVPRdkC0O1dXknFlmQtPsl+IQZh9q4Cgmo=;
        b=BNWeozDy1dKboNi6UK9bXjuRFkSY55U3BDN4+3Qq9dKjQPYnJxKQzyMV9NS9gbfT0Z
         7hjI0sUzfTo8iAhQ/mvIcUwuPsG5nfoDQ3bJXuUH7zUymrDAwlo3qF25z5yxuhnpkfQv
         sz+JtUst9JhzKCNnpVaKaVZulJT8eVGh7IRKbJHjv2TZYOq7vK8lokKDyLFcDduKwBG5
         gwznPs7AshqOMlIcUut0mCwUxZ+91gDbwVCrxaPq1JK6XH+zwfxhjXfXEO5HnoPbk73X
         gc+ouQVeSVZ22tggHhOAtQqHHfxbsrp0m0ch5KqGK4RvqfvlZbFaSI4sv7nFlwKv2HuI
         3SfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wiXy5ZIaldVPRdkC0O1dXknFlmQtPsl+IQZh9q4Cgmo=;
        b=LuGowC810wKZFVm+uvHWcSpnhT26FEzi04xOXBXfF5U5fZVGzGwItOp7c5h1yHEs3D
         tMbM4Mbbd/O9l5Un2F3QDGFYvx/mH1daAl/DsMc9d7W0O5xWD/78s/0aHwNSYTgOyZuO
         mqp/b1z0lzRf9TAcF3Lf7j1fdkY82AzXX4T2LDvwXs5nCCUXdW5494bUOJYluP5dQ6BH
         kR3j/HVxz+KKcJSYRltfexDpx5Nakyvrryha1XIDIFHLJqqmKo56zoiQk8kRzQFvr9ay
         CcRxDaXDflJhtKMej7ytqzR+b+PzJh71T53gMT9B0nXk1HxfAKtz3aobwgF4aznn9NZ1
         VClQ==
X-Gm-Message-State: ACrzQf0yvQ2OhNRjW6r85bZ6msMqTSrC/IMOwTXmMacNBn5tB8OKaDP/
        ehnF7zJ4+u3FTxILxqDJZAfUbQ==
X-Google-Smtp-Source: AMsMyM6S3qg1XzFgFQZ4Arx5bMNo57o7Uhkt5ibKjTwMAKsPl7xPucNJNMl7abyEQ7e0sR6YFidK7w==
X-Received: by 2002:a05:6512:20d2:b0:497:a29f:cada with SMTP id u18-20020a05651220d200b00497a29fcadamr9075345lfr.45.1663744274292;
        Wed, 21 Sep 2022 00:11:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w16-20020a05651c119000b0026c18aa8587sm309565ljo.75.2022.09.21.00.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:11:13 -0700 (PDT)
Message-ID: <1860b0ff-5544-5e74-ccfc-beda18824927@linaro.org>
Date:   Wed, 21 Sep 2022 09:11:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/4] dt-bindings: pinctrl: Combine MediaTek MT67xx pinctrl
 binding docs
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Yassine Oudjana <yassine.oudjana@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220919170115.94873-1-y.oudjana@protonmail.com>
 <20220919170115.94873-2-y.oudjana@protonmail.com>
 <4c425cf8-f9ca-969c-f8ed-688410bfb922@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4c425cf8-f9ca-969c-f8ed-688410bfb922@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 10:06, AngeloGioacchino Del Regno wrote:
> Il 19/09/22 19:01, Yassine Oudjana ha scritto:
>> From: Yassine Oudjana <y.oudjana@protonmail.com>
>>
>> Documents for MT6779, MT6795 and MT6797 that currently exist share
>> most properties, and each one has slightly differently worded
>> descriptions for those properties. Combine all three documents into
>> one common document for all MT67xx SoC pin controllers, picking a few
>> parts from each and accounting for differences such as items in reg
>> and reg-names properties. Also document the MT6765 pin controller
>> which currently has a driver but no DT binding documentation. It should
>> be possible to also include bindings for MT8183 and MT8188, but these
>> have some additional properties that might complicate things a bit,
>> so they are left alone for now.
>>
>> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
>> ---
>>   .../pinctrl/mediatek,mt6779-pinctrl.yaml      | 207 ------------------
>>   .../pinctrl/mediatek,mt6797-pinctrl.yaml      | 176 ---------------
>>   ...6795.yaml => mediatek,mt67xx-pinctrl.yaml} | 181 +++++++++++----
> 
> Hello Yassine,
> nice cleanup over here!
> 
> There's a catch though: as far as I know, wildcards are not permitted... so you
> should, at this point, merge all of these in mediatek,mt6779-pinctrl.yaml instead.
> 
> Before jumping to that, though... Krzysztof, can you please confirm (or deny)?

Wildcards are not allowed in compatibles. In filename wildcards or
family name could work if they are really going to match the devices. I
have doubts here. 67xx is quite a lot of different devices, so I am not
sure this will cover them all.

I would prefer one name (oldest SoC or lowest number).

Best regards,
Krzysztof
