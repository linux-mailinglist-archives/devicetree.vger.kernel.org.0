Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F1266037F0
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 04:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbiJSCQr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 22:16:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbiJSCQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 22:16:44 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 390D0E22FE
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 19:16:43 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id g16so6074580qtu.2
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 19:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E8x+7Z+Z6b0lSZr5oAgQ9sf8Zu+riBY1bkbxzxFWnbA=;
        b=m0ByPr6C/cS4ycq6ks4YexfbRTnDWKSgWfv/4qenF4G2pscQck2FLpMBoFWei6plRj
         kL9Z1PyGPp5GW2RPJdGYpYaiXyixL736jDyFacyjJYP/QRqHqKZMN/fy6bhKq0kUIIUo
         FVgkyrVl+MKqIKj5J0U60AU58FbFX4Ujr6rSCT1+Gm5KubV0Wzmsz1xAOaGETKS12VLj
         5tcyudgCb67cBZWFpx6UhoRn5f7rGAutuiifnIJte4zmsA/K8/bSZlaBy9we4fH5vb80
         vp1yNZOMeiHZ18KDU87i1PfJJvaPiz7S+CTbouYQzP/1nDfhijS6cbafztPs7INs0tRr
         H61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E8x+7Z+Z6b0lSZr5oAgQ9sf8Zu+riBY1bkbxzxFWnbA=;
        b=O3HZx84jpEN9UgBGhtsP9WvgBaPCAjNSxSMLiNheuWBV4ViL02xcGLMhF1HNqLrq2N
         1d+NzWtkaqJ6plIupGeOsqu8Zw3FTiLrX1SBQNsWtIOsxn51Xj3oM/oiz7et8FgXLtK5
         oAhQvRByVkqRDW/LyqfMCpv/UtwRASzFMAQmNyYE9zx0uP7xa8wPVDQP0QSBxfr2lKuY
         SzcaqKhV3IQcIlKJvMvIuBm5vvehzKJEV3K42HBDqHIiyVSQZKdLDsMVONaeA9B1OPe6
         qJZ4J/9p08tPrkBjTDJZpglayh8ZMyNKO29kF+kDBHkWKm2InXLTtG6Ji2Hd0EYbC+WU
         uiJQ==
X-Gm-Message-State: ACrzQf1U71mg0HJlInkXqEuMNS6o6tM3934WqjVw729b4tkIOl/vdQpd
        21hv95SrCLKFrf6dJNe9KVgjkQ==
X-Google-Smtp-Source: AMsMyM5XSiiuLHPWOA6L6S3EeqrOIUTUyPxIqyWG5U6Ak6MFYYB5Gsw/C4+3mwEUVz+KKZNQwqAfVA==
X-Received: by 2002:ac8:5a51:0:b0:35c:fa98:1101 with SMTP id o17-20020ac85a51000000b0035cfa981101mr4674423qta.604.1666145802374;
        Tue, 18 Oct 2022 19:16:42 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id l12-20020a37f90c000000b006cbc6e1478csm3759596qkj.57.2022.10.18.19.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 19:16:41 -0700 (PDT)
Message-ID: <12bf6379-31f4-7192-5990-0c199f3fab61@linaro.org>
Date:   Tue, 18 Oct 2022 22:16:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [EXT] Re: [PATCH V2 1/6] dt-bindings: usb: usbmisc-imx: convert
 to DT schema
Content-Language: en-US
To:     Jun Li <jun.li@nxp.com>, Xu Yang <xu.yang_2@nxp.com>,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Peng Fan <peng.fan@nxp.com>
References: <20221014095148.2063669-1-peng.fan@oss.nxp.com>
 <20221014095148.2063669-2-peng.fan@oss.nxp.com>
 <359bc301-fed6-80eb-6945-caeb7fbb319d@linaro.org>
 <PAXPR04MB87840FFD365C5C044D54B55F8C299@PAXPR04MB8784.eurprd04.prod.outlook.com>
 <9e03801c-dea8-1029-4ba1-fa0d6144b0d7@linaro.org>
 <DB9PR04MB9628C50A44BF8DC09C75CAF9892B9@DB9PR04MB9628.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB9PR04MB9628C50A44BF8DC09C75CAF9892B9@DB9PR04MB9628.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/10/2022 22:10, Jun Li wrote:
>>> So we have named it like this.
>>
>> "Freescale i.MX non-core registers" implies this hardware is about i.MX
>> registers. i.MX like for all SoCs.
>>
>> What you wrote now, about USB registers - quite different.
>>
>> However if you describe here registers, not some device, usually it's place
>> is not USB...
>>
>> And actually all devices are bunch of registers, right? So everything should
>> be called registers?
>>
>> Name is poor choice, so please find more appropriate one matching real purpose
>> of this block.
> 
> How about "Freescale i.MX wrapper module for Chipidea USB2 controller"
> 

Sounds very good, thank you.

Best regards,
Krzysztof

