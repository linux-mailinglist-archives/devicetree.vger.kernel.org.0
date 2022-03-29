Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 621F64EAC81
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 13:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235983AbiC2Lnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 07:43:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235250AbiC2Lnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 07:43:46 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 974DC986CA
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 04:42:03 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l9-20020a05600c4f0900b0038ccd1b8642so1059081wmq.0
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 04:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fn3HErbG840xG/1DKf1d2N6ycfhrWzL++y+Zz1CDgxE=;
        b=A6EragmFzz3EYNnm8I82VYWua3eXUT9qcZVuJQFeiLO+cc5t2h+KlWVF9LPy7eCWF/
         D6KG0X5veZP48rwSL5Zra3r8CFZW53W0HFFO6XYwfGwUE3eAPS1hzsbYblKMjxt0eWfE
         8aYJxfqvdaA1M6ozoBLp8gODm8f0nKwNnq1fZLyLr8LkymQ2r43oOyKlL+aXqwDVYfPZ
         wmyVWybFtiZ9AuIkXlGA+pGgrIp2nwwHJdwBT7By+EuQqY2GBW/l+lv6ToYTOlCib84k
         cncfkrPcCRDtNjt7YA3+4+wAopwNJPY/giu2SF/OqLxsyMQUbSUaR4TdnQGBgGjjHBec
         h5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fn3HErbG840xG/1DKf1d2N6ycfhrWzL++y+Zz1CDgxE=;
        b=cwOKRoOGRLM6qM1JU6HmPPnbCsm5ODSWIWF35bdeTNdncYZU6r5ihSm6rDLDIYZCfl
         C6AtJOgv7TfOP2/KD5ysAYWVkUhlyjN/Iw1Wu37DUFmxRbRaaxcBxR7Xf7aooT/9S36j
         4XRctUqdaQPsBEWTULJBZUjm0w0NPgThIEKKDxLmWLl7v83irhdrxvf+lSv+exV089iX
         fyPAP+L0o/qq+w4ZDvVkXJXPQ1Nx/4fl4VuTEP9HoOD1ha1QhoonzBVEBUVrU10eVUed
         fXeQHN4426Q68TZ2LDafsE21rSKaQdwvBmR7DbS2Db4Nkbz4xtXjIcCUU3yQUzXPzt0R
         tJeA==
X-Gm-Message-State: AOAM531p+OWfmczPOAdCNS5RvqmaIBt+aVRy5PatKEwnGgCu8l8u/159
        uDTtYS7Suiq1bHta9QjpydujDg==
X-Google-Smtp-Source: ABdhPJzOwx9Bn0AwRaBTztslHHWpRbx/LvUGOgOn/gOyid0v0Tw2biM6UgFrN4vigQJNapEEpwX+rQ==
X-Received: by 2002:a05:600c:1d0f:b0:38c:8ff8:e703 with SMTP id l15-20020a05600c1d0f00b0038c8ff8e703mr6339433wms.202.1648554122148;
        Tue, 29 Mar 2022 04:42:02 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id o14-20020a5d47ce000000b00203e0a21c16sm17397744wrc.3.2022.03.29.04.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 04:42:01 -0700 (PDT)
Message-ID: <9e1aed7c-a702-2ee7-f3f7-f2f3e2b17e29@linaro.org>
Date:   Tue, 29 Mar 2022 13:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3288-cru.txt to YAML
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220329113657.4567-1-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329113657.4567-1-jbx6244@gmail.com>
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

On 29/03/2022 13:36, Johan Jonker wrote:
> Current dts files with RK3288 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3288-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---

You missed my review tag. The changes between v1 and v2 were minor, so
please always include it in your next versions or resends.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
