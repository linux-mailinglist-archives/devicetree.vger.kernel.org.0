Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCB6360FB09
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 17:00:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233473AbiJ0PAU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 11:00:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236044AbiJ0PAQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 11:00:16 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDCB12AEA
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:00:14 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id d13so1099246qko.5
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EmShqsgjReuSlQ39YbD/kmka875yPOjELnt/kPrlVCU=;
        b=Z48pJJ47oTLq8C2Vx3cKEumhdQ6iM4gOlUrK8dIDkDeTO14ftEvPo06sR3x/kpRUr+
         jzYqKKpp5DOl9NjjkpzL4wI4T4spuqKBNdxQnH9BTxf9KMkx8WVwiswrhWJsWOSLllai
         3yVhi77oClci8RQCCreVzg/bABGMqpGdELUgII8I971onXiWl56vnlDv0fq914OByYY+
         9H8JJFt8+amwGnSPGxkI+VKiRfFLVeV5p9VGl1cVkBv9oG9KvL6ArfyVkBmKzA3BcFjM
         DG/9OAjUGQ0vhxyO9RO2trk4GTzzcxU2ZQMGo2LPDxI2z04igXalS2Aopu3/zC5epkba
         J8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EmShqsgjReuSlQ39YbD/kmka875yPOjELnt/kPrlVCU=;
        b=Hn/IFr6qPo+q/et01npERwhTLFsGg7O/sySKiUm1c/EdUeicaIkYdBw+y1mnn4u29u
         jQlHMD4xZJd3aOwxYYVRISTxfjxaK2i4ZYIqn2ZNdJMS0z9JzB0dmQU89ooQHYvvnWPT
         oFZ5SOEiHVgyiXNtO+JTxuwMNN/zhc/i3B21ykKpcP5kIPzZFTh3JLQZWrjqoz4QODnS
         GgszhaIj+cDNlotRAvEvWfdjP9bLToDEPKAzlnGVLpNpC7LXRhqiCfdf0qsPREOvm2Ll
         tNl0pckL4nuk8AeGFTvcYyKC3hxj0mBoxSm6odGiz/B8VTyk+s572ERIUS5LTMPrhisU
         vY1Q==
X-Gm-Message-State: ACrzQf2oOHo62F75jbjIyiXuyQ+UtLAAjTnu01l96PX4GAjIlOP/yZNH
        cbFsf4qv2SGrQW7SygNmxmHAUA==
X-Google-Smtp-Source: AMsMyM6wb7umR/R2rOX8AUcsRn7/fxrKV4r3sUFfTg81TBymC2MmGlahWia9RE9wrnaKeN+womk7aw==
X-Received: by 2002:a05:620a:4548:b0:6ee:deba:2795 with SMTP id u8-20020a05620a454800b006eedeba2795mr35412612qkp.621.1666882813995;
        Thu, 27 Oct 2022 08:00:13 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bs15-20020a05620a470f00b006ec09d7d357sm1134232qkb.47.2022.10.27.08.00.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:00:13 -0700 (PDT)
Message-ID: <2a09aec9-96c3-0ea9-a2b5-4a04c9982bb5@linaro.org>
Date:   Thu, 27 Oct 2022 11:00:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 1/3] dt-bindings: rtc: convert haoyu,hym8563.txt to
 yaml
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        a.zummo@towertech.it, alexandre.belloni@bootlin.com,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
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

On 26/10/2022 18:58, Johan Jonker wrote:
> Convert haoyu,hym8563.txt to yaml.
> 
> Changed:
>   Add clock-frequency property
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
>  .../bindings/rtc/haoyu,hym8563.yaml           | 60 +++++++++++++++++++

https://lore.kernel.org/all/20221024165549.74574-7-sebastian.reichel@collabora.com/

Best regards,
Krzysztof

