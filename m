Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE2CC588B6B
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 13:39:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237580AbiHCLjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 07:39:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236055AbiHCLjS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 07:39:18 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE4E1054C
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 04:39:17 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id m22so14181041lfl.9
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 04:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8MZZ0oEY6nNZhBhfKV+zcplONcJQxnevzhBhdZaccrc=;
        b=lc7tQTTr/ygXNfabycR/8BIAJl35h/h1QxP3VWgaT51MYPgilLT5fdDSxNr7wp77jz
         FxnkYfIvIV4kDEYhNTDSw2GZtv5gB0bjEvxm2vZayy7Kwa4baFHsLGXt1KH/U/j44HJG
         7/G38RGqfxAYObs2clampTmtesdEtJYcsKQitlvAX+0rN5aZZoKbDN7gPG1N8/kcbOPZ
         cs988ckLNZqu7Wd0XNP0/ZznhThxEYBSWuyboR6LdgwZxC4x7YBew1drJ0TsxWU5DM2z
         TGplrcTqBoebVgVxVYj+vqTFsDpZt2f+PfqQ1Rllo45FG75Kp2/fqfBx5C1TNUxXkIZz
         ccZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8MZZ0oEY6nNZhBhfKV+zcplONcJQxnevzhBhdZaccrc=;
        b=bbIMhegjllFZ0npdD9avCh4J5fKThz2G259rXWrEgwMng6UUn+hS2TmWCaReHeGuxF
         2yrB0INDL+ZlDKrUJVam+T/kkw4AnGVyVT6vOctdygqRo1nHHVnTrbjndkJ4b+HEanLP
         is81tGYrkabctmNAqjRKnwWcctY+3+8YFk35HnVmMfDBWTaTMQCwE3uXUmZKbsFAn7kZ
         VkDZT67vICaxBM4GDeL8bIczdUTUyc3+0BrUn9Y+9tv6KFWqGf01qk3VDPv9TSFw8JqY
         4KxSSie3e7+6Ne21Nk4jFSB/93N1TIdV8av2NzilWBQYEwIox+/qKEu7fSdsdGviVUe3
         R2nQ==
X-Gm-Message-State: ACgBeo3XCTo2asyK8e18qjly+7i8zaO1yoMqk+GSh1Wp51hE3dhtk7iF
        p0NGfPPKDQUhPQ9WD6SwYI+5zA==
X-Google-Smtp-Source: AA6agR77sn308/0hr2la0OlOPTBlCJeQ5gjLPt6ejGMTr23q/Jcaj3ga/UVaZwxx4c12GNQ+4uLWpw==
X-Received: by 2002:a05:6512:239e:b0:48b:287d:cbd3 with SMTP id c30-20020a056512239e00b0048b287dcbd3mr218702lfv.409.1659526754252;
        Wed, 03 Aug 2022 04:39:14 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id e12-20020a05651c038c00b0025e436214c8sm1605311ljp.78.2022.08.03.04.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 04:39:13 -0700 (PDT)
Message-ID: <9db34922-f3e1-1536-59ce-c95d364ffe2c@linaro.org>
Date:   Wed, 3 Aug 2022 13:39:11 +0200
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
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
 <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
 <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
 <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
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

On 03/08/2022 13:30, Jagan Teki wrote:
> On Wed, 3 Aug 2022 at 16:57, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 03/08/2022 12:46, Jagan Teki wrote:
>>> On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 03/08/2022 12:24, Jagan Teki wrote:
>>>>>> Vendor in filename is needed.
>>>>>
>>>>> Yes this follows how similar rockchip vendor notation
>>>>>
>>>>> $ ls include/dt-bindings/power/rk3* -l
>>>>>  include/dt-bindings/power/rk3036-power.h
>>>>>  include/dt-bindings/power/rk3066-power.h
>>>>>  include/dt-bindings/power/rk3128-power.h
>>>>>  include/dt-bindings/power/rk3188-power.h
>>>>>  include/dt-bindings/power/rk3228-power.h
>>>>>  include/dt-bindings/power/rk3288-power.h
>>>>>  include/dt-bindings/power/rk3328-power.h
>>>>>  include/dt-bindings/power/rk3366-power.h
>>>>>  include/dt-bindings/power/rk3368-power.h
>>>>>  include/dt-bindings/power/rk3399-power.h
>>>>>  include/dt-bindings/power/rk3568-power.h
>>>>
>>>>
>>>> So when are we going to switch to vendor,device pattern if you keep
>>>> adding files with wrong naming?
>>>
>>> Do you mean the above files are following the wrong naming pattern?
>>
>> Yes, or at least discouraged naming. The recommended naming which I hope
>> all new files will follow are vendor,device.h.
> 
> rockchip-rv1126-power.h
> 
> Will this be Okay?

After vendor prefix goes coma, so rockchip,rv1126-power.h


Best regards,
Krzysztof
