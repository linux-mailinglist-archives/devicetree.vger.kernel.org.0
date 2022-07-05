Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA5B75667E4
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:26:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231709AbiGEK0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:26:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232064AbiGEK0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:26:30 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C79E7140F5
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:26:28 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t24so19799154lfr.4
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BIzEHTMWqMh7JsF86YeS7gqjx9Ex2PSiuvOi5ol8xjk=;
        b=sMFMj7CXK1XsuWte1oAma6rsyq27aPmtCxtU6FeC8VfqtYAS5KTjYrQCrGr6B4vIPH
         5a5jTbE4nbUkUCn91mKUtP9nvSN2EZLQYrGm1MYrMsZPDvJPKKEZOUWBxb1HVp3fYWkK
         hamyrAqpY/mWxopUYXdW+26OQrntTFNvXd+iPeUoOxb8AMmAXVm4njnLRziD7Elkypht
         Nn6Y/XtWFz4pQVQ0ftTqkQtSwGXIpg22c2VdHR0ehl7kTVAAvuOLW2yl9cb2nW/ZrUY3
         4FzW6RE+prEbKcQSXk8fnzwVzWHzCetEVo0oBfUhbll8+UOHzU9CotOjIlrEAf6655Dx
         NEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BIzEHTMWqMh7JsF86YeS7gqjx9Ex2PSiuvOi5ol8xjk=;
        b=XObZmSQUVZActPKimok3R9aqmrwAh1KqDSr38QncDtmAcRjUJbqoMF2WADCANWengF
         T3fD5B+jbV4g350Ic/G+fwx9Qbd87oXFstb5gEGTDOeGfodEw7IzevM4/miiNtdeHWo5
         NgiHUkl6tkBr7oa85P01afYHzh/GaEaotJdTV3tGZdcOb+xjxpYFJOjY9AdTlaqjy1sc
         rs2StWNGCFMhmaDZGJEjJisGZPGPeZn6upCHsDo3GPbczsaeKxkNpQSIAOPND1oKCvef
         FDynNMAQIU4bSEsQwIPa28MSSv4TCVLsZGeTWwessgnHg1EsngJwoGti6PARVWu8afh/
         8XBw==
X-Gm-Message-State: AJIora+gI3Z3czxtiSr0AZxol7BG6L2Zd3HQR/2xW0WoWVVTTSWO7Y7b
        Gx5PK+ERA8GE6j34fqf42lw1Vg==
X-Google-Smtp-Source: AGRyM1t6IqLlcg8LuX6oAmvIUzLOIJmrgPsOzsC/K0XTtJFexn+sq4d9phu53nQL/NLa4MS0uwMHqQ==
X-Received: by 2002:a05:6512:22c4:b0:47f:93ff:9108 with SMTP id g4-20020a05651222c400b0047f93ff9108mr22317558lfu.74.1657016787233;
        Tue, 05 Jul 2022 03:26:27 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id u19-20020ac248b3000000b0047255d21190sm5615339lfg.191.2022.07.05.03.26.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:26:26 -0700 (PDT)
Message-ID: <0e6bd0c0-4c40-bc1d-c4fd-cd13d7036ae3@linaro.org>
Date:   Tue, 5 Jul 2022 12:26:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: nvmem: mediatek: efuse: add support for
 mt8186
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Lala Lin <lala.lin@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>
References: <20220701103428.22099-1-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220701103428.22099-1-allen-kh.cheng@mediatek.com>
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

On 01/07/2022 12:34, Allen-KH Cheng wrote:
> Add compatible for mt8186 SoC.
> 
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
