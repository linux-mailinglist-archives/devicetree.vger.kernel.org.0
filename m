Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AFBE5A79E8
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 11:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbiHaJQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 05:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231745AbiHaJQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 05:16:42 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A139C2E9A
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:16:40 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id j14so8720332lfu.4
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ExHJcqoG06t1gLCaDqZsZhw7hbRU0HjcyrdqEtVq6q8=;
        b=YeNsoJkkwzZ5nnkuodhtONiQMAypwmjB6xIdYUj7YfxZHriPsyCB8n6y8KIVkhn97K
         Juc0zjE/HmC8oKgHeI2MAnRwSqYD3N3VkB7MGZdkDDqnBiHcbnZR3FyQUqkzId2jgIII
         E+Y0HhkSar4ifaTUQxeB7PGF6kI6xzFpFO05kOf8+oOwumYg1hgrafjDaO4ej4os60le
         vEM6DQfB+Xkm3BixQHzMbSZJ+rTpW6NL4tgYlg0Qn5T5mTlJJjd9bz0eli/qyXgdm+J4
         WyZhJlVjZTfE/6VCuz8TUGdTjTKIG5mLX5L8TLPM+fD+x31Ux2gSqX437eJSqtx5R2Ht
         XQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ExHJcqoG06t1gLCaDqZsZhw7hbRU0HjcyrdqEtVq6q8=;
        b=H8+MFuJ7JBtRD95Y67ufQpzZRbs2LfWQDrMelGMtnFax9r8+3IZyRoA4xSMLyQW9wk
         gVwvtiBgNNum4CNpOMZA8JXIAJIVxMfuuSSjfC9Oa71a8nFK3kc7Dp/1OG+L8UrdkWaB
         TeIdOdvadjZ1MwIRl0mANrqh/HYtjGrz0p2HQFmQDT57wLy5tQbxY40rUFdd8JnzPoeP
         B2au+VxR0SjNcccyg3kFV5Esk2zMjFOGxpnIAEqv20/k9ehxOHpMYe+vglxuBkh7SJo8
         54+Q4EKvet4WFMKl4yEQ8/HN2DFda1+8ApPDbr04sJQDVQ+lCtJ/JYmt0lXn+CeO4DhB
         bbZA==
X-Gm-Message-State: ACgBeo3VwCn8NIhif7RdHgtyCt0O/DLK2nDNhr7IQ5JPwWT/Qs6AEcQg
        MO6WaG0bqypbWRvy/Ql0d3V90g==
X-Google-Smtp-Source: AA6agR5sXCvLV2UqTOLQGarYLaXo9w6vJlmmruUPBPkfclL3L42P7q+XtywQ4Rn7zlxTCNutabRczg==
X-Received: by 2002:a05:6512:b87:b0:494:6e9d:34d5 with SMTP id b7-20020a0565120b8700b004946e9d34d5mr3463107lfv.389.1661937398570;
        Wed, 31 Aug 2022 02:16:38 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id u7-20020a056512094700b0048aeff37812sm1898132lft.308.2022.08.31.02.16.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 02:16:37 -0700 (PDT)
Message-ID: <e4f4a1a6-f0b7-1c3a-628a-bfb163a43012@linaro.org>
Date:   Wed, 31 Aug 2022 12:16:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V2 1/8] dt-bindings: soc: imx: add binding for i.MX9
 syscon
Content-Language: en-US
To:     Peng Fan <peng.fan@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20220831074923.3085937-1-peng.fan@oss.nxp.com>
 <20220831074923.3085937-2-peng.fan@oss.nxp.com>
 <26b5442a-5224-4252-f141-e85b33fa4f53@linaro.org>
 <DU0PR04MB94171C9075A78E962D7DD58888789@DU0PR04MB9417.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB94171C9075A78E962D7DD58888789@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 10:57, Peng Fan wrote:
> Hi Krzysztof,
> 
>> Subject: Re: [PATCH V2 1/8] dt-bindings: soc: imx: add binding for i.MX9
>> syscon
>>
>> On 31/08/2022 10:49, Peng Fan (OSS) wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Add binding doc for i.MX9 blk_ctrl_ns_aonmix and blk_ctrl_wakeupmix
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>  .../bindings/soc/imx/fsl,imx9-syscon.yaml     | 37 +++++++++++++++++++
>>>  1 file changed, 37 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>> b/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>> new file mode 100644
>>> index 000000000000..90c5e354f86c
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>
>> Filename: fsl,imx93-syscon.yaml
> 
> There are more i.MX9 SoCs in the coming days, I am thinking to let this yaml
> could cover i.MX9[X]. 

If you guarantee that you or someone else will add here more of such,
then it can stay.

(...)

>> Does not look like you tested the bindings. Please run `make
>> dt_binding_check` (see Documentation/devicetree/bindings/writing-
>> schema.rst for instructions).
>>
>> You miss here select.
> 
> There is no error when I ran dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml 
>  make ARCH=arm64 DT_CHECKER_FLAGS=-m dt_binding_check
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   DTEX    Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.example.dts
>   DTC     Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.example.dtb
>   CHECK   Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.example.dtb

Eh, you're right, I cannot reproduce the error. Something change in the
schema and custom select seems not needed for this case, but I cannot
identify what exactly changed.

Best regards,
Krzysztof
