Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD1795826C2
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 14:37:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233183AbiG0MhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 08:37:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233088AbiG0MhE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 08:37:04 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8AB12A957
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:37:02 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id t17so14655554lfk.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LYHdsFsXmivDzoZyQpP5rFyuNapS+2oYgH6BpUjY7r0=;
        b=ps3hAB/tSpTRQMrzQ0DZsDbNUuGDA6ORksV285PMQlY5R/4Q+CkeAWJogtO/9sAbEr
         z24P4FjN3dMCjInos0rj25PqiS1hUoahUlcesdYi5lI/yJzonpsrOcU2UCB2nNojknCE
         5HZb4ZDJGR8ErboZSDSYF/4sGLcpi0V4BYdJM8m1vKVGdn7b/03XE03ues5+L5unkPt9
         i50cfcWOPwWXzzhH8UyFWVmDj9EhS+GSUNL2ENyRdLHBw6Z26UnI4/cjJVApseQwLVg4
         3xcpCk2K5pYAch7QwSfWcv9Uw4y0M0ut7lwtk1gndJ8NI2AxUdyElO4uWdbkFUN7ZHyh
         6a7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LYHdsFsXmivDzoZyQpP5rFyuNapS+2oYgH6BpUjY7r0=;
        b=efAgUh4H93Oxe0AnduNcuTQWcdgeTU5fKydQqAc4hKcxsx6Xv1tI2YNiq20J+UVIzj
         wvJfudxBSBsyAJc7XQM15tbOXcuKyxpzg2zKSwtFWkXdsNJtZoDhELIIzh9OWVsDbCev
         5RPFoDeLYqWyPzTdILYllKBgISaduJVuQpKLKdTL0ZcC/omqN5bRkXyPTyFjJHVwKLmd
         BAJZfIvi2YfPUSO9LWXz3frGOBujX7f4/OVJ429f3zJuYpfsZiYXYONo8Dozqfv4NAY0
         edri06IZmkNxtSTQLYq0yAMy/hsqe4eVl5AE9LC9ZcKYYrcNNrrpWmfYrBdqdJRRr1nz
         9HKQ==
X-Gm-Message-State: AJIora96piZfKaJlvuHoaE2E9nTYR+SrkaO1SFpnfH5LlV3/ypJlHmpb
        2UcsSct5eKnmFaud0XjV/KSdlQ==
X-Google-Smtp-Source: AGRyM1v2UQwhAPwo+gzgOfl/ZKKrPyNKug+bl3yesKfQSUngR1PTahjeZaErm/TPIYZVOYziWximXw==
X-Received: by 2002:a05:6512:ac5:b0:48a:8817:a6df with SMTP id n5-20020a0565120ac500b0048a8817a6dfmr5700656lfu.388.1658925421307;
        Wed, 27 Jul 2022 05:37:01 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id k14-20020ac257ce000000b0048a7fa5bff1sm2534024lfo.248.2022.07.27.05.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 05:37:00 -0700 (PDT)
Message-ID: <80f08089-e3bb-983e-313b-45613364829e@linaro.org>
Date:   Wed, 27 Jul 2022 14:36:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/6] dt-bindings: riscv: Add DT binding documentation for
 Renesas RZ/Five SoC and SMARC EVK
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc:     Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
References: <20220726180623.1668-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220726180623.1668-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <636e9214-4b36-e9a6-3c6b-b6edb944335e@linaro.org>
 <CA+V-a8sTw1qzuTeD2vb7RgDmmNdEP5qEcxXCjrFgkyrBrLrt5Q@mail.gmail.com>
 <e64cc15e-b31e-876d-b3cf-b60d255c495b@linaro.org>
 <CA+V-a8u1VW9xaj2KjySyMuegpisLVENO_6uJOpAFZGbKziYLYw@mail.gmail.com>
 <e31e0c1f-4755-704e-8428-93970877d8f5@linaro.org>
 <CA+V-a8sX=Frs_cds9MriauTFRvcZUNCvoeZ+SaC0GUpL7L6qhg@mail.gmail.com>
 <9f32a4a9-66b4-ba2e-1713-436103c2faf8@linaro.org>
 <OS0PR01MB5922763582B836DA45CDFF0886979@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <OS0PR01MB5922763582B836DA45CDFF0886979@OS0PR01MB5922.jpnprd01.prod.outlook.com>
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

On 27/07/2022 14:21, Biju Das wrote:
> Hi,
> 
>> Subject: Re: [PATCH 4/6] dt-bindings: riscv: Add DT binding
>> documentation for Renesas RZ/Five SoC and SMARC EVK
>>
>> On 27/07/2022 13:37, Lad, Prabhakar wrote:
>>>>>>
>>>>> I did run the dtbs_check test as per your suggestion (below is the
>>>>> log) and didn't see "no matching schema error"
>>>>>
>>>>
>>>> So you do not see any errors at all. Then it does not work, does it?
>>>>
>>> Right I reverted my changes I can see it complaining, dtb_check seems
>>> to have returned false positive in my case.
>>>
>>> What approach would you suggest to ignore the schema here?
>>
>> I don't think currently it would work with your approach. Instead, you
>> should select here all SoCs which the schema should match.
>>
>> This leads to my previous concern - you use the same SoC compatible for
>> two different architectures and different SoCs: ARMv8 and RISC-V.
> 
> Or is it same SoC(R9A07G043) based on two different CPU architectures (ARMv8 and RISC-V)

Then it is not the same SoC! Same means same, identical. CPU
architecture is one of the major differences, which means it is not the
same.

> Using same SoM and Carrier board?

It's like saying PC with x86 and ARMv8 board are the same because they
both use same "PC chassis".

Best regards,
Krzysztof
