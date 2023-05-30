Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99BCE7160D8
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232409AbjE3M7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:59:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjE3M7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:59:39 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE11211A
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:59:14 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-96f99222e80so914020266b.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451553; x=1688043553;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YKzqjiGxVMzWVVfsT/Cf511nH74+nq/oJr+k6w823oU=;
        b=QU3X/XZ1flLNTepoQEef1Msa2WzJtUPS4qnH/k+gewtqd9mg9Y4XC/1+Y94pYUdIIz
         d3F4qYcJrAr/VjTVGhvFUyAKX2aDioK20OlTWIzJmEJ3pA9Je1huadZRHtKt2jfrV3Hs
         IjF2pmv0PQiaPkbalXOw8uyI8vIMT2NYkZZLoWDKO5uLa7+NT9kQqcezYMf4zK4b3V2z
         qiT2zYLdthbzPGwz4217KfXDkpZnWbUOI6P9OCBXvaHjFZOTMZUgAtfpTkq0F69mWpxT
         FZ0efFNke6LSBTirf2du2UWqugVE021vL0Slpji5Q1mfabIGnC0bBxGks2PHyrDDkKty
         F4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451553; x=1688043553;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YKzqjiGxVMzWVVfsT/Cf511nH74+nq/oJr+k6w823oU=;
        b=Fz8shXQCmK6USbBBcL6zy2+uvUXbSQmmGOaG1s7h4Q40BGkJz3el/JmetofkQq5yij
         QkeRXlORg+mlFfQAgD01LXhREh2TmeA+6ujTFwe9fMfEygTs31WFLfqsJpom+aIqDfIZ
         fbwT9IYDG/5Kz/Gw80F6x2qfbURIq5yEBWgYvtjl9wM4JQXGDR6BDe4EZUYCZzq38iCL
         WAWJjPgP9MdzcEnq+ltXseNi4iZLIOE5E2VJvLFX8ZXEI4AlmB2XIXaQyuAQmfXTTkOq
         zg+BsgpPs9UbsvQN9lYq4N3MUZv5w+QQc0mHnfgMAMU9MrZIxHjoNEOWi2RW17IkTbjX
         Gc2w==
X-Gm-Message-State: AC+VfDy23vxDmC8qTQ2zfPqnjXG9q90qjYussC5yaDrdFTBmBcTpENN0
        KHir8XnsCIRZ83T7/gWqoBERlg==
X-Google-Smtp-Source: ACHHUZ7nnF1/hv/gQW+Rp4tA6V/xLRLeLOIjqQOd8mOMh1TDNhdMsFvhM3lpbrx5tt1xZUYFlNblWw==
X-Received: by 2002:a17:907:6ea8:b0:973:9443:c5fc with SMTP id sh40-20020a1709076ea800b009739443c5fcmr10916236ejc.14.1685451551501;
        Tue, 30 May 2023 05:59:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id m19-20020a1709066d1300b0096f0c8beebbsm7323533ejr.79.2023.05.30.05.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 05:59:11 -0700 (PDT)
Message-ID: <1ea23f76-58c2-402a-2831-ac496ef41b11@linaro.org>
Date:   Tue, 30 May 2023 14:59:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: pfuze100.yaml: Add an entry for
 interrupts
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, shawnguo@kernel.org
References: <20230527205048.418360-1-festevam@gmail.com>
 <20230530125758.ke7isykxf3bg4efu@krzk-bin>
Content-Language: en-US
In-Reply-To: <20230530125758.ke7isykxf3bg4efu@krzk-bin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2023 14:57, Krzysztof Kozlowski wrote:
> On Sat, 27 May 2023 17:50:46 -0300, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@denx.de>
>>
>> The PFUZE100 PMIC has an interrupt pin that can be connected to
>> the host SoC. Describe it in the dt-bindings to avoid warnings like:
>>
>> imx6q-zii-rdu2.dtb: pmic@8: 'interrupt-parent', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
>> From schema: Documentation/devicetree/bindings/regulator/pfuze100.yaml
>>
>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>> Changes since v1:
>> - None. Only collected Conor's Reviewed-by tag.
>>
>>  Documentation/devicetree/bindings/regulator/pfuze100.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1786770
> 
> 
> pf0100@8: $nodename:0: 'pf0100@8' does not match '^pmic@[0-9]$'
> 	arch/arm/boot/dts/imx6dl-riotboard.dtb
> 
> pfuze100@8: $nodename:0: 'pfuze100@8' does not match '^pmic@[0-9]$'

It seems you fix all these.

Best regards,
Krzysztof

