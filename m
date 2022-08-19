Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 845BB599BB6
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 14:17:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348850AbiHSMQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 08:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348503AbiHSMQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 08:16:03 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F29E1100959
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:16:01 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id z6so5876122lfu.9
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 05:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=iRQAht+syD+WoClHi+abQcpzAmB47QGZmxwK52W8goQ=;
        b=gAnalwOyubLu6+wLXJWbeHG2l/u2fmMgVQ9Vpx1zAjL7bFzAM5ZzxJQcJDTeot4yn+
         i1AJkCiTdquYltpTVt2ufhmroC5Uj/FxxUY6TdC9cKeyHf3f/ViVjSeGky44Bm+U7x03
         7UcAcO4Ol3ry4gVYmwiLyIvga5mk111OYk+z1mTQjAUBS8QbknoRSmXCcSeqxp3J4BAM
         lGS55fHy2ePWP/sOp3TCd1gTP+zRBRsgcPLcehqXQBBqRL8CghXkoR/xGnXewBmiDEEG
         oqeNqSFRTsqamvLgd0nUvdFvmZ0A8GCy2DBVQx14FWpRe3kQcv0YPrMQacMchQJe6X1b
         96MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=iRQAht+syD+WoClHi+abQcpzAmB47QGZmxwK52W8goQ=;
        b=NeVpaizANCKeKz8lvHIQWyRB0NqNsGoVHo+ETKyHUxy1m4GFl3LCu2+Yx2qtwl0pNJ
         mMZo4RrRqySsX/1ZrRwgC0agv9kBsTjb+kX87y2eZ5KlxmT5627VXyWb4APxUsbCKdVo
         uGyJ9jMssJkh7A1XrbEqOY4C3MyIgxSxWpM6gK3qdxA9B+5ggLuxydOWpSutjMOHnTvL
         yPB8dxuvHyUy7cCcC+rsMh/KBBBl1fO43Amnl/B6ZcftPvkFHVw09/6EYr/77+7n8+JH
         DLW8FTeuKssWNiLBILfhwPRm4iEYlfWRDsMChyuF1RisrO/hFv6zM7kM4g6o4qV2/Osu
         dyYQ==
X-Gm-Message-State: ACgBeo2LtGHrP/E3Sw4R5lwIj8e9Q53bZ+lf6uEWFtTQsv1An+kxO0rO
        5UmQSKc1Gw8myCGlivI+CiVloQ==
X-Google-Smtp-Source: AA6agR6ZzDgldit3bbnQaHeffN9D/ccyNG3aT6Z0pYd8NszNFSXmXT7adl+3BQtJYB1uFOadxcnBlQ==
X-Received: by 2002:ac2:5e75:0:b0:492:c50a:3a89 with SMTP id a21-20020ac25e75000000b00492c50a3a89mr1449763lfr.68.1660911360346;
        Fri, 19 Aug 2022 05:16:00 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id t14-20020a2e8e6e000000b00261af4754bbsm594964ljk.41.2022.08.19.05.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:15:59 -0700 (PDT)
Message-ID: <438da392-f419-ad76-7e91-aa4aab36e12c@linaro.org>
Date:   Fri, 19 Aug 2022 15:15:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/7] dt-bindings: phy: mediatek,tphy: add property to set
 pre-emphasis
Content-Language: en-US
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eddie Hung <eddie.hung@mediatek.com>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
 <20220819091344.2274-2-chunfeng.yun@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819091344.2274-2-chunfeng.yun@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2022 12:13, Chunfeng Yun wrote:
> Add a property to set usb2 phy's pre-emphasis.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> index 848edfb1f677..aee2f3027371 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> @@ -219,6 +219,13 @@ patternProperties:
>          minimum: 1
>          maximum: 15
>  
> +      mediatek,pre-emphasis:
> +        description:
> +          The selection of pre-emphasis (U2 phy)
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 3

Instead of hard-coding register values in bindings, you should rather
describe here feature/effect. If it is in units, use unit suffixes. If
it is some choice, usually string enum is appropriate.

Best regards,
Krzysztof
