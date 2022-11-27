Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2245639D3C
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 22:22:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbiK0VWs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 16:22:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiK0VWr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 16:22:47 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B289EDECA
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 13:22:45 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id a7so11094534ljq.12
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 13:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v2oVo+43zmeK6HbNWh8c2mpz+ay7hEaecDlku06A02M=;
        b=Q3RJCMgSoPY0hWhrSjRoOLAAYMadkTwIXQd5vosuyq/Jb9tLYnaBsinLUnJ3aFypBu
         0dThMOONCKHd43pP0Z9GSEdsktriZ9OWgEJkyJ9p4Txqop6QFFMVrb4Q/csothrjhHOX
         /CLlad8GNU5SVf0cpbazh+VHlP69SoT8ojUW1Fox93PABPtmUVaP+zSE+ADbJETuoLGi
         6D4cTzlsUI1Ey48Ku35lVqhUyqbYqfX7tPCKwZgBf8OuUOsMPp9GZM0Oi7RCFExon6BZ
         3aev6CV9AJ0E46lKF7Yr8tp5gs7qsmSNjWjY6i6+OL3Vj/6Xy8Z3QMqhR5F22i/ojiG6
         U+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2oVo+43zmeK6HbNWh8c2mpz+ay7hEaecDlku06A02M=;
        b=YXorYTu/FAUPVPe7fGb+5rA7LL1SGgJq8aCQEL0VGKrz83QthiCBdN4l7kCs+aMhQb
         mR4Tn0l4ZWgJAGLvGZxg2hd6Px9w7xTW3JHonmI2DH+QDk4c+DJ4iDY57FdMGe6J7kKy
         /Ulw/Bt5NK+lZFQmNq1f1UHcxQ16pJYOMIdilVyeh1qVo9zXlCi+jgjgkHXogSAo9xfm
         20FHErZm/53r59k2zNh+1lwSGmMEoE/96wNPwAxVS5MUqa3EyS3NxmzlGvFYLInANxUt
         obyJKlGv+9U5UnFpgCqJab7gY/xZFe/lN6Pog20kg559S8brz8L6NdpuTRRpv3WV0UrB
         yRqA==
X-Gm-Message-State: ANoB5pmbvusZy5/maF1TaxhcPh2ZxbpZExWG9F3zWCQTgxbV9CDH6t7F
        GJrlCDwGIvaJsBH3f9+gbC12/g==
X-Google-Smtp-Source: AA0mqf4RNzyaBDUFlxhGZ8/JLSvugK+xDQYNI8xd8Qios8WyzPg9FVP0avj/TuKFjR356WkfQ2WEeA==
X-Received: by 2002:a2e:b8d3:0:b0:277:388:3fa5 with SMTP id s19-20020a2eb8d3000000b0027703883fa5mr10820217ljp.41.1669584164133;
        Sun, 27 Nov 2022 13:22:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c118b00b0027758f0619fsm1067182ljo.132.2022.11.27.13.22.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Nov 2022 13:22:43 -0800 (PST)
Message-ID: <d58e3488-110f-cae0-6f44-c9bc54d301fe@linaro.org>
Date:   Sun, 27 Nov 2022 22:22:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 1/2] dt-bindings: gce: add gce header file for mt8188
Content-Language: en-US
To:     "Elvis.Wang" <Elvis.Wang@mediatek.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20221124075516.1669-1-Elvis.Wang@mediatek.com>
 <20221124075516.1669-2-Elvis.Wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221124075516.1669-2-Elvis.Wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/11/2022 08:55, Elvis.Wang wrote:
> From: Elvis Wang <Elvis.Wang@mediatek.com>

Subject: dt-bindings: mailbox: .......


> 
> add gce header file to define the gce thread priority, gce subsys id,

Start with capital letter. gce->GCE, right? So use capitals for acronym
and also explain what that acronym mean.

> event and constant for mt8188.>
> Signed-off-by: Elvis Wang <Elvis.Wang@mediatek.com>
> ---
>  .../dt-bindings/mailbox/mediatek,mt8188-gce.h | 966 ++++++++++++++++++
>  1 file changed, 966 insertions(+)
>  create mode 100644 include/dt-bindings/mailbox/mediatek,mt8188-gce.h
> 

(...)

> +#define CMDQ_SYNC_TOKEN_DISP_VA_START			1012
> +#define CMDQ_SYNC_TOKEN_DISP_VA_END			1013

One blank line here.

> +#endif

With all above changes:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

