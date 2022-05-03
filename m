Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A291A518932
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 17:57:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239043AbiECQBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 12:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238817AbiECQB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 12:01:29 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01B0231DFF
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 08:57:57 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id z19so20330957edx.9
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=D+3ayXGiIWunG5xftXtSVJKt5SyAcJy2+fwwapTKiuY=;
        b=r5n8OtbrS3K9irtBKE+b++XUYBykqYPbxxjb16ReRhJbBOoiJG15shu5v90AGUTXNB
         Zgja5/5KVmxkqpIDW8QBQcPdjKo2qiy7ztbJSbMWWU0Qegxdi53Q2PjiNtGQxyQH+YQK
         qajUFNtnae9QpldA1oUuOAM8BZbjb/3nttvp6/R5W/6pZv4Wy1KbX5DCrouoUe1GkU0i
         iO83KG6mUY5Ho1WB/DBL2xrrha0HXRiwXBciFlhkQPuRf8xwB2VZRGPb7td/FHdSpQ8a
         d3kvyBWMdyuMPAb3dqHzCPfCC9o9ZMbH+ohFE4hSbcbR1NlZVI/KBIq0dD308+VXDIua
         fDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=D+3ayXGiIWunG5xftXtSVJKt5SyAcJy2+fwwapTKiuY=;
        b=Ne/N3nWC+HWtgj6uWJN7brwLkXoX3nQtK19J6xh9KE596pDlQUSrYX55JfzVG467DP
         +TWawB0jFsdzXefQuKr3jio49mBe+gSTvp+MFErkbfg3hXvzB24om1ZAfVwHN90+ZYF7
         NWJSzDeSDDqbZ3po4H5dBayPlYxoFK4JirB8OQUWYiM933rT+E1ctX2dVqPTsgSRkXHt
         Gy5mGaDH6CGMw/t4t59bLHBdPlKFdJOlSUt2AowQdUCZkZkn7CxO2/pxug3lFXZc2CzV
         eA5Ej577rACOGTX4bS6V9leU2b3Qwt+7fR4TgUaLK9rgMt6qK07HvD3aF8uSqE7VnycM
         XwVQ==
X-Gm-Message-State: AOAM530TOG+1OseMhQk0gLQeXxFnJ3Rq2+Xw8srQ9oINcJXg520/7PSz
        fmI6Br06vlPhbqKiNUHcyWM+9g==
X-Google-Smtp-Source: ABdhPJxKrhXYiytBuBL2uMw9/17lCFEgVDX5YAwj0edRfiBrkDBcoqsP3eMgwqKrnOsYZ/vZMCTb8Q==
X-Received: by 2002:a05:6402:1770:b0:425:b2b5:6248 with SMTP id da16-20020a056402177000b00425b2b56248mr18454740edb.281.1651593475606;
        Tue, 03 May 2022 08:57:55 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz1-20020a17090775e100b006f3ef214e27sm4814174ejc.141.2022.05.03.08.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 08:57:54 -0700 (PDT)
Message-ID: <0df2fd83-951c-d253-6494-3b70f5762aae@linaro.org>
Date:   Tue, 3 May 2022 17:57:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC v2 2/2] arm: hisi: enable Hi3521a soc
Content-Language: en-US
To:     "Marty E. Plummer" <hanetzer@startmail.com>
Cc:     arnd@arndb.de, cai.huoqing@linux.dev, christian.koenig@amd.com,
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
 <20220501173423.2473093-3-hanetzer@startmail.com>
 <4cda3645-c4e8-1b3c-bd80-891afd56449a@linaro.org>
 <20220503134459.pplgvhcckja4ivcg@proprietary-killer>
 <75a48dfa-6fc9-aed9-b00e-d928bd9f33af@linaro.org>
 <20220503155141.ekbysx6fjom5el2h@proprietary-killer>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503155141.ekbysx6fjom5el2h@proprietary-killer>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 17:51, Marty E. Plummer wrote:
>>>> A bit weird interrupts... the same?
>>>>
>>> Yes, though I am aware that some sp804 timers do have a separate
>>> interrupts per pair.
>>
>> They have also separate interrupts, one combined interrupt or one sole
>> interrupt. However what you described here is one interrupt line
>> physically connected to two separate pins on the device yet still not
>> being somehow shared (shared as "combined interrupt"). I don't think it
>> is your case...
>>
> Unsure. datasheet just says '33 | Timer0/Timer1'. I don't think these
> timers are attached to pins, however.

So it looks like a combined interrupt, doesn't it?


Best regards,
Krzysztof
