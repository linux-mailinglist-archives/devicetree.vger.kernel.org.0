Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CDE0700AF9
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 17:05:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241697AbjELPFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 11:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241733AbjELPEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 11:04:54 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 130F61FC7
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 08:04:52 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bcae898b2so17794671a12.0
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 08:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683903890; x=1686495890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Izo9VyuS3FYVOaF5kDuL/kD/h+2fgLodxAQ6aVvs7H0=;
        b=sKyoYjJI3MITFAQvCWjifmcHx6zBpuP0ztPuFznpYfThmM4g0xW4O99Wbgwehrfo6l
         ii+axgB4VFElG7ydQPiDBK1S147zQN9q5NdLomm5nadH9LrR8FvWrHOsCQp+CkAX3+4k
         FXhFb1hJR93yOwuvwtRm0qy5VdMYjP5FTlWr1OciXu4KAHGKLCWxtzDAy3g1oqSo/HTt
         ZYVdq9jk3D9bkee4kFctBMIt2TzyU/vpXhH2r4fcixZoaW0+24Yzh7W/qfIg4lhvkgTz
         iRZgZeJ36ZUn/iOJCEJFFxb06e9X1/qr357MQjoTpMTFXOuCHQBDQU0Vr3ZnThyooDUG
         1kJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683903890; x=1686495890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Izo9VyuS3FYVOaF5kDuL/kD/h+2fgLodxAQ6aVvs7H0=;
        b=eR1dt6yi4oPiIdZ2qjk0eVcYTWxOTqY9K8qQjlsxo+F1LGEEZuNyzmydJd21vHjCeG
         UkwjB3tQqwhJ2+o1ZyZbnRxlHcIhW1IIs8MiL9ZQgyODJ51lxkeiS/uem3eQUrB+SUMz
         apW17n7Uhzw+JYpots1uW46aheFwRR2IxIqVAHLx9hyZbYUwI3o5vp+12QK1c0r+nCgZ
         nMgXkEg7klxt7e6GaOd3pg+2i3vbmWsbLCx2Y+Feqyd4Upr/+xrrURBmaHOLY5WQaofm
         meVuKk0yBOZRqNwtAtwIXx/7glgnFKrydrzUbzCLNk9ABX2mPiD4qYVpFZliVlLnw6FJ
         GnBw==
X-Gm-Message-State: AC+VfDzIqD2J9a77VW5WqynnRq7smPhfz4QwMlIyJ1ttY3o7NZSUyZ4X
        ugpt8LIAQv8NlsAircFSLpMrNg==
X-Google-Smtp-Source: ACHHUZ6M194Dg8rWd+r2CKNK1pmDrJfHYbuczNjD43YKU8yr9uviJFXyK7iwoTpVM06NfGGU6TJtHA==
X-Received: by 2002:a17:907:169f:b0:96a:6723:da47 with SMTP id hc31-20020a170907169f00b0096a6723da47mr6872111ejc.43.1683903890512;
        Fri, 12 May 2023 08:04:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7ede:fc7b:2328:3883? ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id hg8-20020a1709072cc800b00932fa67b48fsm5487124ejc.183.2023.05.12.08.04.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 08:04:49 -0700 (PDT)
Message-ID: <67a2f8d6-104b-e7dd-d1b6-3791d5298284@linaro.org>
Date:   Fri, 12 May 2023 17:04:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH RFC 3/4] arm64: dts: qcom: sm6350: add uart1 node
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Balakrishna Godavarthi <bgodavar@codeaurora.org>,
        Rocky Liao <rjliao@codeaurora.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230421-fp4-bluetooth-v1-0-0430e3a7e0a2@fairphone.com>
 <20230421-fp4-bluetooth-v1-3-0430e3a7e0a2@fairphone.com>
 <8f312ded-8456-eced-85cc-0ae32a0c8bba@linaro.org>
 <CSKDDFPXC6FD.1TAU3XXOSGA0K@otso>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CSKDDFPXC6FD.1TAU3XXOSGA0K@otso>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 16:30, Luca Weiss wrote:
> On Sun Apr 23, 2023 at 12:51 PM CEST, Krzysztof Kozlowski wrote:
>> On 21/04/2023 16:11, Luca Weiss wrote:
>>> Add the node describing uart1 incl. opp table and pinctrl.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 63 ++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 63 insertions(+)
>>
>> Please do not send DTS patches for net-next. DTS must go via Qualcomm
>> SoC. Split the series and mention where is the bindings change in DTS
>> patchset.
> 
> Sorry, just saw now after already sending v2.
> 
> Is this a special rule for linux-bluetooth@ / netdev@? Isn't it easier
> to keep it together so the status of series can be assessed easier? I've
> always submitted patches by topic, like input patches + dts patches and
> it was never mentioned.

The rule that DTS must go via Qualcomm SoC (arm-soc) was there always,
but other maintainers often do not pay attention to this. I don't blame
them, don't get me wrong. I am just stating the observed actions.
Usually netdev folks and Greg will take everything you throw at them, so
for these subsystems it is recommended to split DTS to different patchset.

For other maintainers it is usually also more useful to split, because
then they can apply entire patchset with one command, instead of picking
up specific patches (omitting DTS).

Best regards,
Krzysztof

