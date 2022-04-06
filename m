Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB5E34F5BD4
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 13:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233832AbiDFLC7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 07:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238053AbiDFLCG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 07:02:06 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FAD93BE608
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 00:28:53 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id k2so1514158edj.9
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 00:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zfHXA8UAAQX4RF73thwSZRYnZdelw1yPWiu9aRHf/5U=;
        b=sRlNXAIhYZfcBgj085AxwI95B959EZC2rbFo4zQvux7+LNOHdEB+J7w34JxBHYswyy
         46G/Xuam31mr20ExEuNXcjIdgmAIba/CTgpy+OiFNGBfcJelAqNjMXySngvQDRy+sX3f
         92tRLrowZxmcRbu11Iu67HmPBj7oELITbixV4rZYMaW4Ro3l7SCFi9d18JvsfVUswfTy
         zXo1UaukAl1rxUxms66ZeDhVBpObMmmvW/XzY2F+1MLZ1krD5STxk1f37Jj5nL1lPnYp
         atwhkk8fpbaNxluHgBLeTslioN3dtKT0QxwyTmN3Kj3UEq1thbwYdCC2EokLlcNCxZsO
         fgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zfHXA8UAAQX4RF73thwSZRYnZdelw1yPWiu9aRHf/5U=;
        b=GirZsDceeSG/8gubY7cc7LHfEwyCQp27fIO4oC3rD0e1WzeSavS/bsasskwZwR6IKb
         G0ONebqy3C2OSpV2Wnev7F7bM189otyX9qPimZfnmdPM5+R9ju+u0GwL2l4p2ZNe4tRH
         y8f83KF2BE2KjRIhJsZVjyOKaL9gLHmMt8SwtDrA+qDWaXGDm8EPhylScms6YHyXyuPV
         DLPtIWOH9aBxHnUrerXPJbFyYNF6ypCBvd5e3HtccEImuHpPVqzKV6gduz8s74kVnjBP
         izwKJRoOp3buwLx+7jbHOGPTnWBZtxUcnFYihOXW4knaQdrJmgJHb56Wd3/58rq/jE6/
         u8Rg==
X-Gm-Message-State: AOAM532MIRN2P/sdX2fhIKejueReesQCDh2Vs6dBLic2u5OPdS355lwG
        kS43/9z52nLocQ7hJJm4qZS2yA==
X-Google-Smtp-Source: ABdhPJx9Kc7JEu8MNluYQlHCl+KsXiLVSaLgbOFo4Yy7DOp05A2hNUvsp+G3jvpeGP2g0JBkLL+2XA==
X-Received: by 2002:a05:6402:332:b0:41c:d2d0:d7c3 with SMTP id q18-20020a056402033200b0041cd2d0d7c3mr7498281edw.296.1649230131737;
        Wed, 06 Apr 2022 00:28:51 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c13-20020a17090654cd00b006e0db351d01sm6315639ejp.124.2022.04.06.00.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 00:28:51 -0700 (PDT)
Message-ID: <44ae23a3-c3a1-7d34-8af2-cbc8c1c9db2b@linaro.org>
Date:   Wed, 6 Apr 2022 09:28:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, zhangqing@rock-chips.com,
        zyw@rock-chips.com, jon.lin@rock-chips.com,
        maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
        krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
 <20220405131228.GA20@wintermute.localdomain>
 <ac2b29c2-b3ec-eb03-595f-b0328e40015c@linaro.org>
 <20220405135424.GA20@wintermute.localdomain>
 <b269be83-3e45-fb36-75ab-e1c20ad6906f@linaro.org>
 <20220405140428.GA72@wintermute.localdomain>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220405140428.GA72@wintermute.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2022 16:04, Chris Morgan wrote:
>>> The driver itself is named rk817_charger. If you think I should change
>>> this from battery to "fuel gauge" or "charger" let me know and I can
>>> resubmit. Whatever makes it clearer for everyone.
>>
>> Yeah, the property name and bindings should describe the hardware, so in
>> such case the hardware is rather a "charger" or "fuel-gauge". Your
>> "battery-cell" from DTS is probably just a "battery" (unless you expect
>> multiple cells?).
>>
>> Best regards,
>> Krzysztof
> 
> Okay, when v6 comes around I'll change it to be "charger" instead of
> "battery" to make it more clear. There should only be a single battery
> instead of multiple cells, and according to the documentation I should
> be okay with describing the battery in the devicetree since it's not
> something easy for the end-user to change.

Yes,the description of battery fits the purpose of DT.

> 
> I'd like to get someone to look at the meat and potatoes of the series
> before I submit a v6... I did a fairly substantial rewrite of the
> actual rk817_charger.c to solve for several problems and fix several
> bugs I found in extended testing. One of the major changes was to
> mirror the BSP in that I poll the PMIC every 8 seconds for updates
> and then store it in the driver struct rather than pull each value
> on demand as requested. I see other drivers doing this but I want
> to make sure that's acceptable upstream.


Best regards,
Krzysztof
