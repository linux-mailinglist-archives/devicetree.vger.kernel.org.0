Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 131CA78BE83
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 08:34:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232792AbjH2Ge0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 02:34:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231669AbjH2Gdx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 02:33:53 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6487613E
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 23:33:50 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9936b3d0286so535795866b.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 23:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693290829; x=1693895629;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kDhQb575zZtGvgbOfQFrrWaedCmdLDvfbJC6bCOqzL4=;
        b=J2ELgl3JW4LZj5oV//vBliF4CbbxRVWalmDr0Go27VRwASK4dzI+OFFS16Zxl/nVWS
         DBqB3XoB9BxOyasGmh5zskqnETjIUFNGfP8DPZyftj1h9zQFAr5kURPP2M3kGbMBLVBh
         /DbxMsNzLRQ0BW+UaO7JtPLJFuWKeje2a59BXePvnvTKRh4fkj8F3FjbCZNijPlj3L52
         hxAcBSkjJdoJk4O/iL8n6oroxgyxoN2dWv2vS31KVaAxSdncUWN9Lr2Ffh20Mf6hQfYC
         uVk2WqPKu+pbDdGir5+PmfRKJcSZARoIrI3J5YyH+IeV7a/iPoye2B7o0wdyCrs9buw5
         y7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693290829; x=1693895629;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kDhQb575zZtGvgbOfQFrrWaedCmdLDvfbJC6bCOqzL4=;
        b=guM1WNn7cNRmrJRQLWDu7xB3A1iMU+Q3fn8PNAB1MW0Bswgdro6ObhuD3k7cyRWn6u
         b1NJYk5z87tyFw+IOErY8OrVA9ZZ3tHD0yyNXkrbugmgeDIjKGcF5nfKCXA8t0+wdAK+
         lpj/g15xR3MLW300xTOJ5ywtgFwUWR4Rhr9bfna8m05hDbsACa8YqG9OP4luCa+tutgC
         LsxzgaJheqW0W7vU9/T2nuZhP7m0klf2dyoTTLw8+gHxP2rx2AZpO7qqPGcoAewnKJ0R
         wW4p+ZWFtJt8+2nx4rZiQ/ptXV4sV2leSGYc2Q0pLKTvfZdrSlLZVVBZzbv/PLmimTbt
         i+aA==
X-Gm-Message-State: AOJu0Yz4Yur+xnh/0cV7MQ128AxgpIPOjVBJY/2X315CrB84VuXpKP88
        Xh893IydJ49s3+1w69RcSDyMBA==
X-Google-Smtp-Source: AGHT+IFHPz0zE7ngWnnXF45tsOJ+fqrjSB+4GSz7x61aYxsX2j+NOzq1b3GxVSMYNK+GA5Rf0HgTog==
X-Received: by 2002:a17:906:8a50:b0:9a1:fab3:ee3f with SMTP id gx16-20020a1709068a5000b009a1fab3ee3fmr11811275ejc.40.1693290828942;
        Mon, 28 Aug 2023 23:33:48 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id z6-20020a170906814600b00992a8a54f32sm5569794ejw.139.2023.08.28.23.33.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 23:33:48 -0700 (PDT)
Message-ID: <73655c17-5246-2c96-d415-6a30497966c3@linaro.org>
Date:   Tue, 29 Aug 2023 08:33:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 11/28] dt-bindings: usb: dwc3: Add
 snps,num-hc-interrupters definition
Content-Language: en-US
To:     Wesley Cheng <quic_wcheng@quicinc.com>,
        Rob Herring <robh@kernel.org>
Cc:     srinivas.kandagatla@linaro.org, mathias.nyman@intel.com,
        perex@perex.cz, broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        Thinh.Nguyen@synopsys.com, bgoswami@quicinc.com,
        andersson@kernel.org, gregkh@linuxfoundation.org, tiwai@suse.com,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, quic_jackp@quicinc.com,
        quic_plai@quicinc.com
References: <20230308235751.495-1-quic_wcheng@quicinc.com>
 <20230308235751.495-12-quic_wcheng@quicinc.com>
 <20230311134008.GA20831-robh@kernel.org>
 <f7bd1ae7-fc38-0f29-546b-9ea4a323f42f@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f7bd1ae7-fc38-0f29-546b-9ea4a323f42f@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2023 04:05, Wesley Cheng wrote:
> Hi Rob,
> 
> On 3/11/2023 5:40 AM, Rob Herring wrote:
>> On Wed, Mar 08, 2023 at 03:57:34PM -0800, Wesley Cheng wrote:
>>> Add a new definition for specifying how many XHCI secondary interrupters
>>> can be allocated.  XHCI in general can potentially support up to 1024
>>> interrupters, which some uses may want to limit depending on how many
>>> users utilize the interrupters.
>>>
>>> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
>>> ---
>>>   .../devicetree/bindings/usb/snps,dwc3.yaml          | 13 +++++++++++++
>>>   1 file changed, 13 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>>> index be36956af53b..4e2417191f93 100644
>>> --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>>> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>>> @@ -359,6 +359,19 @@ properties:
>>>       items:
>>>         enum: [1, 4, 8, 16, 32, 64, 128, 256]
>>>   
>>> +  snps,num-hc-interrupters:
>>> +    description:
>>> +      Defines the maximum number of XHCI host controller interrupters that can
>>> +      be supported.  The XHCI host controller has support to allocate multiple
>>> +      event rings, which can be assigned to different clients/users.  The DWC3
>>> +      controller has a maximum of 8 interrupters.  If this is not defined then
>>> +      the value will be defaulted to 1.  This parameter is used only when
>>> +      operating in host mode.
>>
>> Is this an XHCI or DWC3 feature? The former should be added to the XHCI
>> binding.
>>
> 
> Sorry for the late response...message got routed to a folder I don't 
> frequently check...

That is quite unfortunate, to put our feedback somewhere deep and then
send new versions of patches thinking there is apparently no feedback.
Fix your email process, so our reviews are not ignored. If they are, we
obviously should ignore your patches.

> 
> This is a XHCI feature, but the DWC3 design is built in a way that DWC3 
> host initializes the XHCI device and populates the properties associated 
> to XHCI dev.

You speak about driver now, not bindings. If driver has limitations,
change it. Not really problem of bindings.


Best regards,
Krzysztof

