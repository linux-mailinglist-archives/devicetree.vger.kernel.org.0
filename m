Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC1A512D66
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 09:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343513AbiD1H4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:56:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343506AbiD1H4b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:56:31 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B17155F243
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:53:17 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id l18so7859692ejc.7
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0oibHn2Km2ySnvEkLorLPqHJq9AlGnF8cV/IfEW7+rA=;
        b=jc5jg55FXTDdxCxGDJc6DGnGUOpt1hrU5hKu4fBLqD5wYzvYkglbe4l0yMxfUVQKyd
         IAZ7Czbm1m5lV5+saZGrgf/efjQgLu//xnv1zpY7XDm7/kYrFfoYBmQ0toBzzdkF+bP7
         OdiacFiHHUCor7aRXuLDuDTK3gvyLJMAtvuCEzSg5Tq6/7oyRX7PxtsJcIB2p7h2CVwA
         hEiuY004/DFgdm+4qhfT0D/WnV/KCDH+RlhJHqVQUqkq8uI1E8fiFoXu7rFCHVI2jeiP
         6FsPW6hbmNyJz4LTb6l7LJWXEuTpGSC3KL9Mu3nwGXOiS9uWYDUVWtDCIypg9A25mLTs
         UTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0oibHn2Km2ySnvEkLorLPqHJq9AlGnF8cV/IfEW7+rA=;
        b=6ju5lZrd7J4MtRm2BOdGfM4eN63wH87BOB0eg91r6SFrWV2v3slN1BpRngJHCQHtUV
         raqul7/b6kdtDUfyMLec6Liznj9taPZAeqviRaH4SmInZtYu44tMvzkvbKqcBUWG2NsK
         d+EPSMIj88HVC6ZvsCD9AQBsH0W/1RJyq/3fQwJNgXJb/iarg+8Yc826YUOrZHuRuMND
         /H03V7+9mIi5CtRzBam1vK48vN54Z6JiPJlmY76wYCl9XvJwpKpkRoygHMekRrk9UQRc
         3s+eeWkECoE5Xwpu1BVPmR33x36qgmTeyiWotz2vB3EDUl8ms4+pmpvMRIXnPtwp5qXi
         z+vg==
X-Gm-Message-State: AOAM533GmcYwwM1TMbJuYyVr8tGN4WB75t+R/jJn22dBtf1T9LV8CqQQ
        O4J0GmqYcibny+rFRA+qMBr6ZQ==
X-Google-Smtp-Source: ABdhPJxx3QKFffHZRJQse3tZOgUc10rVzWRfiShcG9PFJzOjQyDIh5pJC4d6bradtLB2Fbe8B5A4ag==
X-Received: by 2002:a17:907:7f91:b0:6f3:d6bc:cd5b with SMTP id qk17-20020a1709077f9100b006f3d6bccd5bmr3247671ejc.460.1651132396327;
        Thu, 28 Apr 2022 00:53:16 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n11-20020a170906700b00b006f39c00b27fsm5227415ejj.13.2022.04.28.00.53.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 00:53:15 -0700 (PDT)
Message-ID: <a76c9312-895f-3626-b9ba-cf71fe285a86@linaro.org>
Date:   Thu, 28 Apr 2022 09:53:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/7] dt-bindings: usb: mediatek,mtu3: add binding for
 MT8195 SoC
Content-Language: en-US
To:     Fabien Parent <fparent@baylibre.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220426134106.242353-1-fparent@baylibre.com>
 <20220426134106.242353-2-fparent@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426134106.242353-2-fparent@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/04/2022 15:40, Fabien Parent wrote:
> Add binding to support the mtu3 driver on the MT8195 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
