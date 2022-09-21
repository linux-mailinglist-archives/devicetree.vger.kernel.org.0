Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11265C0101
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 17:21:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbiIUPVZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 11:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229884AbiIUPVX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 11:21:23 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EDAE8A1EE
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 08:21:22 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id j16so9816853lfg.1
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 08:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=zI0sKx0UEe070AULJ8R4m4a1MrYM/4BsYHYlCT/MqDc=;
        b=cJpHA3s+9m7nhbi6PP2RsS0p1UHF9JMHzerR2N2SehVm13m7h2K0WbYjd/O3LTB0ZO
         T3Y6YwcSQMw89WbKxxSCLyXR2o4FRtC3bngAOkSFUEd/X72nv/VfU68ZXsVTkWKJlTW+
         6JcbiNn65X1e1dPAI/KAUDNNm2Un1+/A0G7QTTLAezSXqFWa4VOOeg+yEluuXeEmpAKU
         rdvFz9YNDgO5Yz70uPRSI15vg3zGUqbSNEDVXWZcsnh6V5R61iPaxAyv8lgqNP7184rv
         7m0120wsh8ffjiF6VDqIPCNlN/wqDhIu6/Vz2Z++EY1Sph3wL90Tjxc1AosbRqxw1z7o
         pFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zI0sKx0UEe070AULJ8R4m4a1MrYM/4BsYHYlCT/MqDc=;
        b=MzFl+eVowrf3xhxlTrLBs+eI2VN0DJj5JvfazdkfgxRhdbR9AZf1n0NzpJ9ZJn/WWq
         dcUQsDhLhG4btle+jNK0lxO1THOmySAcYZxrGAQqRpPtWdGoN2U02Mgt/0X7eMZYXlEg
         KRdbds2BQ017XV1vN6UKG2L5qk6wvqk5vHTKXgVAQ+isF7fWX8qiuFrgP1jJYFW4Vyul
         HBwfH8SliLsIwUpnkgR1inh6uW9YmJv+6aY190ppc1EKHjKUcgw/yhnqzpr/+yl+obpi
         DKyONnUD43WhyPyJvXj58F8Nu48E0AgqO1ZVXbJD4T6X26MVErQJ1NLXeoGmh1+cCm5b
         ZoBA==
X-Gm-Message-State: ACrzQf0wzeVzcRzl9LeLxg4HzB6YV1gyddpNIHL0PkAMjKqMkhy1lsU5
        OFDYBqf6kkehAb+QtLQkIzm2HQ==
X-Google-Smtp-Source: AMsMyM5zbaCqzr/X1NNpLsOEjtmsn9LzPWp7Wz7OdNu9TNboh35NIhcQftkiqlUccdhVDxxxRz8CmA==
X-Received: by 2002:a05:6512:310:b0:496:a0ca:1613 with SMTP id t16-20020a056512031000b00496a0ca1613mr11289260lfp.394.1663773680473;
        Wed, 21 Sep 2022 08:21:20 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s10-20020a056512202a00b0049a148eb003sm471778lfs.178.2022.09.21.08.21.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 08:21:19 -0700 (PDT)
Message-ID: <ff2ee392-0f78-37d4-56b5-443e6e998443@linaro.org>
Date:   Wed, 21 Sep 2022 17:21:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision NV3051D
 bindings
Content-Language: en-US
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, sam@ravnborg.org,
        thierry.reding@gmail.com
References: <20220920145905.20595-1-macroalpha82@gmail.com>
 <20220920145905.20595-3-macroalpha82@gmail.com>
 <e5de0c74-3ece-56c6-6c31-042e1117c10a@linaro.org>
 <SN6PR06MB534220AB227AA3BC5DB58741A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB534220AB227AA3BC5DB58741A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 16:38, Chris Morgan wrote:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - anbernic,rg353p-panel
>>
>> Are these vendor prefixs documented?
> 
> Yes, they are in another patch series referenced in the cover letter.
> They were added for the Anbernic devicetrees and should (I believe)
> land in 6.1.

OK... you still need to test your bindings. Your patch was clearly not
tested before sending. :(

Best regards,
Krzysztof

