Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FDAD598048
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 10:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242579AbiHRImf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 04:42:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240930AbiHRIme (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 04:42:34 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6D80B07E4
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:42:32 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id l1so727109lfk.8
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=4epZtyqViDCbX0h/Jaac7x2R7HrV4eNNrzciYaBTC/8=;
        b=m7wdxY5+o/sCehShTMQ2E1KIyPHAVdIXauLQw+VrN3y8xZ2Spzi2azFE1E6b+pJInx
         DZbnqDR4ujc0e58PTZjPGPQYD9Yc4twjl39vH3gZ3/qWeeauW8Uwi3KMqNmmnN6b56sf
         vUl/WR6mmCZn1qljoWqy4uYcLLp5yafvZDl8IMqxlvFV6ZKKivMUFI27vY7G2t5iX7pl
         gVzXOxkhw3dCBpH+U9tOSmkqs3WohAvJyPAFCnJdAkX+uKfktFieRUO6wdxAnzA5IXrh
         m5WVtCaGKRyfDeLvrNHlYjaJSyjUYIVXrLJUEyIFDdfTBJ8tOSsKFM6ZjHVHGMgxf7wP
         hdaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=4epZtyqViDCbX0h/Jaac7x2R7HrV4eNNrzciYaBTC/8=;
        b=k8KWuk2Tf0jtwFvk4cPwZ8i81aqaHAUScQmn3ux8v4lp1rUEsVYHCettmX3Y5ikdjR
         6yXVrsUXtyzaLfLgQnzgI1J1xj4NzEQ+kxbdgEmGoQn9UA0Q+7wTldRZxNzKOLoe4ciK
         x+fKlNQ175wsm05tghc9dB2fK36bheaZi+O90n2lhdsiVNg4jibRTDBM+hzYBaohYGgt
         P/bMBKXSAN/+3NpMsA/cq0k1jRUiVPj/3TDD7RC7YAHzHfkshEvh1ARLYVpPvGEHVV1x
         HTtVGnNW6Ytimut9DGN1aNZglXSCC84ZDOxuxy21QRJjp/7DO2ns1xlC/x6JeAighBSZ
         34/Q==
X-Gm-Message-State: ACgBeo0oCSvcjGpyUNOyBwshAasEI1i/TAMJvlIA2gxynwCgfMbdTPKM
        dXqUw5ely1iCFlN3olCLmduHvg==
X-Google-Smtp-Source: AA6agR4KbCZQY+mitNIYy5BmTg8LnFPrP90gKu6vTVcHLyJFKf0JNnrFI26iYflzNFZEuZIYUNrO5w==
X-Received: by 2002:a05:6512:22c3:b0:48b:882d:15b8 with SMTP id g3-20020a05651222c300b0048b882d15b8mr657729lfu.459.1660812151296;
        Thu, 18 Aug 2022 01:42:31 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id bj33-20020a2eaaa1000000b0026181f65600sm133418ljb.136.2022.08.18.01.42.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:42:30 -0700 (PDT)
Message-ID: <625b06a0-f7d6-51e4-2930-cfaaf74a9204@linaro.org>
Date:   Thu, 18 Aug 2022 11:42:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: soc: renesas: Move renesas.yaml from arm to
 soc
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh@kernel.org>
Cc:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220815111708.22302-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220816174150.GA2428940-robh@kernel.org>
 <CAMuHMdWgfGgNGmj88z=Md5RAL8CHxTKj6ywsGwS2HN-vHKMq+w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMuHMdWgfGgNGmj88z=Md5RAL8CHxTKj6ywsGwS2HN-vHKMq+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 12:30, Geert Uytterhoeven wrote:
> Hi Rob,
> 
> On Tue, Aug 16, 2022 at 7:41 PM Rob Herring <robh@kernel.org> wrote:
>> On Mon, Aug 15, 2022 at 12:17:08PM +0100, Lad Prabhakar wrote:
>>> renesas.yaml lists out all the Renesas SoC's and the platforms/EVK's which
>>> is either ARM32/ARM64. It would rather make sense if we move renesas.yaml
>>> to the soc/renesas folder instead. This is in preparation for adding a new
>>> SoC (RZ/Five) from Renesas which is based on RISC-V.
>>
>> Please post this as part of the above.
>>
>> bindings/soc/ is just a dumping ground for stuff that doesn't fit
>> anywhere. We've mostly cleaned bindings/arm/ of that, so I don't really
> 
> Note that the target of this move is not .../bindings/soc/, but

bindings/soc/ means bindings/soc/vendor/, so it means bindings/soc/renesas/.

There are no files in bindings/soc/ directly.


> .../bindings/soc/renesas/, so it's a bit less of a dumping ground.

Therefore it is still dumping ground.

> Perhaps this is also a good opportunity to split renesas.yaml per
> family or product group
> (renesas,{rmobile,rcar-gen[1234],rza,rzg,rzn,...}.yaml?
> A fine-grained split may cause headaches with RZ/G2UL and RZ/Five
> sharing the same SoC Base, but a coarse-grained split keeping all RZ/G
> (after all RZ/Five is part of RZ/G) or even all RZ series together should work.
> 
>> want to start that again. I would propose bindings/board/ instead if we
>> move in this direction.
> 
> .../bindings/board has the issue with the same boards used with
> multiple pin-compatible SoCs, SiPs, and SoMs.


Best regards,
Krzysztof
