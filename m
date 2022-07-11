Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40B2E56FC86
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 11:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232881AbiGKJpP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 05:45:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233637AbiGKJod (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 05:44:33 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D9F3E772
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 02:22:06 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id t25so7681320lfg.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 02:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xLirkEg/zAQf72IW1whruidH9Sn23pDtKMNoHJ7Au9w=;
        b=OAP2yQMEf8EjKgA9oStMVh8GC1pW83piVsf3FIcjhNBulpdm1C5Vn55JRdyngZdV50
         f3GoLPk+BDz4xKro4ODUwrEVNm6cDqWpfmDz9Ga18NKn1khXyPTNjsDmU8bwHzrM/h0k
         VTqwWETidSKJFY24TvvAXl4INJBDoCuiK2upwTARwpN9eQ7aR54aYZ+e2ZIpq5Z6fAd9
         opGTew8EHTl0To0ngowxPez2YjN8yd2YQCHGF7PByjFasza8e6/jxdFPLwNXH6IvloK7
         NH/OGSDU3Ps3b8ffZ8kG2uUoTk9la4ZTqTif6vmzr56iuiTsgBHl5V3ISuVCcGUpWSxS
         Q6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xLirkEg/zAQf72IW1whruidH9Sn23pDtKMNoHJ7Au9w=;
        b=K40thG+Y9YL3xrknteRoil1I1C7EiYZoDKCDb0qaAXNtdSwB6zHPp+AlutlntYvhS4
         Uci9GWm2/2e3ozv0Shh7oHPpcpnE2JbJIc+aqueb3VwI2DpD6WhGxBVh0Vfi+Bt4iwNf
         zUlcqctwohxHDpS2Y65uVYmjXrGYHAWi2e+90seXDQTqN8V0PmCE8CROTTv/H2tpg97W
         O2wSYnWRUdoRTXPHfqtArtcKxI/5EXGm6Ez/t5OsRpQkXjMOa2FDHzCQL8ONlqEZ04Bp
         BNURiSLKoVwEV+C/OnrxhE7cCEifdJaoGCQxjiYqMjNL6eCvKwUuYyMFbG+YA18odPRW
         z15g==
X-Gm-Message-State: AJIora80OEO6pHantt6nnXxbsUu1Z+5WL3qyOtGvesIw0m10TXskhnzc
        63bH2JLtroynjY44ZG3BmAvKQQ==
X-Google-Smtp-Source: AGRyM1sJbaw3PyHwnFJXyedBq7HFKCHpzaF10GcxR25KECWvcG2HXTNFUV27HFh5Vy6esJ6mFpkl0w==
X-Received: by 2002:a05:6512:12d6:b0:481:1d93:a622 with SMTP id p22-20020a05651212d600b004811d93a622mr10632950lfg.256.1657531324565;
        Mon, 11 Jul 2022 02:22:04 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id e18-20020a2e5012000000b00253bc47c202sm1638762ljb.59.2022.07.11.02.22.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 02:22:04 -0700 (PDT)
Message-ID: <c9f769f5-4428-a26c-660e-d250f8c5643a@linaro.org>
Date:   Mon, 11 Jul 2022 11:22:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
 <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
 <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
 <247d48ae-d22f-4adc-07c0-74dbccfc9390@denx.de>
 <20220701000959.GA3588170-robh@kernel.org>
 <cbb47a74-72ae-5db3-ca11-6c01a092fa98@denx.de>
 <eb8cede8-6493-c116-29eb-0303c1871239@linaro.org>
 <f0583d3e-eef1-7f97-9e06-e8dcd2859e9d@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f0583d3e-eef1-7f97-9e06-e8dcd2859e9d@denx.de>
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

On 08/07/2022 17:32, Marek Vasut wrote:
> On 7/4/22 10:00, Krzysztof Kozlowski wrote:
>> On 01/07/2022 10:06, Marek Vasut wrote:
>>> In the local patch I have to imx8mp.dtsi , the simple-mfd had to be
>>> added for the ldb bridge child node to bind.
>>>
>>>> 'simple-mfd' is saying the child has 0 dependence on the parent. IMO,
>>>> 'syscon' contradicts that, but that's an all to common pattern. You are
>>>> saying all the clocks (or any other resources) in the parent can be off
>>>> and the LDB bridge is still functional.
>>>
>>> The bridge itself should work even if the block control is clocked off.
>>> The block controller apb (register) clock have to be enabled only when
>>> accessing these two LDB registers, which should be handled by runtime
>>> PM. Or what am I missing here ?
>>
>> If I understand correctly, you need the device's APB clocks to be
>> enabled to use the child device? You have a dependency between child and
>> parent, so it is not a simple-mfd.
> 
> OK, then ... what is it ? Some sort of hint would be helpful.

I don't have the hardware manual to know what is it exactly. Some device
which has its own bindings and fsl,imx8mp-media-blk-ctrl compatible.

You already received hint what should you do with that device....
"What I meant, is that probably you should populate children from the
driver instead of adding simple-mfd compatible."


Best regards,
Krzysztof
