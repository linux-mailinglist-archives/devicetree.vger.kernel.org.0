Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63B736C9EB2
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 10:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233502AbjC0I4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 04:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232925AbjC0I4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 04:56:02 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D4E5BB8
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 01:52:37 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id x3so32677860edb.10
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 01:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679907156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UJ7r+Qhe7qVp4owbhfQXaIuIJ5xTZz7JXqNZYOcMpJs=;
        b=tm0EY+Z6DUNfTIeAGVJtpQaBCRrpwJlu6fNVojTeVDEdcdqFD9ajWuqQ4cWjaoaWgS
         CsNsU0e0dohKWB0m9rLsaTKKCDQFdfxNiNWKE8FfNgwkZKAIXuNAb101PMIg4DPxm6Lc
         imN4moNM0tbI84wKr6pkZs16VsLJ997h3SVq0/J4+rIl+LotIEUC9viwTJ4bqXetVuDc
         VCtbhKNfnnfkUCSl3T8EIHPCAxU1JEQDnYhAOsHk5sXKEGYVFTfbXEhbJIUypeua1ALZ
         UtDEGA8dpjiCe9lw5IBaGaHUs8+KtvauU2IyJpOu9f72Q5oJg7sYDJhwdHLTCSg4ULqk
         M6mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679907156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UJ7r+Qhe7qVp4owbhfQXaIuIJ5xTZz7JXqNZYOcMpJs=;
        b=LwnCiWz0zH4V/0Imh4wAqkb+pIOGSYzIJlsMyOrxUc5/a3MPzhxdrT5RewWhJ7M8ME
         t87gUahb1p4XnLaN5dkapGGSfqRsVWjjsjNioa5dYGM5ox7zoOpJxQzfqzNc58DqvQt5
         Rafug69aXMgSXsOAYODMhUA+T1BfNaptQg1BWsDGWJGXoPvaHIm/UxIO8A0rXynDbN6+
         VUxGEs5xHxPyk2JgMCrbETM2HmCh8TN2O3USxXIgMOo3ArRFFl2tqKqizNRotP6B2Amj
         zonEwr2ENFwZcq4Ns/N1SnM/t76Tr/4PcW4D8fyeOchm3HLnpzlHugaXODTK+btE2din
         atww==
X-Gm-Message-State: AAQBX9dYfRhDTMCHu43YLoZkzimQA1bH1hHCPuDqIHVz68wtyM3IHTJ2
        anaxCMvu8FFO7Kfwg7aM+GmhpQ==
X-Google-Smtp-Source: AKy350Z5KnieCxxhcGNuzpjaGClZTmUGMeJhJnKpPEr13oKvvVkF1zVa3uUYd8NRh5/SM8SAEBGXkQ==
X-Received: by 2002:a17:906:fa1b:b0:922:2ba3:2348 with SMTP id lo27-20020a170906fa1b00b009222ba32348mr12177607ejb.7.1679907156456;
        Mon, 27 Mar 2023 01:52:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:198e:c1a5:309b:d678? ([2a02:810d:15c0:828:198e:c1a5:309b:d678])
        by smtp.gmail.com with ESMTPSA id qq24-20020a17090720d800b008df7d2e122dsm13790482ejb.45.2023.03.27.01.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:52:36 -0700 (PDT)
Message-ID: <87045dd7-7af1-7af2-83f3-aa15bf74e965@linaro.org>
Date:   Mon, 27 Mar 2023 10:52:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/2] dt-bindings: spi: add loongson spi
To:     zhuyinbo <zhuyinbo@loongson.cn>, Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>, loongson-kernel@lists.loongnix.cn,
        wanghongliang@loongson.cn, Liu Peibao <liupeibao@loongson.cn>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        Jianmin Lv <lvjianmin@loongson.cn>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20230324063317.14664-1-zhuyinbo@loongson.cn>
 <20230324063317.14664-2-zhuyinbo@loongson.cn>
 <167966252219.1675112.1668738117284963309.robh@kernel.org>
 <31026abc-bdb3-9d30-276f-82ff93e43d48@loongson.cn>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <31026abc-bdb3-9d30-276f-82ff93e43d48@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 10:39, zhuyinbo wrote:
> 
> 
> 在 2023/3/24 下午9:07, Rob Herring 写道:
>>
>> On Fri, 24 Mar 2023 14:33:16 +0800, Yinbo Zhu wrote:
>>> Add the Loongson platform spi binding with DT schema format using
>>> json-schema.
>>>
>>> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
>>> ---
>>>   .../bindings/spi/loongson,ls-spi.yaml         | 43 +++++++++++++++++++
>>>   MAINTAINERS                                   |  6 +++
>>>   2 files changed, 49 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> Error: Documentation/devicetree/bindings/spi/loongson,ls-spi.example.dts:22.28-29 syntax error
>> FATAL ERROR: Unable to parse input tree
>> make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/spi/loongson,ls-spi.example.dtb] Error 1
>> make[1]: *** Waiting for unfinished jobs....
>> make: *** [Makefile:1512: dt_binding_check] Error 2
> Hi Rob Herring,
> 
> This error was still appears on 22 line, this line was 
> LOONGSON2_BOOT_CLK not refer, it need depend on 
> https://lore.kernel.org/all/20230323025229.2971-1-zhuyinbo@loongson.cn/ 
> then compile will be successful. and I had added this depend on 
> description in v2, v3 patch changelog, I was also send a email to remind 
> your bot for the test my patch need dpend on other clock patch.

... and did you read Rob's advice? For some reason you responded to
automated bot's email, but not to actual email from Rob.

Best regards,
Krzysztof

