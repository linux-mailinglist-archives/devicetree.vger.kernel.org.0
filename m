Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B3567177B0
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 09:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234555AbjEaHUB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 03:20:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232273AbjEaHUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 03:20:00 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F6F1EE
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:19:59 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-970028cfb6cso1009843966b.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685517597; x=1688109597;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wsS6GDqgpNAmHpKdI6b5w8uOTwICMlebaNtmOgCy3SM=;
        b=UGE5VJOgPZRwK1zQ550I76tAgWk8HJshIRMkpPniZYSi1k21x7Bx8Eab4hLWC2Z+FH
         J+kJAREVWZm+nJ52KpEYA7JyVbjxCPO4faJdV6xr5jeEt4BNjLFOAtYA1K2EkjlzSMls
         xwFSMIXqKN3OEQoHAwSaJgSbJg1FT4njaVSf69Ih0Ao+qvLMh27tEw/YFvtMQbHJygoT
         hYD0szXMmYwY/1G0pTBjcLLQHBNuuU5/VOItBf+HZAS+c8dJnpva6anMSQpE9KcKNqSO
         04Uk3kjE423BN29o2d7IJUJJHNQMwU8gEetZTKRHsp9iL4c91SOQpY46q0STtwIM7gYA
         6SAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685517597; x=1688109597;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wsS6GDqgpNAmHpKdI6b5w8uOTwICMlebaNtmOgCy3SM=;
        b=eD53oLiYSbvtAL5qgb7RXDg6JvPEMwUv3gHEq8GUTMo+G3jSmTTrmSO6CB6QEJhv1g
         9XEVuT/18ebzzv0NdoVliyaixUIc7Z4G1jm2wY4KCUBOb+6WfsD0ShUGEAbp5P+qdLPg
         iE81DQjCSsTkIYH9f5L8pHlgcSzd6zJn/tQde0mdvXVQeYZeYhlxLLYPdRThagMd4JN4
         97Xmkq3VvdjtpiwixB1yZ5GwuEJfhCAasWY3U6yFucpmxP7KlZQjpRHxOc9iRyvHvpwR
         htYzYXgMLPnjfckQ/cMAX4OAyE/zL34JUovIk/HjDG0eBqH1EsucmsMCUlt2M1d0uS63
         u3IQ==
X-Gm-Message-State: AC+VfDzM9OvKtvwEWd8KOyGiDAdLRLGhQ+N9AUSfowmOQ6W9zRBjnEi0
        sYYIkaQ0Y0L08R1cwhEcIg/7ow==
X-Google-Smtp-Source: ACHHUZ5IM1zFOBAGfF7IUiwChLpT0Z/yB8ys3i5QgoDo+K7S/WmPZgCH48k4C3BiMdFd/r678IekOg==
X-Received: by 2002:a17:906:ef06:b0:973:940e:a01d with SMTP id f6-20020a170906ef0600b00973940ea01dmr4563977ejs.67.1685517597596;
        Wed, 31 May 2023 00:19:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id b7-20020a1709062b4700b0096f6a131b9fsm8409136ejg.23.2023.05.31.00.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 00:19:57 -0700 (PDT)
Message-ID: <dac15aee-1d01-dbfe-4ec3-52f296997a05@linaro.org>
Date:   Wed, 31 May 2023 09:19:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1] dt-bindings: serial: 8250_omap: add
 rs485-rts-active-high
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        linux-kernel@vger.kernel.org
References: <20230531064013.16551-1-francesco@dolcini.it>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531064013.16551-1-francesco@dolcini.it>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 08:40, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add rs485-rts-active-high property, this was removed by mistake.
> In general we just use rs485-rts-active-low property, however the OMAP
> UART for legacy reason uses the -high one.
> 
> Fixes: 767d3467eb60 ("dt-bindings: serial: 8250_omap: drop rs485 properties")
> Reported-by: Francesco Dolcini <francesco.dolcini@toradex.com>

We do not add Reported-by tags for own reports. Otherwise all patches
would carry them. Reported-by is to credit 3rd party reported who did
not write the patch.


Best regards,
Krzysztof

