Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C434D575D25
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 10:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbiGOIPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 04:15:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231236AbiGOIPQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 04:15:16 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 419A76BC0A
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 01:15:15 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id u14so4917516ljh.2
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 01:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=e+ERE0KIoScFnNn+zM8jJN/meHoLJnU/KJ0nScp1cAM=;
        b=ej3ctc4UQJ654wtTtLiTxBvgpCnZNLjLyuOrdNOd4+CszA6zehRmllfuaZyRbmchIW
         fBkyZGtvSC/ZH5Cqqs/qqQpp5QGpdeDQkpQ3unibnm79+FkU37BUoMSM6Ow9yQOMOSa3
         xX9sIIHxstIPDfNtEeikuNKW5bG/+RBrTvUU5nCWNiqxnbZQSm8p0/mFvaYqqug9jkMg
         gVul9xFyT+rmkbxV7/ysJLSv25941FpziMavn0n4MR+pUtrdUHj3UnzY9u+7RshYbrxe
         9IPYQ3QcGDIcPrhE8EkFnx0ht343qSG0X68toTsNL/ymMAY7OaTaenZ51p7VM0UWbSsw
         hRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=e+ERE0KIoScFnNn+zM8jJN/meHoLJnU/KJ0nScp1cAM=;
        b=1KkJlNaLasksTIc9M/Ze8ILOBY3Udm+J0KXWEvx0BAiWAJoQkOWYl6bNqBWyAuw6Ny
         Xj6Z2/eDxwCYCsYB6uxaJ3+5m+8aOLSinojltxpx81wO4nhyRhrp43kdo4XPXp9ietOR
         L1NoSkcoa7dVHqdJPiq3cNlI3l4sOdSOR+JTRteonSCAolHGWSs1DLu5OOOas5L/BOEY
         Xo+g1qIkPkwXbD5RDhyOETA2ErX6GflEojHei9Lmh2nrhIZ7FDoQFTZBAGBC+XJQQLmq
         XzbsEtOKLAqagzS7fs7k48e2JHQn9r5gB2D8PPhV/tW0J6Ac6zFASc9H+dPLm6EweJlh
         h15Q==
X-Gm-Message-State: AJIora8UVjGIMYvdoqgM9GBaGinAwFiUsdTnk8AHAkfGT0h64PpPaQTM
        qolvsVL8Z/t1V2sizb7HrXdlmA==
X-Google-Smtp-Source: AGRyM1sMtUQaH6P6ehwbJuYCX/2dAmVEbQZVwJArYB54qbYI9BEIAead4/d8WxFm00HQoj3oVBoAyQ==
X-Received: by 2002:a2e:8719:0:b0:25d:7650:6c06 with SMTP id m25-20020a2e8719000000b0025d76506c06mr6336445lji.330.1657872913617;
        Fri, 15 Jul 2022 01:15:13 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eba16000000b0025d87966100sm632898lja.140.2022.07.15.01.15.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 01:15:13 -0700 (PDT)
Message-ID: <631560b2-58f7-064a-020b-d8029f04e451@linaro.org>
Date:   Fri, 15 Jul 2022 10:15:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 05/19] dt-bindings: power: mediatek: Refine multiple
 level power domain nodes
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220714122837.20094-1-tinghan.shen@mediatek.com>
 <20220714122837.20094-6-tinghan.shen@mediatek.com>
 <c2e9f890-98c2-8f09-952d-495f2b57a254@linaro.org>
In-Reply-To: <c2e9f890-98c2-8f09-952d-495f2b57a254@linaro.org>
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

On 15/07/2022 10:07, Krzysztof Kozlowski wrote:
> On 14/07/2022 14:28, Tinghan Shen wrote:
>> Extract duplicated properties and support more levels of power
>> domain nodes.

Can you guys stop cc-ing all the non-working @mediatek.com emails? Every
time I got a bunch of bounced:

550 Relaying mail to weiyi.lu@mediatek.com is not allowed

and other like that.

Really, it's being since some time and it became extra annoying.

Best regards,
Krzysztof
