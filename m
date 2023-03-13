Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBF466B7045
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 08:49:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbjCMHtT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 03:49:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbjCMHtS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 03:49:18 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D713624488
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:49:15 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id cn21so14686833edb.0
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678693754;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5jZ1IbIr7Zjo01eYTloNIdK6OVrxZIVge0vl1sSC9YE=;
        b=lKQNsIjMsx98tsdY+JngqLf9AyXzUGO8cqatxvtWVsTbR6r5nN6/uDXGfra34R2yPr
         ExTyaEaXfbiC/Xfp4AiADZzIE93nZC5NDFQOPN0VHCJ3dX/bg5YjXEPps/gybYY2dj8s
         6OXDVt479ojVZZNpBrWUDG1HZ1I72OyDDaxMLSTFqWuFxs90y2/xhpgFRwq5Xx0heTF9
         hBAeF3csfwIwOnl8ASiROb758XRrSNEZ9aB7xCmUyZUnbxNat50vBQ5pK6pVOWyTLqVd
         aVMPazbdovrizIA0nVvpAq/m+GqEEzLU7l/0zpRmcW0mXBH/HWjVZ3nngur8fcNdmiTz
         Z7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678693754;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5jZ1IbIr7Zjo01eYTloNIdK6OVrxZIVge0vl1sSC9YE=;
        b=smhEzpE1o8RH1NI/Imvop2nEgYy8Ic5FuxUOQFU+IcfmPS8ODLn1d910IwVlkQmjz4
         c00KGpEw2Nw1TD+UQZWnGXmyNSDs6jPN+vJWPCIf3a78AvaaQixaoottFS3AFNYKs9zI
         ydVu2fVsbLYl6n9GhWoYz0d4SYdukvG3n2ybxxugk8gxVqfOgQNBGlYHkyUvwU45iVHI
         0TryaI61eyDqv2QwGQzbIvC3KLyNn276JbEvRfjSpA3XHKUXfNo1rovPur6hAQ5Ffwhj
         aPI5rwXnjbqZL3NeM4QlsfAXqqnb14HlS58rnkaNwzMTpu0kH3eKvzZUJ8lzYBp0Apgo
         ln9Q==
X-Gm-Message-State: AO0yUKWuB3t2h/cU3kCYmF/dpH6rgpr3o05A7EXoyIn1KtphwZa5Cbmd
        AXsWsPNl3HFelGmTt7fBJO9oRg==
X-Google-Smtp-Source: AK7set/tvTnTSzZy6q1lJj4ECVHedAf0H9uyNqrDdZ/WinBo8XXlu77jRfU2myjfTAFP3kuAx13E3w==
X-Received: by 2002:a17:906:304a:b0:8ab:4c4:d0f6 with SMTP id d10-20020a170906304a00b008ab04c4d0f6mr30733533ejd.56.1678693754381;
        Mon, 13 Mar 2023 00:49:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f052:f15:3f90:fcb3? ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id p8-20020a170906140800b008d044ede804sm3083562ejc.163.2023.03.13.00.49.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 00:49:14 -0700 (PDT)
Message-ID: <ed2dc73d-d4cc-95fc-cd8b-52d37ebf149a@linaro.org>
Date:   Mon, 13 Mar 2023 08:49:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH RESEND v4] dt-bindings: pwm: Convert Amlogic Meson PWM
 binding
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-pwm@vger.kernel.org,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <3edc5ba6-bf3d-e45b-377a-9e7ece7642a7@gmail.com>
 <20230310181135.kiajexld3v655tph@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310181135.kiajexld3v655tph@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2023 19:11, Uwe Kleine-König wrote:
> On Mon, Feb 20, 2023 at 10:19:30PM +0100, Heiner Kallweit wrote:
>> Convert Amlogic Meson PWM binding to yaml.
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>> Seems patch got lost over the question who takes it.
>> Please apply through the pwm tree.
> 
> Hmm, I found
> https://lore.kernel.org/linux-pwm/aaa73903-1837-d9c8-8c45-54b4473fd548@gmail.com
> which had no Reviewed-by tag where Krzysztof Kozlowski replied writing:
> "You got here a tag and my comment was about minor issue, so please keep
> that tag." I didn't find a thread where such a tag was given, though. I
> only found a review reply on v3 where Krzysztof requested a change (and
> didn't provide a tag).
> 
> The Reviewed-by tag for Rob probably originates from
> https://lore.kernel.org/linux-pwm/20230130212121.GA3468100-robh@kernel.org/.

Yes, Rob provided that tag. Since it is included here, looks fine.

> 
> And there is another variant where this patch was part of a series at
> https://lore.kernel.org/linux-pwm/5b83767e-c53d-316f-df10-45a39dbd9c88@gmail.com
> where it got an ack from me which wasn't included here.
> 
> To fix this:
> 
> Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> but please note that you can save some scarce maintainer time if you're
> more careful here.

Best regards,
Krzysztof

