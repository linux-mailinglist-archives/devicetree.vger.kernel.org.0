Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B531B6AAF23
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 11:43:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbjCEKnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 05:43:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbjCEKnT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 05:43:19 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F817EEE
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 02:43:18 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id g3so27321897eda.1
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 02:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678012996;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=74guh4eaIKxNA8DndfVVMuiBTQgKkmZG+WJvPFdpQKU=;
        b=Gis4genEroC5iAJn6iJiDxAZq1h2c+x/tN4z+bG5HQZDjhibELTP1352gCd6quLtm3
         yZJemUYdN1NV0lSzJPBVoqcP5XwFozPuv2bGLQ1jpxldNMXhj2WU/PLX1t/rJxTiYTMM
         VR7dTGwwx0F47nuj7PBSh0Wx19RWbXJtqQl1dOVkz3Ijb5U5PROJrVYCc+8J25aEAuWi
         NnPbbbIKVocgh+xtm/qCmYQMVeBFA+oYkaLc5FV1TzPqtYL8gcLMtDqCMB6spaZvPOvy
         dTHuQFmt96a2jxyDYkYaAHlphXh6wtN34Q6z5JI3FCHdwV2bHtZJtvWTBzo2i3SB66kP
         MXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678012996;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=74guh4eaIKxNA8DndfVVMuiBTQgKkmZG+WJvPFdpQKU=;
        b=hT7/lTbn4PQjaWg+HUfrHD2AR3RuJF2JrFuUqyZ+xYcyA8UbMz/qECZRW7WPoWqc/v
         zk31DcF0sx5hoCfvFt7Zh8G8k8U4hnn7mFVCUvfGyl6y+G818kX4eVL+9AyP2ZY/uijD
         rW5cvC4zuGL4SRyO/HwpfBOPgDtX1ZLKAUfB2c6QQBr8FomKr84NH5t1ReGvYAwKNSJ0
         jEdO2NM/nr2ju++rD782sq6OnOkUNj3KrDx50hyPF3+M7AMTw4Lgv/89u2sld1O+//K7
         C7V+oVwvRvYLswO+V1eB3x3FIC+ctNr+fDuV0DAIk2fSixkswD3156QvoTs7fiMv4sQx
         0MPQ==
X-Gm-Message-State: AO0yUKUYoesVpEDaaNLwfbf176raSlARXiZVSmbkcEVUqUycY1oJ01eE
        9b8FRN+oBJ42s0bXa+N7Ugu1Fg==
X-Google-Smtp-Source: AK7set/TPjCHEnNp/I2CFQJYITQCjTCs1vik6GyJEvMvvRQcznt12eityrisF3VeERMU/GbKavbabw==
X-Received: by 2002:a05:6402:1345:b0:4af:6e95:85ec with SMTP id y5-20020a056402134500b004af6e9585ecmr6329581edw.4.1678012996741;
        Sun, 05 Mar 2023 02:43:16 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:71e7:13d:1c29:505f? ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id u23-20020a50c057000000b004c19f1891fasm3522633edd.59.2023.03.05.02.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 02:43:16 -0800 (PST)
Message-ID: <d0a98b17-9bc9-5842-5245-5c7aea2b4d26@linaro.org>
Date:   Sun, 5 Mar 2023 11:43:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Content-Language: en-US
To:     Dan Johansen <strit@manjaro.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Dragan Simic <dragan.simic@gmail.com>,
        JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
 <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
 <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
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

On 05/03/2023 11:04, Dan Johansen wrote:
> 
> Den 05.03.2023 kl. 10.52 skrev Krzysztof Kozlowski:
>> On 04/03/2023 18:28, Dan Johansen wrote:
>>> MicroSD card slot in the Pinebook Pro is located on a separate
>>> daughterboard that's connected to the mainboard using a rather
>>> long flat cable.  The resulting signal degradation causes many
>>> perfectly fine microSD cards not to work in the Pinebook Pro,
>>> which is a common source of frustration among the owners.
>>>
>>> Changing the mode and lowering the speed reportedly fixes this
>>> issue and makes many microSD cards work as expected.
>>>
>>> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
>> That's not a valid tag. Run checkpatch.
>>
>> Missing SoB, which would be pointed out by checkpatch with correct tag.
> 
> Thank you. I ran checkpatch and it just said it was not valid, didn't 
> give alternatives.
> 
> Would Co-developed-by acceptable instead?

Yes, looks good. If checkpatch does not complain, use it.

Best regards,
Krzysztof

