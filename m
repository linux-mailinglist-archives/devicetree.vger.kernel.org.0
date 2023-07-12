Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EEA8751099
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 20:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232260AbjGLSfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 14:35:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231651AbjGLSe7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 14:34:59 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45D251BDA
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:34:58 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b708e49059so116685051fa.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689186896; x=1691778896;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+GzutrRFtmSU6fzBKaUewkpDtpBuMaVFLdW34axBPA0=;
        b=DClzVT7qREqcVjVYmsoLrEnuZF9BMmvoXVMKYNgUzWPCRjGO2MbKpLxJqo1l8dwS7I
         CeuIb3EjFsSNKtwsi2Aq6g3wGzxsFZh1J1BPJEII9280JmS1dDe4fSonLCvAHgBTnIDm
         Qigwfzq9iOL7+zdi0JYELggx3+TTeRDDPbANB16In+cBUHtD/7KzziP3qsCPRwFE+FMH
         Oaly9pYnpkm835hu8KPEnpvURRNyX8EuP5NqnyxvaCDGn/Jlt4qOkzDjfDPibq+Afun4
         SSqVhD4Fz6xMzKGt6i36nYaPHskHn6wNi2nl2lwWHVzy/eq3ufISMcymESBG0P2pXO6g
         wtAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689186896; x=1691778896;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+GzutrRFtmSU6fzBKaUewkpDtpBuMaVFLdW34axBPA0=;
        b=hK0s2xi4eoGKT7ITnCRC7cyL9CNPO+hftUBeauOt3SVAsmJ2GiC61cFh1z65efA/lK
         oIyLnXqwA4mMomG/r0nT6fVbPGNduYft6fVjTaIqC/IJZE1f7ZCJ2KrR8EXncpE0qFDc
         Ht9vNIBklq0jp5BUzSn8JJd9mCoBfJInPblj7fdUOcyDyFa/4cHLYyA+YV8CkRECbmrH
         48MUX9fN6Id6f1D0PFYALcn+szU75EL5K1su8ht8NBIfj5fdP+wsGZ/ZirYF6E5D9VRV
         uxsXT0lL5rIXeco7dxychXx7N9RroXXURUjccgvub1U8v5F7njvc1+4AqBFVXP5U9eRH
         pVeQ==
X-Gm-Message-State: ABy/qLbBq5QIxqiq2ESFExt8l7q8Q3kkzRfqjA6aVd91JZUpxJ+aEWjk
        tpvlT8ws4pnTDz+JFG9RtvRl6w==
X-Google-Smtp-Source: APBJJlEJeg/IiAx2/1j3q/3LKk2HeS8zGD4t9IyLZ7QzqeUG1dSeOLnvKQHJsyi6PYys7SXlbvMMeg==
X-Received: by 2002:a2e:7a16:0:b0:2b5:7a87:a85a with SMTP id v22-20020a2e7a16000000b002b57a87a85amr8825214ljc.13.1689186896477;
        Wed, 12 Jul 2023 11:34:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p27-20020a170906141b00b00977eec7b7e8sm2885172ejc.68.2023.07.12.11.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 11:34:56 -0700 (PDT)
Message-ID: <6e13acf6-3e23-f9bf-5c3f-368e79802a8d@linaro.org>
Date:   Wed, 12 Jul 2023 20:34:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 1/7] dt-bindings: arm: fsl: add se-fw binding doc
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>,
        Pankaj Gupta <pankaj.gupta@nxp.com>
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        clin@suse.com, conor+dt@kernel.org, pierre.gondois@arm.com,
        ping.bai@nxp.com, xiaoning.wang@nxp.com, wei.fang@nxp.com,
        peng.fan@nxp.com, haibo.chen@nxp.com, festevam@gmail.com,
        linux-imx@nxp.com, davem@davemloft.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, gaurav.jain@nxp.com,
        alexander.stein@ew.tq-group.com, sahil.malhotra@nxp.com,
        aisheng.dong@nxp.com, V.Sethi@nxp.com
References: <20230712121219.2654234-1-pankaj.gupta@nxp.com>
 <20230712121219.2654234-2-pankaj.gupta@nxp.com>
 <20230712-step-dimple-31746cd3a640@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712-step-dimple-31746cd3a640@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 20:26, Conor Dooley wrote:
> Hey,
> 
> On Wed, Jul 12, 2023 at 05:42:13PM +0530, Pankaj Gupta wrote:
>> The NXP's i.MX EdgeLock Enclave, a HW IP creating an embedded
>> secure enclave within the SoC boundary to enable features like
>> - HSM
>> - SHE
>> - V2X
>>
>> Communicates via message unit with linux kernel. This driver
>> is enables communication ensuring well defined message sequence
>> protocol between Application Core and enclave's firmware.
>>
>> Driver configures multiple misc-device on the MU, for multiple
>> user-space applications can communicate on single MU.
>>
>> It exists on some i.MX processors. e.g. i.MX8ULP, i.MX93 etc.
>>
>> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
>> ---
>>  .../bindings/arm/freescale/fsl,se-fw.yaml     | 121 ++++++++++++++++++
>>  1 file changed, 121 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml
>> new file mode 100644
>> index 000000000000..7567da0b4c21
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,se-fw.yaml
>> @@ -0,0 +1,121 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/freescale/fsl,se-fw.yaml#
> 
> I think on v3 you were asked to use a filename that matches the
> compatibles?
> 
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: NXP i.MX EdgeLock Enclave Firmware (ELEFW)
>> +
>> +maintainers:
>> +  - Pankaj Gupta <pankaj.gupta@nxp.com>
> 
>> +  value, i.e., supported SoC(s) are imx8ulp, imx93.
> 
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - fsl,imx-ele
> 
> This looks like a generic compatible, not a specific one, but you use it
> on the imx8ulp. I would have expected that you would have something like
> "fsl,imx8ulp-ele" for that.

Yeah, this one looks generic, so not what we expect.

> 
>> +      - fsl,imx93-ele
> 
> 
>> +
>> +  mboxes:
>> +    description:
>> +      A list of phandles of TX MU channels followed by a list of phandles of
>> +      RX MU channels. The number of expected tx and rx channels is 1 TX, and
>> +      1 RX channels. 

Don't repeat constraints in free form text. This is obvious from the
items below.


Best regards,
Krzysztof

