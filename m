Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 737A75E8EA3
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 18:55:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbiIXQzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 12:55:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233790AbiIXQzI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 12:55:08 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C37CC2A26C
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 09:55:07 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id u18so4748194lfo.8
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 09:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Kslu9gWI5Bsepm9anE7ZtjX8r8lAk5DUv7j13gzu8oo=;
        b=iVISyYmgLojKefdhV8UjiMVodB9TyAQjuY4ePzM77DdgaXO7BUgWvM/uZXStzNLrBm
         AzBnAtvknqrWvm4waD+qtj5XkcGe74uaLk5DaHeQxxwckJrJwfX5RUF06FQpHd1x9byq
         qNcatZpJ4VXVYViqHytWc3O4VshmiEAW9cWCfx/aPJ+Jr8a1CMd//nJH2Dxk/NYxbFHs
         06J0DqzyRIYN/Cv5fUlS2ZWLs368maeavzvBLJ3xZn8gNht+0Hycvb92TXdmuChVewel
         6aY1OQKOv1KdOtPMOdVxmfjnay4ZM/m0T99MxkvsqxKKRDaW622IV7YaFcmVqxztV12D
         L5WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Kslu9gWI5Bsepm9anE7ZtjX8r8lAk5DUv7j13gzu8oo=;
        b=Y3YXSlnRIIVm2pECs3a1VSYYXtwS0twsTO9La2GVqfBFbCyTIax5UV1+Z18qs50npH
         r8ZFOKLt3DL1MwhMMi847ImouDhdM06AP3sXa465gQ8thy4lJtpYKXM0yxnd2PQG6efo
         mVOukKRHEt4qL1TI8pcquaknAIwlngUsAtK7LSeI3bGpw/ySqyJa5yNDc0/yYmQt6QLZ
         HLGQ+/dQMeQMp+Gp03UiQxAkiJJjOvB42cfReENdchruBvatwgjfrx2/zfz7aqqiG7h2
         /JR6LwI8KYWxk64ddXB2iX2Q3xLDu68GOHZT9bnn27ZAmDmKPPN7mkzp9Le2aa5ffV2K
         63GQ==
X-Gm-Message-State: ACrzQf1Wwfd3xBeyfcwNEIl4KdmF/NOmlapbvDt66AO/V/cVZXaJtMFk
        j6bQQUCoenSsfnmnQeGz+sDNfg==
X-Google-Smtp-Source: AMsMyM6fE9FDXp1prW/++DB38hdhtHdBoyc1M2nUulysaI/tNF9nA64bMvjrWk1orX8ohmIQnqvL4w==
X-Received: by 2002:a05:6512:c29:b0:498:f2b2:1a54 with SMTP id z41-20020a0565120c2900b00498f2b21a54mr5750410lfu.89.1664038506179;
        Sat, 24 Sep 2022 09:55:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b0049f87fb416dsm1952618lfs.12.2022.09.24.09.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 09:55:05 -0700 (PDT)
Message-ID: <469b9361-b725-0bfa-1332-f93b6b836728@linaro.org>
Date:   Sat, 24 Sep 2022 18:55:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] MAINTAINERS: ARM: marvell: include bindings
Content-Language: en-US
To:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20220809055729.19242-1-krzysztof.kozlowski@linaro.org>
 <YvKSrD3kG3rnozju@lunn.ch> <875yi5g96s.fsf@BL-laptop>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <875yi5g96s.fsf@BL-laptop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 16:08, Gregory CLEMENT wrote:
> Andrew Lunn <andrew@lunn.ch> writes:
> 
>> On Tue, Aug 09, 2022 at 08:57:29AM +0300, Krzysztof Kozlowski wrote:
>>> Include top-level Marvell bindings in Marvell maintainer entries.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> 
> Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>

I got acks from Andrew and Gregory, but I was rather expecting you to
pick it up. This patch belongs in general to platform maintainers. Does
it mean you do not pick up Marvell platform stuff?

Best regards,
Krzysztof

