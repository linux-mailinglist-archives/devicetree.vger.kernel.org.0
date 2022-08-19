Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5968F599C4D
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 14:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349241AbiHSMyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 08:54:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349242AbiHSMxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 08:53:52 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B154613E28
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:53:21 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z6so5994235lfu.9
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=pr7bhrt5RID2dCUgycRa3zMYdNhJ3IqbeowKhh7I+KE=;
        b=Muww7Fp6z3TLBmnI9wgwpz5L/tNKqHY0CRDPQD4+eVh3MI8VFLnvjHvttcUtx6KqBG
         fqjFjRlicTbmv4GsPbrtBwsaOhVIYDKhwYinqaev9lkoltjVxJWUzB/gO6Az6Tnu5zB3
         8ykUvzjlBHLWIJSkHcmmM5NVviZCT8FWquVXebmXPtpC7HlPqvv0njv+EDeSet4eEhmS
         A2EVoZkbKvd36wUGpTI1uswLPcH3eTtdgalsxPkELrtxvIn4ApRWksbAT3pPdiVUVYIF
         kDEsK73osykelqrEEQNJy4qRa85LPnulZ3WHdaYgb8E9XxJGIwM4+V6v+UPjSDssu4P8
         lX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=pr7bhrt5RID2dCUgycRa3zMYdNhJ3IqbeowKhh7I+KE=;
        b=iBjJlUJPBf7EEG+V/kO82d4nys0U+tqPgOTU9hwR4hMzS7fs+p9h3MjZOqNE+z6IAu
         kBO7IEkwI6tL070hjWBabyuj0GiKusUH23HsutE3AcmzF18TbseZAqe0+TFgyU4s0Gv4
         TKl0Ee3NF1gDjAqxmOQqEuf4qu+Dl22e5AbENSBEtvtotdtZdOgAVTk/SSo/ZD9zh7T1
         0vCU12Ijt9IMCdII+Ox21mPD6Aioaesvz1vdv66w8CDNIEjQtcdpB8MRWCOH/gVYD4mT
         sXhOcsLU4sCzb9Rf1rN4Y4k/5t4uFH7QBDVkwrIedTj92wbKOcqf5mpxTs4Mwborl+yt
         Ftfg==
X-Gm-Message-State: ACgBeo03MogxG57qtlGVs7xvKa196TXzhGs1HnyW4WLRr4erZt1WNIrN
        4a6sw3AEl8b2ggN9+H926XiCO4KoQxLF8V72
X-Google-Smtp-Source: AA6agR4FIHTx2lqWROLFunTvAZJFkIWDWBQqO7e+yPqb3ua4X70I0FUz5U3OFnmedTqWSw6DG45kGA==
X-Received: by 2002:a05:6512:3048:b0:48b:745:621c with SMTP id b8-20020a056512304800b0048b0745621cmr2241608lfb.620.1660913598597;
        Fri, 19 Aug 2022 05:53:18 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id e8-20020a05651236c800b00492b0d23d24sm510523lfs.247.2022.08.19.05.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:53:18 -0700 (PDT)
Message-ID: <e5572e77-4ba5-d8f3-4e9e-04ac5dc416fe@linaro.org>
Date:   Fri, 19 Aug 2022 15:53:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add scpsys compatible for
 mt8186
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Lee Jones <lee@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        MandyJH Liu <mandyjh.liu@mediatek.com>
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        hsinyi@chromium.org
References: <20220819124736.21768-1-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819124736.21768-1-allen-kh.cheng@mediatek.com>
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

On 19/08/2022 15:47, Allen-KH Cheng wrote:
> Add a new scpsys compatible for mt8186 SoC.
> 
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> ---

No DTS using it?

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
