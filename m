Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD6B5EE436
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 20:19:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234454AbiI1STl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 14:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234515AbiI1STL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 14:19:11 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F59106A03
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 11:18:40 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id b24so15225393ljk.6
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 11:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qaYk3nco+/ppRoNQEcgJqsT/fQPu+A0ZFbK93FdpdIM=;
        b=X025S/sUiH/3GrEN6vc6HdshVToix1fmekkzAkkLSSHix81xpfXDAXmtyleQ5E4i8f
         wQJgyVr5JdNwYJk20v6IZi6bzCN7UPsVuxWDC3ocy4SWGQPKHZ7C8ci+VIfbUtqOf+EI
         h7w4DPwr7l4oHJ4BW4sx9FR5C9ZaqvdP+k5PEtte/1BbpDO+ofXVXofWjNSflJrhoU/d
         XcI25vSmf/qbIzMVLZ8MPg422u0hpSZ8IZE0OH49z47gCWUt4imA1qiOuGXRnyQIMGEz
         BjufohmrdxetIKka1Whip3HARJcyF2oakf2iVA2husa7i4f7h/U6qCNngNxLFbvN+efp
         Y9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qaYk3nco+/ppRoNQEcgJqsT/fQPu+A0ZFbK93FdpdIM=;
        b=i7/9w/paf7E0HsXvwNcf1ghkgN1ifG1vrW80cUbwDuhS4rOIVdUrlPeqjA4dcR9ysz
         2ouNe61vs2vBPC98lXCSNUQeqHtxB4NTxBohV0zTQX8tR8rtPnKoBBt+M+aPZGqiupNd
         KcLAWnpzSzGakUaNT3UZCHzHtkRJGpz0DJBIiwRmrThnx3kMudxdBJE2WmAdU2Pt0Sbc
         85yFynIIeS1JMkW2P/EN/P6CdMQLMCm0axDiv8vQhKLxVQ+6jIcBqmhrZl3MPqqFQr20
         7o1LNPZfT5+0fqp+8KuT4czAodwL36iCva8fvq2nRrdZXNnz/NT9LhGhdFEw6MWSAAif
         6gOQ==
X-Gm-Message-State: ACrzQf03iHPkhyCGdStqz/mQIPjTJ39iEXJtCKS5mYq2h1bjtWJ9u+yd
        cFns0eSamoIlXgNxNNfRh407rg==
X-Google-Smtp-Source: AMsMyM6RB3ATSHcyqOonrWWNzfkPDbAqYTCuI0L3+9Gwy3NXnydiUk55FsM++WXSvQ8qD0Dx6HU7nw==
X-Received: by 2002:a2e:a44d:0:b0:261:cb9c:6891 with SMTP id v13-20020a2ea44d000000b00261cb9c6891mr12635209ljn.136.1664389118600;
        Wed, 28 Sep 2022 11:18:38 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s16-20020a05651c201000b0026c453c51b7sm486302ljo.68.2022.09.28.11.18.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 11:18:37 -0700 (PDT)
Message-ID: <19a2e93f-8733-ac41-88b7-449ffce7ee0c@linaro.org>
Date:   Wed, 28 Sep 2022 20:18:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: memory-controller: st,stm32: Split off MC
 properties
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20220926225536.548139-1-marex@denx.de>
 <846bc515-bdda-6022-0611-daaa9a632e64@linaro.org>
 <e787f5b1-88e6-375c-b9e7-22db346c27be@denx.de>
 <393eb833-0dcd-bf6c-49f3-ab8d60e3a8e5@linaro.org>
 <7adc3299-5dd6-fd43-fd5e-c22d150a328a@denx.de>
 <9cdb0eb8-db72-a77b-e377-1103e12c2c85@linaro.org>
In-Reply-To: <9cdb0eb8-db72-a77b-e377-1103e12c2c85@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 20:08, Krzysztof Kozlowski wrote:
>>
>> So the fix for V3 should be the following ?
> 
> patternProperties:
>   "^.*@[0-4],[a-f0-9]+$":
>     type: object
>     $ref: st,stm32-fmc2-ebi-props.yaml
>     unevaluatedProperties: false

As Marek pointed out on IRC, unevaluatedProperties:false won't work here. :)

Best regards,
Krzysztof

