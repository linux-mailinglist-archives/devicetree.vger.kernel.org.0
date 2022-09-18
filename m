Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C89ED5BBD49
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 11:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbiIRJ7v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 05:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbiIRJ7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 05:59:24 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48BB210BA
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:59:22 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id a3so30299473lfk.9
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4ehZ01ierpa8aV+DwFDA/QfU8AbJ3Sxz0urqCktyHto=;
        b=zfbTfZTBGGrOtwcCfbQ2TIWBCBfcERkyEFmwGP882yp4QL4Z/LjPDolpNmRdxMRnel
         h4GH1vknLx8OIN8GhLFfqFHXImzyArBiAv4Mli6zjuGUIUlIqAyo0M5K0NOxw473WvfL
         LiQ9QfKnxkSCT6xBgttVDJUVs/0Zi3HPkqIelat3l7o6wPh1dspA5pn09CRFUgOQACa/
         8nl67ooK8btEibjOfIQvC7F9poEzItq0uT5PXnsA1JobO3CQHMYCGIexjrgElBsxOSJA
         zSrFbdS0VEAuHfHMLZwlmy4hlgM4fz0Tfw7GGro98L27HrwIl2VAJI5JtbEwDjWKoQR+
         Tn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4ehZ01ierpa8aV+DwFDA/QfU8AbJ3Sxz0urqCktyHto=;
        b=nx82GMGQxptRl8XNr2hDYPIZEwuI5w9TYy7bEw4wYd75buvAQrV7K6T5c7SRinZzZ8
         IW8uUubdl9NqZaF9UGfpXHBlEvblEXcvhHEBxOFJpNoFwFL5llUpcckJY+i0oE23hqQp
         T31NdBFdZ1QFo4ZCNihG/bCtEvKBd9Tv6F3M/PLBh3J/GeAtfRyhRXoXNQWHKdoNMDJR
         ZviVRYR4LDWro5UmxmB3eskVBXbuuYLJXBTg8Z+v7d0jwzvrcurfI4IRzk14XzuGdYCq
         RmHsZ6U0t3CKEvQHd0GN8GbJeKZHdeGkA+HXHpZVapa52Z9VKTCJT3znfTm+OMC7i0FR
         J9Pg==
X-Gm-Message-State: ACrzQf1UN6P8NDSAlQC9pHEEMHY10XPnT0rG+j9Jau+2LBSZ8GROMv5s
        mz7v0Fny4FYjNd9AzjNycbmzwA==
X-Google-Smtp-Source: AMsMyM48ImG4+1wZ8Ib7kLBNZkQzNRMtywTwNKeQsq6baW5JUi3+2dCgzBh1fbWoli1bPXgJu/9mXg==
X-Received: by 2002:ac2:52b1:0:b0:499:f7ac:14da with SMTP id r17-20020ac252b1000000b00499f7ac14damr4742858lfm.597.1663495161116;
        Sun, 18 Sep 2022 02:59:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f24-20020ac25cd8000000b0049468f9e697sm4574959lfq.236.2022.09.18.02.59.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 02:59:20 -0700 (PDT)
Message-ID: <286f4aee-0774-2206-3a96-5ae27dcfbc9b@linaro.org>
Date:   Sun, 18 Sep 2022 10:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH RESEND v3 1/9] dt-bindings: mediatek: modify item
 formatting for gamma
Content-Language: en-US
To:     "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     CK Hu <ck.hu@mediatek.com>, Rex-BC Chen <rex-bc.chen@mediatek.com>,
        Singo Chang <singo.chang@mediatek.com>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "zheng-yan.chen" <zheng-yan.chen@mediatek.com>
References: <20220912013006.27541-1-jason-jh.lin@mediatek.com>
 <20220912013006.27541-2-jason-jh.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912013006.27541-2-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2022 02:29, Jason-JH.Lin wrote:
> From: "zheng-yan.chen" <zheng-yan.chen@mediatek.com>
> 
> Since the items with only one const should be dedicated as enum,
> merge all such items into one enum item.
> 
> Fixes: 4ed545e7d100 ("dt-bindings: display: mediatek: disp: split each block to individual yaml")
> Signed-off-by: zheng-yan.chen <zheng-yan.chen@mediatek.com>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
