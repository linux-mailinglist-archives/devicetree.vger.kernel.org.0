Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34CE0582271
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 10:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbiG0Ivg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 04:51:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbiG0Ivf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 04:51:35 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76AD745F7B
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:51:33 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id q7so3632921ljp.13
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PVFH91R9182JZgovmYgx9fh+rbCW9xXMf9XMQHHcGtI=;
        b=DQKxEDaNs9dN2Rnmzv9DYf2NTRBetk5E65HXSVlh+hjab6ivhkb1o21ugBztrRqgUB
         GDwEh9iHU+TeJoILMZX+JtoSdP0Jdm6+4zyE6aCzYUraVZgR75iA/GkTu79vn8jyhR/N
         en19/Yz1DDYjFHHRnoKIOpXhCoi3/VGYfvYH3ZgxYR6pqMxLfttdWsPBNNBzdRLq6qrQ
         XXdmWt0WBz+dfdrfNmW0l8VjyCTOQ9OMYH0PZ1UaftLTaH+auhhwLM4pphpPZIdusY75
         Sn1Rqdv2UkY9xVx+wosI/GA04IxDN3sKSe9jwrIqsMbidhgRSz9agEhyz6TFmFYM5pvW
         6+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PVFH91R9182JZgovmYgx9fh+rbCW9xXMf9XMQHHcGtI=;
        b=6aaAuyXY05rJuNQwH4XF4XvFOnYdFqk+e151lTQdVOgPpe0uzhIAbH/ut80xv8e3bw
         /Ncz2bUAAV1/72mAKZ/LB8RQZUFNh5E1HFny8g0n39ExVCMDo+Ng0zsaPtExhANO29gY
         BIMJYBZ8Ajvibht1ETO9T+KXecNPcrN5Rfxs9yocQZMtxAl72As1tSJv9yoScXOCHi2h
         lxMii1QrtwYFToJNAnNtFoE6wYPkPvl4cjBomdcSxe8X7xphTLPZOgHRJT8cTbIlLCBM
         AOsyha6X+MbFFQ8Nd4CM2qM82lU+NF+vab5i1IWwM8wEjWScC/4NpP18+Xo7pJZC7k2F
         cyoQ==
X-Gm-Message-State: AJIora9oYmNEhAp2Wt/3IbUQGSmLGXoZoBvAomuEkQNC9AFKrOQ/rcOB
        tFJVwztCwAO04L4egqoYX3gZRg==
X-Google-Smtp-Source: AGRyM1viBZddp3vcu2pn8e8WUuPaFcvD+j8cQRKmZ3C0PR+Ll08SG6+N7TT8crxPgCzm9NEoi++G/g==
X-Received: by 2002:a2e:8247:0:b0:25d:b515:92e with SMTP id j7-20020a2e8247000000b0025db515092emr7302969ljh.527.1658911891770;
        Wed, 27 Jul 2022 01:51:31 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id 25-20020a2e1459000000b0025de9a05176sm3513356lju.111.2022.07.27.01.51.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 01:51:31 -0700 (PDT)
Message-ID: <90efbb20-f030-5b87-699d-741d0a769d01@linaro.org>
Date:   Wed, 27 Jul 2022 10:51:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/6] dt-bindings: riscv: Sort the CPU core list
 alphabetically
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Anup Patel <anup@brainfault.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220726180623.1668-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220726180623.1668-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726180623.1668-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

On 26/07/2022 20:06, Lad Prabhakar wrote:
> Sort the CPU cores list alphabetically for maintenance.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
