Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FDBF518359
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 13:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234754AbiECLkx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 07:40:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234748AbiECLkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 07:40:52 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D44BB34BBD
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 04:37:19 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id i27so32857914ejd.9
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 04:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=X1FUNuB7P3eW2ayDNUqILdNTj2LgjfmvS/GJDjAZwJ8=;
        b=m1lsa/lUBG13ARmSDKBacb1BxkHOLDYVNgdzx87jaByNzrYBqQjteQH9jkfbbdF0QO
         gVBjSQDRDw79CP7VbvuDmFkUQHW5Y/2HQOpqKUZd50/mRQE0HrMFgj8B66PmfYRy61kb
         8mQDe2M8M3SeuqAHv+CkuKeCTRxKJ8py6uI2LM1l0QxqNtLGG3TQ/E1drhj9elaMYM+Z
         xFA/t/PW27qFlRei0Or6PigQwyezhQQlkaMdEd86vK4ijPxTDPA3k4qBDuVAyd7WmywV
         UJb9Ji7I8Ftv+i2NiOVJKZ3oCXUG0kPPc9hYXimNdHyqsP34bD3r76D1aIy486doAtNa
         cl7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=X1FUNuB7P3eW2ayDNUqILdNTj2LgjfmvS/GJDjAZwJ8=;
        b=bmXjh8EJzNeXi7JXgqYUJxt3cnogWnl+M5j/vxdOvRKjaoXFoj+NNaNYe/z1gyPjBI
         +EXNqyvxZGaPK6w5G5XxQufS2f3iluAGsGXHs0QtX6UYNip5kSRPQceKI/g/Wz+LOz8E
         TqmV4cc07IuAp3tdwpHmBEXNWDLqFnKbNYR9iMcyTizm88WGiL82u5NDQral/PKDEup9
         1d9A6aLfGsrPyj2kfa/SNeGA0B2NVgvSUcrDXNyWGW5e5aKcEHJD5FyNwH+LeapEXXfi
         HS1ytvOZ0DixeM56Uo4JN+Sxr8P/wvP4LomEQoojs+v3hBMj1apRPD1uGS//J1/46qhB
         1t0A==
X-Gm-Message-State: AOAM531eijafLpXKuxw2jWTSW6X/y2cNQ5AV6sRlezCNze0X7M9l7JLF
        Tq4kce3vh2sf66D/DsoDrCazFg==
X-Google-Smtp-Source: ABdhPJzQ+6Vtojorbgz03fnGzcETCdUI4hWoJhuVofseBZB8aIdh7DtxCNdBnYFVXj5i+orsRW9lFg==
X-Received: by 2002:a17:907:1c9c:b0:6f4:2918:5672 with SMTP id nb28-20020a1709071c9c00b006f429185672mr12582950ejc.439.1651577838380;
        Tue, 03 May 2022 04:37:18 -0700 (PDT)
Received: from [192.168.0.202] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l24-20020a056402029800b0042617ba63a7sm7841464edv.49.2022.05.03.04.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 04:37:17 -0700 (PDT)
Message-ID: <b7bf8ab3-9680-6318-a575-bb1dfaeef405@linaro.org>
Date:   Tue, 3 May 2022 13:37:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC v2 0/2] Hi3521a support.
Content-Language: en-US
To:     "Marty E. Plummer" <hanetzer@startmail.com>, arnd@arndb.de,
        cai.huoqing@linux.dev, christian.koenig@amd.com,
        devicetree@vger.kernel.org, gengdongjiu@huawei.com,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux@armlinux.org.uk, michael@walle.cc, miquel.raynal@bootlin.com,
        mturquette@baylibre.com, novikov@ispras.ru, olof@lixom.net,
        p.yadav@ti.com, rdunlap@infradead.org, richard@nod.at,
        robh+dt@kernel.org, sboyd@kernel.org, soc@kernel.org,
        sumit.semwal@linaro.org, tudor.ambarus@microchip.com,
        vigneshr@ti.com, xuwei5@hisilicon.com
References: <20220501054440.2434247-1-hanetzer@startmail.com>
 <20220501173423.2473093-1-hanetzer@startmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220501173423.2473093-1-hanetzer@startmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2022 19:34, Marty E. Plummer wrote:
> Resend RFC.
> 
> Changes in v2:
> - Actually include the dts files.
> - DT Bindings still missing, as the the driver is not quite complete
>   (need to add the reset controller bindings, have't quite figured that
>   out yet.)
> 
> Marty E. Plummer (2):
>   clk: hisilicon: add CRG driver Hi3521a SoC
>   arm: hisi: enable Hi3521a soc

Still no bindings for boards/SoC.



Best regards,
Krzysztof
