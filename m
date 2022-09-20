Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8F275BE00C
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 10:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231368AbiITIbP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 04:31:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbiITIaf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 04:30:35 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F9332D8E
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:30:01 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id o2so2508629lfc.10
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=agy8Tt80j/kRvFU4gLKj231EcFlYzic5Np99mPIQ+dE=;
        b=yDdwc5dVZfa5Ye5xdoVmY3cDbvFbZB10xPeKDFXq7D41eQXxQdn6+pvq/+yVQUdrHu
         DGcbAXGyGPQa+f0OPN16C12QivySbGeQ00/0p4ThY05fEH298++HY9ihEIaGxKFtPwsJ
         rXOYCl+R+SVx11uwBbr1Nwfp8TfXXWT+NWFNZJwT71UPDP4Dr+/FTn2DvQLFVkdCHHjM
         erEQh1kq4u/SxxmHs0X+Ndev7iZMw3iYiSfnnK90gS8yLxtcce07on6wj4UQAxkxFiXp
         RWpP21ZwmZmda/4a86qVRjeJuQoZxoIZcVt0PTNZVuvqHtyvwF1ykr3V1ecooU4biu0l
         iZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=agy8Tt80j/kRvFU4gLKj231EcFlYzic5Np99mPIQ+dE=;
        b=maTvAHw4ZharEYzhHKWV7vDss+dw7J5bYqSH6aJyMtBldDXhyGxdGST9v6rJxGS0Tp
         Lmo61PRSWCZ5hBWVH7C5vOlR1N2lfHGmgLL3WUhPDwJbuNF41jUDLGIXUm460VaFdxlX
         veXCmTyOBJCg0RKyL8rchVJatkzdB7ziTXWAv+pRgvaynZO7/sZpQ50STy8k2101AXaC
         8TvG1LTl32vja/o+0sKKsQrCy5pThOPFBiT/8W0nXBfD4AkL42x/iXqodxosrIwR8asE
         zTJmILk2RPyEHxo4UpAIuw8ujsDVz41/1LSW31yzaoA7s6y5LTdZS1VwLBzhvFoanY4b
         QPPQ==
X-Gm-Message-State: ACrzQf3zQ6Lzd9uFaFK1aMxvT5vfcCgQtq0A+5A0S+2O7Ub9q4xDi2Ru
        lc95sqdLqIrzXsXqiwVVBK6SfA==
X-Google-Smtp-Source: AMsMyM4UKGyEa5JByvPQbjpNBv7kTtyqXSl4s2097VZx6dOP0gE0xHx1NyWr1NYhR8xB7Hu7ZxwB/Q==
X-Received: by 2002:a05:6512:3c93:b0:48c:dc60:4786 with SMTP id h19-20020a0565123c9300b0048cdc604786mr7594820lfv.208.1663662599775;
        Tue, 20 Sep 2022 01:29:59 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w4-20020a05651234c400b004948b667d95sm191945lfr.265.2022.09.20.01.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 01:29:59 -0700 (PDT)
Message-ID: <7d61568d-4fb7-a1fd-8418-cad65e2172cb@linaro.org>
Date:   Tue, 20 Sep 2022 10:29:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/2] clk: qcom: rpmhcc: add sdm670 clocks
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <tdas@codeaurora.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220920023709.4865-1-mailingradian@gmail.com>
 <20220920023709.4865-3-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920023709.4865-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 04:37, Richard Acayan wrote:
> The Snapdragon 670 uses the RPMh mailbox for most of the clocks used in
> SDM845 but omits two. Add clock data for SDM670 so the driver doesn't fail
> to resolve a clock.
> 
> Link: https://android.googlesource.com/kernel/msm/+/444bd8d6e2cf54698234c752e6de97b4b8a528bd%5E%21/#F7

NOT_FOUND: Requested entity was not found
Do not add non-working links.

> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Best regards,
Krzysztof
