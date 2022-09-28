Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63CA45EE309
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 19:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233787AbiI1R0Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 13:26:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233638AbiI1R0U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 13:26:20 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E5D3923EF
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:26:19 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s6so21379136lfo.7
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=iaBM0F0vS4egIo+p/65Wr1pcDzd34fHYDBsYt35zuD8=;
        b=Vm5/O2dA7LM9byhTgJjsTEWiTpq6cbx1A7BcdH2Ae3P/5/939CIAvevcFcAWx2icSy
         6sYCxFBqORGn4L0pgWt9/FPWej0Om7OVd3JvMK5qJ/5+cqwxIi5+TFnstDTJ4hcDaOVA
         8Ufz8DMelf4OICaUFMm010gmSIyEpIT9Yd7R63XTZhZ5arbfvpX3wDLscjse15LeVkzB
         2HDjW7GG9p5boYj4CRRGcBvr3yD6qkKI70Zebvlm8O3wH6rrbfRZ8pwI0ueWhNPJmepx
         X7kCeu7k2CMlj4PxYoPEFKCOHT6E5x1IVEV2/nC+W7hYCSP/oc6EfMLdgXaQ/LN5H+m6
         hBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=iaBM0F0vS4egIo+p/65Wr1pcDzd34fHYDBsYt35zuD8=;
        b=SODLcaJ2bveLRe2WlHmgKWCqphAA9txiA/Jp/ZstsPxHiUteuu25wCn4c9yh9BNBFU
         mZwcdmzH3XSyvgxc1SWQE9xrrofUAsB/m5/EkJa4GXE7zaUPdYG6WBzZ1LMmBJXpxfTc
         SA4cJMGApyirHUdEDBi0UUX1kmnPgxdUnMP8n2umUkUXsSbpY+w8q7LIuTCctLLGxHHp
         tqIY3sz5C1I5GoBoi05sudpROxUV8KYXHy42hOqYU1qJjGslgIP5Ru/Ucfw5lKH5MQ6y
         6chQP9pHtn7v1KtsA/zgTTJAWjHhURgX+T88Dvp8LHXy599eyn6ijLyiqqIbDAzSJnJN
         KbyQ==
X-Gm-Message-State: ACrzQf0+8iihQt62w57F/UYzXwkj1w+r0JssB5dpLVwThruzV6au69t/
        6Yb+hpSNAlSfmvnD60OMPAtjEw==
X-Google-Smtp-Source: AMsMyM4DHKDdL4v9sepFSeuj5HbhsSN0dN9rFWUBcOnDLKUvgTtOG5lza4guiF8m6cN/mojNElNGkg==
X-Received: by 2002:ac2:4c50:0:b0:49a:3768:da81 with SMTP id o16-20020ac24c50000000b0049a3768da81mr13102942lfk.247.1664385977386;
        Wed, 28 Sep 2022 10:26:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg40-20020a05651c0ba800b00261e7e7b698sm494329ljb.123.2022.09.28.10.26.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:26:16 -0700 (PDT)
Message-ID: <186bc17e-56d2-f125-aab9-f47bf3f45b79@linaro.org>
Date:   Wed, 28 Sep 2022 19:26:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] arm64: dts: mt8192: Add vcodec lat and core nodes
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?B?QWxsZW4tS0ggQ2hlbmcgKOeoi+WGoOWLsyk=?= 
        <Allen-KH.Cheng@mediatek.com>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220926105047.19419-1-allen-kh.cheng@mediatek.com>
 <4d1e8600-f73d-8d2b-2e7a-1b75be7624bd@collabora.com>
 <d71334b63427df73d01ff1b9fa4d2dec94ad9c95.camel@mediatek.com>
 <05ed341b-2db3-620f-7a70-dcebfaa66f1a@collabora.com>
 <172e10ee-22fd-ccec-1a5a-7bd0a29dbfc4@linaro.org>
 <68e1c8b0-04cf-acf8-b6b6-97d9eb8a7c4a@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <68e1c8b0-04cf-acf8-b6b6-97d9eb8a7c4a@collabora.com>
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

On 28/09/2022 09:58, AngeloGioacchino Del Regno wrote:
> Il 28/09/22 09:04, Krzysztof Kozlowski ha scritto:
>> On 27/09/2022 12:17, AngeloGioacchino Del Regno wrote:
>>>>>
>>>>
>>>> Sorry, my bad. I alsways run `make dtbs_check` to confirm dtb with
>>>> bindings. I just think we didn't limit node names in mtk-vodec
>>>> bindings. I will pay attention next time.
>>>>
>>>>
>>>> Since currently the vcodec lat and core nodes are absent from the mtk
>>>> dts, do you think the child node name should be changed to something
>>>> more general (ex: video-codec) in mediatek,vcodec-subdev-decoder
>>>> bindings?
>>>
>>> The video codec is mt8192-vcodec-dec, while the other nodes are describing
>>> the VPU instances (and/or vpu cores)... I'm not sure.
>>>
>>> Krzysztof, please, can you give your opinion on that?
>>>
>>
>> What's the difference between them? I understand parent device is entire
>> block of consisting of multiple processing units? If so, video-codec
>> actually could fit in both places. But feel free to call it a bit
>> different (video-codec-core, video-codec-lat, processing-unit, even
>> something less generic). Sometimes it's tricky to find nice name, so I
>> wouldn't worry too much in that case. Just not "mt8192-vcodec" :)
>>
> 
> The parent device is the entire block consisting of multiple processing units
> and has "global" control registers; children are LAT(s) and processing cores.
> 
>  From my understanding, the processing cores are physical cores of one big VPU
> and, depending on the actual (current gen) SoC, the VPU may have one or two
> cores.
> 
> Right now, the bindings want vcodec-latX@addr, vcodec-coreX@addr (where X is
> a number, like vcodec-core0, vcodec-core1) but, in my opinion, changing that
> to video-codec-lat@addr and video-codec-core@addr would be more descriptive.
> 
> ...Or should we simply leave the bindings as they are and just go with the
> abbreviated "vcodec-(hwtype)" names?

video-codec-lat sounds better, but I am not sure if it is worth the
churn, so I am fine with both.

Best regards,
Krzysztof

