Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53494753067
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 06:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234967AbjGNEMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 00:12:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234931AbjGNEM3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 00:12:29 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C311272E
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 21:12:27 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fbdfda88f4so13514625e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 21:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689307946; x=1691899946;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F0om7TZyUtm78+G+6P856aCHHrm1f5f1KaX3wUrCTAY=;
        b=ccczWNKODZuxkRpCg56pFlAaZdQRexz9nkS8tlC/ZdzAfGtdQ7nZ1awhlh+/BomWyx
         5BdcclPjEkThLWEV8IH5urqxA2zYVv3RSNPbwp+Ldrkk68PnG/DDzCTpNjxtmxn9bbu8
         sScBjzCiOzSl26cwhrYen9VMYqMOWNP9a0EBjrokc2xFiuRz9EVmEL8RqB029L+4IpTu
         5K7L6NNTrMK5+dnmEMxrRuvwRIqBNp5eyMjp6EIMkDr2ve9FGv/xzhDZWkIckiUF6pVt
         /KaJ0PKvC6H4DbG2iqHFmWn02efNj6CIx67rNmxCdhyiDAxMunEIaoB9FMFDxnRwZqZP
         gnBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689307946; x=1691899946;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F0om7TZyUtm78+G+6P856aCHHrm1f5f1KaX3wUrCTAY=;
        b=CTKgkXBrqKI8rmnPaR72cG6n25FuBT6q+RzOehYBJPL5TpdZxgitEpj7Ks10D5EuWr
         L+PbSiVR7RacmO0459IdQda/JU+kLCV7c5IARTPerv8KQXeeDVhpv1fWP6eNJXQAOk61
         mi01puZKnQfOlcLknmRthNMTDQWYb6DEci136TUQzLAL6fIO51LOyXprtQ7h5URxzgU4
         KRzwinvX422mnlKGuOw2MpeDPajKWlYSXYDo+ZwuAt1lRulGBSStoRaiSsdDAYDXzNcU
         KoOrsO2CjVpEP+ggOab2aJidytpka/SqWlnlv7zu566Ms5ycepJQzc9K25OuiM1mGRHq
         4fSA==
X-Gm-Message-State: ABy/qLYLohPP8XF1IOgzuN5hyQdqcgeHO6VVzrSrgNR+3rIu2vBelYA5
        1sX5b4j2dY/jVFOppMo7uMoUmw==
X-Google-Smtp-Source: APBJJlFirpaQfMgeNnJNmqD/IIFh+MZqYnv5ScO0xHnlU6ErTOZlfdl92D5b5W6MJdqzRwxs+uoReg==
X-Received: by 2002:a5d:4641:0:b0:313:f0ef:1e55 with SMTP id j1-20020a5d4641000000b00313f0ef1e55mr2799626wrs.37.1689307946155;
        Thu, 13 Jul 2023 21:12:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id r7-20020a5d6947000000b00313fd294d6csm9783978wrw.7.2023.07.13.21.12.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 21:12:25 -0700 (PDT)
Message-ID: <58b40977-5223-7431-3c0e-dcf87bf1ef3f@linaro.org>
Date:   Fri, 14 Jul 2023 06:12:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite V4
 board
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230712073752.54624-3-Delphine_CC_Chiu@wiwynn.com>
 <20230714023502.3225096-1-Delphine_CC_Chiu@wiwynn.com>
 <20230714023502.3225096-2-Delphine_CC_Chiu@wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230714023502.3225096-2-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 04:34, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Yosemite V4.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v6.4/source/Documentation/process/submitting-patches.rst#L552

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof

