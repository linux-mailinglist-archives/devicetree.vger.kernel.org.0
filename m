Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86685B1ADB
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229700AbiIHLFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbiIHLFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:05:37 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60C2673311
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:05:26 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id k10so12503856lfm.4
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=p3mPC2cPaInFmAeklC56oT75879Idr5XG9yjUxhv44U=;
        b=wTpC8oQXo/zokqRb+8UFUd++gVxpmEjj8BADNnoHGguwvxCjc2h/4FnB2J5nt+CBgw
         g9/i81nZjGtVVlzpN4o56DsD8sIyoAfRU8pry9YoTQmO+FI8CdV942vljnqjlGUFvmfT
         lTiohJg6lIzUY+hsKG4gnCdZXq7VEOI8S41XAF1e+2iYxfn4NW4lnzkte8s3gbg4PhmA
         LiiAeI/ECdl8CHw1xMg5llHY3iQvbIG7+THQg450jUyJ6ZdqpbBual9auJh3vPmZPBTF
         1MuFIU/eu2tWrtf3qQF2etbiAsGemmI2uxno4tCmjxR+xw8KL2ikM+1hNVjdT8Uda0CY
         Ygeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=p3mPC2cPaInFmAeklC56oT75879Idr5XG9yjUxhv44U=;
        b=Lp3ZtJWAIhc0C8mA+C5/MBgTWIeGETJ+q6XyLBARpH/WW1zB6r4DO6RrFc2UfFMXRq
         3lQorc2moY8qcgBeYg0hakSMBPqGuCZWKHYOVBy8gc4aZ6UdCWclofHxDvVCLkwWr2uJ
         FPQwygvvbAryjDDEmOupFYbRzrxicrrcCpFcxG9PZ17EvR2+S9odpTEpRRJqPF9TpLsH
         7w8X3CQ3S5JEzPx2G1u/JWyL5+MYw9sTWO7wCOXnOiXoR7D6/8M55rr2m02xkVSqiccj
         8gvHH8kwKnYW5TkSOzr5Qhmc4OLzyFnrM9Jq65YBiw8Mk23vg0VWgEicGHjBfPDeArDY
         Rc+w==
X-Gm-Message-State: ACgBeo1gulkxYBngAMk0jdcqC5SuHc3yFFpzAReXir3dSmfs81bx8Ewf
        f/yv9M6NXJCQ6MxL5jVZJPM+cw==
X-Google-Smtp-Source: AA6agR4cZ5EPIlWxxRiIKQtdKXOw1kzJkEpr2MWTgEF8O31rgh2d8JLtxo42CjbNp808ul2r6ZWGcg==
X-Received: by 2002:a05:6512:39cc:b0:498:4acc:2908 with SMTP id k12-20020a05651239cc00b004984acc2908mr972179lfu.282.1662635124177;
        Thu, 08 Sep 2022 04:05:24 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b14-20020a056512070e00b004945c1c5cccsm273619lfs.268.2022.09.08.04.05.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:05:23 -0700 (PDT)
Message-ID: <9d743233-158a-fe77-f3e2-d83a0b10bd81@linaro.org>
Date:   Thu, 8 Sep 2022 13:05:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: mtd: spi-nor: Add reset-gpios
 property
Content-Language: en-US
To:     Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-kernel@vger.kernel.org, saikrishna12468@gmail.com,
        git@amd.com
References: <20220908064428.2962-1-sai.krishna.potthuri@amd.com>
 <20220908064428.2962-2-sai.krishna.potthuri@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908064428.2962-2-sai.krishna.potthuri@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 08:44, Sai Krishna Potthuri wrote:
> SPI-NOR flashes have RESET pin which can be toggled using GPIO
> controller, for those platforms reset-gpios property can be used to
> reset the flash device.
> 
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
