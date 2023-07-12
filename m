Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D31B775116C
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 21:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232443AbjGLTmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 15:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232155AbjGLTmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 15:42:31 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 650FF1FDA
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:42:30 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b6a084a34cso115164011fa.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689190948; x=1691782948;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FIaD+R3zG+IeSkSUIKYN7/FjM9J0ujCHdLNlAioODXE=;
        b=I9NrMFNv71nbDBkkb2bhN6OqbX+eRoQiRO3AuxWxTxaXro+Jjwhoen1VDMEl9OtqVz
         gqRfYqZyjjVKViV9+U/Spfor6DD97i5HN1OYw7M0gDy411eTUrL/R9VsEzY/e++cfTOo
         l4DbIe8NE4WG/FoJTr3c4UJWQZiEU6biYmCRIDpddzSNRdbztPI9za51JuCLhsMk1uVa
         ovyxS6Baj9rezP03HVZ+lGtk3v/sVLKmwFz8Gi0lgGX+8m1UhuwwYE2+XhmVD9xhKjUX
         H6qepFNGgT1PeZYvbnJrcRA11X6F9oU9OTlNWa6NpEAvDYCg4cjuuWzlMw0NJYaeD0Yb
         Na8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689190948; x=1691782948;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FIaD+R3zG+IeSkSUIKYN7/FjM9J0ujCHdLNlAioODXE=;
        b=ABv5hE6OyxTOy1+HXb5Mdl2k8w2Om5lPOWjIsgGLjxIYkfFyi5iMKSWa5Jq0acBRA1
         +wQL9gfcodqvCmwfQmIlhw7uMkgCh6bq7YHGkJdwTrD4o4MF8gtjagmZbBWBqOxfJ0++
         TBNBmseR7hdeDtONo7//jan1OKsj+CB+7jYkVhpnhQIkqpsa9iPHx5AaRRyKfn1E3XAx
         rt8+sa3r1d66qtlNK3l4JLkDDHF4C8Qc/wXQ1gkN795+Exrtcrt7lhHTdoGZU/jIw0wh
         BapaAYJJLKcnNsHkJ760K15loKyT+DwJ3/iUqi/IBUAGioUXvP1LXtYO6JkBTaaO7l2D
         n4oA==
X-Gm-Message-State: ABy/qLYPJ6ombtjdN5VKaFjG0OSw8JgqFadVKjAb2LO1BoqJsN+m+4ia
        gOALFW7ZH+dyZnZaqFOkBZ6rjA==
X-Google-Smtp-Source: APBJJlGoL/j2CRXfaB7Onsdnsesrdy0+qIqa9SdRzh/jrIZDLn63/iDHTEz5Bw876Y6VbC/ijnBzrg==
X-Received: by 2002:a2e:9909:0:b0:2b6:eefc:3e4f with SMTP id v9-20020a2e9909000000b002b6eefc3e4fmr17335677lji.21.1689190948673;
        Wed, 12 Jul 2023 12:42:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id cd26-20020a170906b35a00b009929c39d5c4sm2954697ejb.36.2023.07.12.12.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 12:42:28 -0700 (PDT)
Message-ID: <f4c19365-4006-50f7-6c4a-754c2a87c8ca@linaro.org>
Date:   Wed, 12 Jul 2023 21:42:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 0/2] Apple SIO driver
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Povi=c5=a1er?= <povik+lin@cutebit.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     asahi@lists.linux.dev, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230712133806.4450-1-povik+lin@cutebit.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712133806.4450-1-povik+lin@cutebit.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 15:38, Martin Povišer wrote:
> Hi all,
> 
> see attached a driver for the SIO coprocessor found on recent Apple
> SoCs. This coprocessor provides general DMA services, it can feed
> many peripherals but so far it seems it will only be useful for
> audio output over HDMI/DisplayPort. So the driver here only supports
> the DMA_CYCLIC mode of transactions with the focus being on audio.
> There's a downstream prototype ALSA driver the DMA driver is being
> tested against.
> 
> Some of the boilerplate code in implementing the dmaengine interface
> was lifted from apple-admac.c. Among other things these two drivers
> have in common that they implement the DMA_CYCLIC regime on top of
> hardware/coprocessor layer supporting linear transactions only.
> 
> The binding schema saw two RFC rounds before and has a reviewed-by
> from Rob.
> https://lore.kernel.org/asahi/167693643966.613996.10372170526471864080.robh@kernel.org

Thank you for explanation. Then this is v3, not v1.

No need for resending, but if it happens, consider naming it v4. :)

Best regards,
Krzysztof

