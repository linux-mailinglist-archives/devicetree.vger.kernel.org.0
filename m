Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEBEA6B2AD4
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 17:33:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbjCIQdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 11:33:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230197AbjCIQcr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 11:32:47 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE2C61111F1
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 08:24:42 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id cy23so9164369edb.12
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 08:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678379079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wMVLExQ42L20L4xYy1JUtAuw9Mp+aRJsZOfanrteLI8=;
        b=riGo7ExdhoWfE8P/bq4A17P5AfwIi5ZTgibEWYtzCF24aOzBlyHtunCJcEBH1Zqexw
         o5sYgRlKEjCBvoZd4rdJbb3ZT6ihh5RwGuQpoSfTGGuT3Tu9KG3ZhTSU2xYKm5HTBRBv
         A2JgsG7tWhbEQF7PVQ5vAYiNZSioFbRJLQnMFPdTwVGA3m+wO75TY7z2CXyuLtKUdfkF
         YMGFQzgLLiPoY04iFSbhOWF0HnUlU6S/vC8gBY/fut5xqkXizaauXnhjEjScMmxOkhSt
         jpCGr3T1cUY/VT+Csa5FrxWQc/IIOZ4iTBdEKDfcXDGlz0o80c6bvQDS47HbPiSX78Yc
         UlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678379079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wMVLExQ42L20L4xYy1JUtAuw9Mp+aRJsZOfanrteLI8=;
        b=gxqj7C0iIVbN/3OhaAEGR7lF9Oe/uRS/DUTEdXyyAAK1wW/hNucn/gRiKENZuG7iYx
         GYPahqc+4xooX8Peynwp29jMbrbUNuAJ0ZLbRbf6xHD/5DhNVdGmZ8PXy5XDi5CG/CJy
         H9uXxJCWC3gWnhIyiUyM+YHn1EzHO4VpsZI59ZLLy7gz8/GAXGwT75gGz52FrrHSbqPE
         HoNbY2V4HMz2N4JUiVSgrH5PLJZLSr4vpYfGm3Nk4gQgCznOHtVHRFZ48+y4PMgz7Jwj
         ydTlcS+ZreneohYqk88cUOMNae6tnPrLDecRiZB+lUPU5nf+0WIr2T8fq0u6gr1GC7nm
         jgVg==
X-Gm-Message-State: AO0yUKURi4h0waEP7MX89Cfjn5HC0CAxs1WEiT9scw0GVPu7+f/Yx2XJ
        OaLyZUWofmzfuHV06r9S/1prGRgiZXfXdVE0nYs=
X-Google-Smtp-Source: AK7set+BFmVcNncpYinJE1cY1NcOfQOKS0lrhiU+HHshTtrwtD/pKjjzOJ5zdRz5SHvFyEQO2MbtLw==
X-Received: by 2002:a17:906:b050:b0:8b1:e791:faef with SMTP id bj16-20020a170906b05000b008b1e791faefmr21698048ejb.67.1678378267064;
        Thu, 09 Mar 2023 08:11:07 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:7ee2:e73e:802e:45c1? ([2a02:810d:15c0:828:7ee2:e73e:802e:45c1])
        by smtp.gmail.com with ESMTPSA id m30-20020a50d7de000000b004c13fe8fabfsm9803598edj.84.2023.03.09.08.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 08:11:06 -0800 (PST)
Message-ID: <42b75673-4645-d04f-86ac-91e4b6e373a8@linaro.org>
Date:   Thu, 9 Mar 2023 17:11:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom: lpass-lpi: correct
 description of second reg
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230302155255.857065-1-krzysztof.kozlowski@linaro.org>
 <CACRpkdbe=sHG9KVaGrbEaFoVbMY-2=r2X4WkcbNhCfZ9KOw1sQ@mail.gmail.com>
 <08aa9325-ed36-250c-d4d6-de6af1e82de5@linaro.org>
 <CACRpkdb0sxgy_0NUQg06i+1QwZM9Yqx2h1gD_hQcNrZ6BT9+YQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CACRpkdb0sxgy_0NUQg06i+1QwZM9Yqx2h1gD_hQcNrZ6BT9+YQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 14:46, Linus Walleij wrote:
>> Please grab it. I think I cleaned up Qualcomm pinctrl bindings from
>> technical debt, thus no more work for me!
> 
> OK patch applied!
> 
> Also: good job! The Qualcomm bindings look very nice now.
> 
> But what about these oldskool bindings?
> $ ls Documentation/devicetree/bindings/pinctrl/qcom,*.txt
> Documentation/devicetree/bindings/pinctrl/qcom,apq8064-pinctrl.txt
> Documentation/devicetree/bindings/pinctrl/qcom,ipq4019-pinctrl.txt
> Documentation/devicetree/bindings/pinctrl/qcom,apq8084-pinctrl.txt
> Documentation/devicetree/bindings/pinctrl/qcom,ipq8064-pinctrl.txt

Low priority for me, but I will get to them at some point :)

Best regards,
Krzysztof

