Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2075B6040AB
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 12:09:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230342AbiJSKJE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 06:09:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231312AbiJSKIb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 06:08:31 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74DBD144E3E
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 02:47:09 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id bk15so28143687wrb.13
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 02:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DdgXhYJznmHGVmIL5L/eIrSwLYryd7B2Pc6VvUxulzk=;
        b=oAXjbhE3qOCsd145YkFLFZBiQKjvZcSnZFUFug0NcRNH4Rd0kcOpyXO3449qDzhoAF
         qQDHoLZOVCQWDjO9RG14XGi3gQhyjeOs4D4Kn4tDnNwrgJuzNx6MFv0UDmPR0biMafkF
         REba1wY3LG4J+0Wnqc7762jdOrBZT4iN5rvfjRsaTvmoiWj1KjmbXiLs9VwOjo/7nCN5
         JEL4+Scg8lzwWW9BuEw9DSrJGuNO8fq606CUJ/nkFDEdGx7gZyCbzbmX+yQOzVwMheo0
         rvp4CnFceyPM3YNxnyW+AqE4YIT6+4qc5bDkzNGfVqLgUFwwsoH76czeFeWEHZNYnsMO
         5xpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DdgXhYJznmHGVmIL5L/eIrSwLYryd7B2Pc6VvUxulzk=;
        b=zvzKGsldGTLXvJmwO8OK9/jfEtGzpDgdff85BdT3/BCLjJZtoqrIshqAJ2+Rt1sIqV
         mS5VDBhXPLTNU0oa6m+aO0evcIgRQMLkvZvDUJYhlxqFR4lyAHb8udm09r1CE6e3gtwI
         CT0ETJsr0UVsYKPK52jqC8JKyTKtQKUGCXdqewMuqnXEQuRLXSQYdKh3ppNTER59KTHl
         KJ1kdyMUOXnIE2rRaaM8DOvW20SsQLBoo0Gutn+Uj/jw4q4nk5qRP/M8ZImtnJtvXyVR
         WY8AdMmaa4IvsqALUISPAHHoDbrzr2vaEkGQzSOcXWSZr+Ly9sPakVe4lNSZix8BUsHv
         Z64g==
X-Gm-Message-State: ACrzQf2v2t8Brzydi11i4LCKK7c5f/M4SMfq2FFsVrVPMJOGska/gkgV
        /thv9H/ffmcaqgrXn1EcGi2P3Q==
X-Google-Smtp-Source: AMsMyM4WalG8ywewDhqbkl+de1a1iGi/aoRDXottmigSbOIwosBHZ+R961KdCG2PGONWUx2xt0A2/g==
X-Received: by 2002:a5d:6508:0:b0:22e:1af4:57f9 with SMTP id x8-20020a5d6508000000b0022e1af457f9mr4393470wru.539.1666172736226;
        Wed, 19 Oct 2022 02:45:36 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:9368:960c:f98f:35b5? ([2a05:6e02:1041:c10:9368:960c:f98f:35b5])
        by smtp.googlemail.com with ESMTPSA id fc12-20020a05600c524c00b003a342933727sm23219909wmb.3.2022.10.19.02.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 02:45:35 -0700 (PDT)
Message-ID: <f8be7e54-8f54-99ec-d97c-6025fe989c81@linaro.org>
Date:   Wed, 19 Oct 2022 11:45:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v7 1/2] thermal: loongson2: add thermal management support
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     zhanghongchen <zhanghongchen@loongson.cn>,
        Liu Peibao <liupeibao@loongson.cn>
References: <20220930021054.22387-1-zhuyinbo@loongson.cn>
 <72c5ecfa-da9f-f7d9-e020-133a48de92a4@loongson.cn>
 <32cff5f7-d0c2-c7e6-67d2-2506469b5d15@loongson.cn>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <32cff5f7-d0c2-c7e6-67d2-2506469b5d15@loongson.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 10:51, Yinbo Zhu wrote:
> 
> 
> 在 2022/10/14 上午11:48, Yinbo Zhu 写道:
>> Hi thermal maintainer
>>
>> Are there any other suggestions about this patch? If not, please help
>> merge this patch to upstream.
>>
>> RRs
>> Yinbo
> 
> Any updates?

I'll review it until the end of the week


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
