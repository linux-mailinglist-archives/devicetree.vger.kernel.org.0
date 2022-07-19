Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7A957A819
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 22:14:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229909AbiGSUOT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 16:14:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbiGSUOS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 16:14:18 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58F0454C95
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:14:17 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id a10so18724421ljj.5
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y3Ns9iZoEfd2dozS2PmWSCO7roq4AiKwPS8ae64vMLs=;
        b=hKQt/x5yYgbgiY+264upfPkuyh/thRaDPhMfbSrA/+jEDS68qjImsUAxUD1BovpAPr
         IWs+N4sRQbrqNn3ibdAHLozTl9fx8uI1ubH10qC7OKRfJHOQU/H1cIjysIbhjAKMXW57
         0A3H0wm5QxC8+A605a7Zb5r2PZ0Wdm750yPkmoTPvvHi4gbjgZTgGF7OKvHMBkbv99dQ
         9iNIRVoJBHTerdXjeMX1pIpqcllflmVpq+/jMof2y/Pc46Cab+oggTr4TI86QWrgJQx/
         dErU9zo7X+khraJDTaG5IK0eVIE5qEHWDo3fIYBi5GXMRcbhfiNUddOKt4x/Njaiazol
         rPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y3Ns9iZoEfd2dozS2PmWSCO7roq4AiKwPS8ae64vMLs=;
        b=iEstIzxYsHpHnHKG7mqJ/KDnKizO2eBEZYpyVxOhwd9k0QsPZQ8A7fFU+FB45wjzE+
         gfLlZZyfddXj2cr6EOHjCa+0izLqmyWkm6JlWIFj1on59k3f1g7U9mxN+rmNl9/KCRrc
         1za9CpZ+Biz8sM0U3Trv3ZAPXE5rHHxGJwqgnUF928Mo+AfyeTPRT9dSylak27CKEwMu
         8AlyMap6QWHCKMlwF/wcAv82nue9QEaoAMBKDMZLElAKK6kem51qYxJTLUrfkidj7RAq
         2/TFWQhhQ4Z9/937wXkLznN0dCbqEIszuamENEwIqOYpEI4MiCi1PKYSPTPrV37aQP7T
         BtBA==
X-Gm-Message-State: AJIora9hZk4Rh+Ep79UGcRhVusdtNhhi3sSLEQDix2GN/Qp6dUoRJPrZ
        oXgwi9gd8A4+DtQK06WfSMDsPQ==
X-Google-Smtp-Source: AGRyM1ugJHEtwAMqZBFFIwuN//kC5IQIdBAa9+0jvCtd8NOcZ27mifxz05MoF666jgSBFwQlh93x3w==
X-Received: by 2002:a2e:8606:0:b0:25d:53ab:87ae with SMTP id a6-20020a2e8606000000b0025d53ab87aemr14931095lji.10.1658261655241;
        Tue, 19 Jul 2022 13:14:15 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id 137-20020a2e058f000000b0025dc7691a01sm510631ljf.65.2022.07.19.13.14.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 13:14:14 -0700 (PDT)
Message-ID: <1bc74bc7-22e8-3fef-b4e2-a5570cfa93c2@linaro.org>
Date:   Tue, 19 Jul 2022 22:14:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
 <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
 <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <26c7b6e9-ee4b-9112-d975-2523940c57c8@linaro.org>
 <AM9PR04MB82743C17EADBFB1CD970BFB0898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB82743C17EADBFB1CD970BFB0898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
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

On 19/07/2022 21:28, Shenwei Wang wrote:
>>>>
>>>> Didn't you ignore (again) comments?
>>>
>>> The SoC requires two Crystal clock inputs, one is 24MHz and the other is 32KHz.
>> The board design doesn't have an option to change the values. That's why we
>> keep the nodes here.
>>
>> It's the same everywhere, nothing new here. Where is the clock? On the board.
>> Not in the Soc. For convenience clock could be here, but at least the frequency
>> by convention is put to the board.
> 
> It is a little different here. Although the XTAL itself is on the board, a user has no choice here to select the clock frequency. It must use the 24MHz and 32KHz XTALs, and the two frequencies can't be changed. This is the mandatory requirement.

I understand, it's the same on many other boards. Still the clock is not
part of SoC design. It is always on the board. iMX is not special here,
so why would you expect here an exception?


Best regards,
Krzysztof
