Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A51345ED5A6
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232294AbiI1HEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:04:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232024AbiI1HET (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:04:19 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00047B2842
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:04:18 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id a10so13393882ljq.0
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=mwAW3kmbmDfR1+nb7qnTndxnvmh/2aETOKBevREMWrQ=;
        b=CNGqXtAcaIeBmAxYAJ0byEsnryDhT1j8LXtNEZC89v3C3ZmEx11TlPNXbVbeJLQ0Lb
         xIhneEaU10oxpfk88fXbYcTwQe3hGzB2EYECN/HuP8YBaU1jQWFORx5CmmNBDFkjqEV7
         5XspajX2oseOSGwGSJ5ZnZYOYJ7ABUV+EY7pyV0Chs9zaQVW5Vgb6ICcnGz0LDvqdMKQ
         5TL57IW5VFaGQOXb9yYZ5Ii5MMxWvCQU8BO6TymtTtCOeoZbC3PtqQ/iRQSRcg4ROyc5
         nGphflzOkRin+guhTtojX9Qw2rh42O2/AhWywFWGZi4MY1si46O+oHF25YBAnfHshgJn
         5muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=mwAW3kmbmDfR1+nb7qnTndxnvmh/2aETOKBevREMWrQ=;
        b=MiwsRgwpxNEf0oGbqtrR7cy/kLEHj2tEoJq0VY3tcfzg3OIQw1uNl/kWvd4PqHL8Pq
         XKTrnBxghHAweVS+uZX9tEoGJoMSy2SNUm7a4OFSBwvfpi57dRmdIEyd+Alt+6GU7RvA
         F4v0hxCY6EOvDEBRlKH2Z8UqoCs4bGU2ZO2gl1SqslXxkn72yh9IqOESimzaspwa1TK6
         0NqzdfjEFmHS+4e7NJPa4mooBR6Uor2akd2x8l1iFMsTEySEgZfOP+qjRLglIo4uf3CU
         AIS6glNC2UrG0qSOq0BOJYU6LFka8OO/CaBxLgkJgGyo8y5dr1JtWVSu4JoBs3NrQOK0
         Cx4A==
X-Gm-Message-State: ACrzQf1nkOeeADyS5Ua/6o6p/vBR2n1br/mkdjxhsUq+3t09qnzzZG/w
        b3YxUEhQkE86sAPFEHv0ikED0A==
X-Google-Smtp-Source: AMsMyM7Iz+rfJ70a9QQjtzGMPQ27BPaw9Y+gbWPCPlqtyf14Xpi5T4/g+Oohx5FDgMEJ/lkDqJM73w==
X-Received: by 2002:a2e:a7cf:0:b0:26c:541a:e04c with SMTP id x15-20020a2ea7cf000000b0026c541ae04cmr10820108ljp.425.1664348657257;
        Wed, 28 Sep 2022 00:04:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id be12-20020a056512250c00b00492ea54beeasm385297lfb.306.2022.09.28.00.04.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:04:16 -0700 (PDT)
Message-ID: <172e10ee-22fd-ccec-1a5a-7bd0a29dbfc4@linaro.org>
Date:   Wed, 28 Sep 2022 09:04:15 +0200
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <05ed341b-2db3-620f-7a70-dcebfaa66f1a@collabora.com>
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

On 27/09/2022 12:17, AngeloGioacchino Del Regno wrote:
>>>
>>
>> Sorry, my bad. I alsways run `make dtbs_check` to confirm dtb with
>> bindings. I just think we didn't limit node names in mtk-vodec
>> bindings. I will pay attention next time.
>>
>>
>> Since currently the vcodec lat and core nodes are absent from the mtk
>> dts, do you think the child node name should be changed to something
>> more general (ex: video-codec) in mediatek,vcodec-subdev-decoder
>> bindings?
> 
> The video codec is mt8192-vcodec-dec, while the other nodes are describing
> the VPU instances (and/or vpu cores)... I'm not sure.
> 
> Krzysztof, please, can you give your opinion on that?
> 

What's the difference between them? I understand parent device is entire
block of consisting of multiple processing units? If so, video-codec
actually could fit in both places. But feel free to call it a bit
different (video-codec-core, video-codec-lat, processing-unit, even
something less generic). Sometimes it's tricky to find nice name, so I
wouldn't worry too much in that case. Just not "mt8192-vcodec" :)

Best regards,
Krzysztof

