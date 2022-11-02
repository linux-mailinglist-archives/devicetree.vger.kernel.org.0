Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5011E616F19
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:47:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230171AbiKBUrj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:47:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231343AbiKBUri (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:47:38 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A3165E9
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:47:36 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id w4so124503qts.0
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9FUCKdR5muWG/ydu/yl+po0EfXtg7fWrig8KkqMX+yM=;
        b=FWmAttP5TwXac8ajZcb9YnhcjZRhjKSyxV3D8215oGsRblrGAedT7Um2FC9YfmcWl6
         eLeeRpWglMSi/1Nq8d6lwbl5y4GBwfnTEtt0AaE5RujOstqGlDOtAo+jNGmHMYjzXY22
         ZRVpsIv8QgWRUM173q3ZRq0I9LT2K6FbFIjd4/cURC1216cxoCxjD88eLbsNRj1SjrHT
         WMlGVBqb0tl+MA+SfXI0KViQvYb3sDYaOkvJLXqpE9hfqRJmCzI5U8yuNE0xulo9KsZj
         6hPfJbQUIuIHvwczlZzGO9SbynFkSbzT672BqVxtA0obXoM1Nj5TG4DrIsT/0o98BHrF
         za6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9FUCKdR5muWG/ydu/yl+po0EfXtg7fWrig8KkqMX+yM=;
        b=NzKrsecBgTm9pMqV1pMc9ETQFLKYxkbacKkoK8OxIc060cr6ThhtYt1dn/Crio2EOK
         Oh6p6h+3albPtMy038ELAO+qzc832qkRnV7LruU2SzneC0ptHvUnATCSNa7T2HDTVL+w
         xCyzQgIBkp7mYUODhDkWfnJagOd3CqI9fJErokDPpELkU9JrbJaYFnbFHB5TjdHh1yrh
         HRpMrt6JQztjHGFun/9x1IJmvUEQ+pB97DViKEzsUey6bNimO6miYOySYEy7lBU2M5dD
         iAYfSR4OGR9pcuZsWDmVQY0YLJVg0YExHOw1j0FhaOLLC7gYnOPY4Xjh1RntrQN+v0UM
         zYcg==
X-Gm-Message-State: ACrzQf1INCZp+l+Xa8gKv7+2uATCCky2VQTlA1iFaSUxEFMql5iYVQfF
        wK6ySK0zda6fvL4qCAc2aCUASg==
X-Google-Smtp-Source: AMsMyM57MVsTku28IGR7kZ3gGsrJhSjU3Cp3FR7vGK6HxubhMZ9RMqYFZQEhv2VU2+XGyeeB3vDkyw==
X-Received: by 2002:a05:622a:4d3:b0:3a5:c99:9471 with SMTP id q19-20020a05622a04d300b003a50c999471mr21455056qtx.325.1667422056067;
        Wed, 02 Nov 2022 13:47:36 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bl33-20020a05620a1aa100b006ed61f18651sm9223641qkb.16.2022.11.02.13.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:47:35 -0700 (PDT)
Message-ID: <060ad3b1-8a44-60d0-29d2-bdec6fd939c6@linaro.org>
Date:   Wed, 2 Nov 2022 16:47:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 10/20] arm64: dts: Update cache properties for marvell
Content-Language: en-US
To:     Pierre Gondois <pierre.gondois@arm.com>,
        linux-kernel@vger.kernel.org
Cc:     Rob.Herring@arm.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Vadym Kochan <vadym.kochan@plvision.eu>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20221031092020.532456-1-pierre.gondois@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221031092020.532456-1-pierre.gondois@arm.com>
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

On 31/10/2022 05:20, Pierre Gondois wrote:
> The DeviceTree Specification v0.3 specifies that the cache node
> 'compatible' and 'cache-level' properties are 'required'. Cf.
> s3.8 Multi-level and Shared Cache Nodes
> 
> The recently added init_of_cache_level() function checks
> these properties. Add them if missing.
> 
> Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>

Your threading is broken.

Best regards,
Krzysztof

