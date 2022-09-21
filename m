Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 164C45BFC39
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 12:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231219AbiIUKUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 06:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231406AbiIUKUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 06:20:21 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9F0282863
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:20:19 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id b6so6363329ljr.10
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wOAG2nHa6V+mQVTn24MXKEjrtz2FiEQdyWfc/VJPXp4=;
        b=e5OcUsAvRzypoYJDGBslX71DzA8KWabXMVX1vSTnJfgvbDoWQe9lySb5EMW+2q1x+m
         6/mV9CPyDldV0G1YA8abb9/kiNN60Tk+2Tn9jELj+DnAvO47JPVfmvwSaEYbp+8UiBP3
         AQ9VS3j9dnj/4elK6HU8XANNv3/351mR7HwvowWW5rSB1zXDhxugoBvRR+5skUpHr+E8
         wemp9ZgtZt4ETUEseOBpne0jQ4Qqod5ir/XyqhLyLzOpECZYKiUmKjNB44jGhvdikUbn
         Zc0Noc9sRKfRqZpm0bbsYOeCbrke0yhqnGqA0qnGh4gd7R7ZYUTgOI8WNIiWtlnTb+eN
         deMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wOAG2nHa6V+mQVTn24MXKEjrtz2FiEQdyWfc/VJPXp4=;
        b=HQZKFcvlNG/ezs9GecFfsRykh27gx1pZ1EuzlItNeLNQ7B1TD8JF7CJgmNIDXaioby
         Voc3CxpMhr5eMtohh+aLukp1rOIWGjWNtyZDC/L8gywTBK7llUXYzdurpnj8vzWtcvZe
         XutMGB/rZxziXsxLh3Ol9ipthUoAmz0LSDevgZcoXOY3JLhGDynYIl+AJyKrE6Ct+JJb
         iDuv9fPz5q9+bvSB7jK4BIEkdXnnKMfy7gBhq6V2fwZkRePgySpiCj4MBoIOmh4t6tbb
         XphzPbTANCLqlVjozs486D1/mJ6OM8dPnnxj4yWOMBzSeD8HBOO4IR8LInXP39LTczaF
         rjeA==
X-Gm-Message-State: ACrzQf1P0jTDh4kre05h6SS/DCRmeQ6qi24EL6zPxl8l0R3MDBxrFFpa
        ZLHPs1eEeH8Yv4CgJBRExXOeYw==
X-Google-Smtp-Source: AMsMyM6VoW+pUqPYp9TXSCxXkAE/UAviHWwr6fNmxVv0f9q7qRUpKdY3dFHo53fnRU7xaklCK87blg==
X-Received: by 2002:a2e:9dc6:0:b0:26c:5d06:e18 with SMTP id x6-20020a2e9dc6000000b0026c5d060e18mr2259266ljj.64.1663755617941;
        Wed, 21 Sep 2022 03:20:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b3-20020ac25e83000000b0049a6a9bc0dcsm368555lfq.134.2022.09.21.03.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 03:20:17 -0700 (PDT)
Message-ID: <9f6c0330-b1e8-b71c-9883-95cbb6924b08@linaro.org>
Date:   Wed, 21 Sep 2022 12:20:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: Similar SoCs with different CPUs and interrupt bindings
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Samuel Holland <samuel@sholland.org>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Atish Patra <atishp@atishpatra.org>,
        "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
References: <CAMuHMdUPm36RsxHdVwspR3NCAR3C507AyB6R65W42N2gXWq0ag@mail.gmail.com>
 <45d2e6c2-3b4b-5720-0431-002c74b1f9cc@arm.com>
 <CAMuHMdWd5cmxgG8jdpDw3nrfrdSX6ecb+XwuJTLkkRgP5LbcHQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMuHMdWd5cmxgG8jdpDw3nrfrdSX6ecb+XwuJTLkkRgP5LbcHQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 12:13, Geert Uytterhoeven wrote:
>> 4. Put all the "interrupts" properties in the SoC-specific DTSI at the
>> same level as the interrupt controller to which they correspond. Works
>> out of the box with no horrible mystery macros, and is really no more or
>> less error-prone than any other approach. Yes, it means replicating a
>> bit of structure and/or having labels for everything (many of which may
>> be wanted anyway), but that's not necessarily a bad thing for
>> readability anyway. Hierarchical definitions are standard FDT practice
>> and should be well understood, so this is arguably the simplest and
>> least surprising approach :)
> 
> Thanks for the suggestion!
> 
> It does mean we have to update 3 .dtsi files when adding support
> for a new device. As long as all DT changes go through the same (soc)
> tree, we can easily manage the dependencies.

If the new nodes are disabled (in main shared DTSI), then it would not
need immediate update in other arch. However enabling it in other arch
would require cross-tree pull (AFAIR, RISC-V changes do not go to SoC tree).

Best regards,
Krzysztof

