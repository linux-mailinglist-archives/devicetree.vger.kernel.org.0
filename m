Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65EE25509AF
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 12:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234227AbiFSKd2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 06:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230474AbiFSKd1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 06:33:27 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A9AFD13D
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 03:33:26 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id o10so11459691edi.1
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 03:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=z8RjPpmzYY4c08OMGBiWyta3keTSURLb/GMoAlL3sWs=;
        b=O9sUUbujmWyeq8RZwNEI96ELznnKbdGmc4AreZY1Zj5JxaBvR4FBT9HnZId73KZKcL
         5xz45buWMVZWlhVt3U0IFsWyzuUtUWzhN52xy5wk8kXLbnmiGxY7rsledJLhclERSEu4
         zyCZusJ4rFvlBkUZX6ZC2xTNA2Qq5dItdlT9YoF/aIot8/yaz0RcGYZNkSAKROOBHxHI
         Iwnz83tuAbNSqVRK3LN9JJLNXF0+xWb0/ONPeEJYf/1/M6LwAHBxRffKd6lrZ9r5dIph
         m6xQ1NuPwScI+KWuaRyRqJ2K4dOYfPaqOcnyJDnKL2GAnudxEqIAVTPg1m++a8mikBYg
         aFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=z8RjPpmzYY4c08OMGBiWyta3keTSURLb/GMoAlL3sWs=;
        b=yioTyFkkN9PRgotBvoSX6iQRPqjvMq100AhlviizbZvJSiLYhhnCl9SiB4eF9gZWf6
         p+m3MHmRhDs7U66jOVPJSAlzWDJGFAVr/dPVZvDvSVOdXDagvXobU2rt7bcRoCzQXpqS
         HUY6zTqOsLlkMUkellTI/Ncu49lQ7dEB6IV3BD82Npm5FLy2hQoL8yl2T0mhxaSrbKvr
         i5Y2MoEqS13mluPTub/0KKtE1yRKMo/KwfymEM/NnMoMGAjPxvaSJ50ueooKvBSRvJdf
         6HWIPBstmeGUg+1pH+fP8ieXSa/ToJ7y9Es8+1LlykH/kDXyB6TDVcnN8CpOCh24RQcu
         0tSw==
X-Gm-Message-State: AJIora+Mqglc66qICWu2YL9UbjAaoFXVJXguFnjMdPLEb0sF8UKKMiT8
        1ToX9k2R8py0qcR3qcPlfAq6gg==
X-Google-Smtp-Source: AGRyM1tERU2DJgDT5w7+IBvYf0LnpO71lH7iowz04wGvFz2wuCG8iOKvLSfzWeFfBEXqzNeXtVuTPA==
X-Received: by 2002:a05:6402:1cc2:b0:434:f631:d7f3 with SMTP id ds2-20020a0564021cc200b00434f631d7f3mr78228edb.171.1655634804797;
        Sun, 19 Jun 2022 03:33:24 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v18-20020a170906293200b006fece722508sm4328852ejd.135.2022.06.19.03.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 03:33:23 -0700 (PDT)
Message-ID: <9c0513dd-67ce-0d6a-f2a5-58e981f0d55c@linaro.org>
Date:   Sun, 19 Jun 2022 12:33:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH net-next 02/28] dt-bindings: net: fman: Add additional
 interface properties
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        "David S . Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Paolo Abeni <pabeni@redhat.com>,
        Russell King <linux@armlinux.org.uk>,
        Eric Dumazet <edumazet@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-3-sean.anderson@seco.com>
 <d483da73-c5a1-2474-4992-f7ce9947d5ba@linaro.org>
 <4b305b67-7bc1-d188-23b8-6e5c7e81813b@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4b305b67-7bc1-d188-23b8-6e5c7e81813b@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/06/2022 17:55, Sean Anderson wrote:
> Hi Krzysztof,
> 
> On 6/17/22 9:16 PM, Krzysztof Kozlowski wrote:
>> On 17/06/2022 13:32, Sean Anderson wrote:
>>> At the moment, MEMACs are configured almost completely based on the
>>> phy-connection-type. That is, if the phy interface is RGMII, it assumed
>>> that RGMII is supported. For some interfaces, it is assumed that the
>>> RCW/bootloader has set up the SerDes properly. The actual link state is
>>> never reported.
>>>
>>> To address these shortcomings, the driver will need additional
>>> information. First, it needs to know how to access the PCS/PMAs (in
>>> order to configure them and get the link status). The SGMII PCS/PMA is
>>> the only currently-described PCS/PMA. Add the XFI and QSGMII PCS/PMAs as
>>> well. The XFI (and 1GBase-KR) PCS/PMA is a c45 "phy" which sits on the
>>> same MDIO bus as SGMII PCS/PMA. By default they will have conflicting
>>> addresses, but they are also not enabled at the same time by default.
>>> Therefore, we can let the default address for the XFI PCS/PMA be the
>>> same as for SGMII. This will allow for backwards-compatibility.
>>>
>>> QSGMII, however, cannot work with the current binding. This is because
>>> the QSGMII PCS/PMAs are only present on one MAC's MDIO bus. At the
>>> moment this is worked around by having every MAC write to the PCS/PMA
>>> addresses (without checking if they are present). This only works if
>>> each MAC has the same configuration, and only if we don't need to know
>>> the status. Because the QSGMII PCS/PMA will typically be located on a
>>> different MDIO bus than the MAC's SGMII PCS/PMA, there is no fallback
>>> for the QSGMII PCS/PMA.
>>>
>>> MEMACs (across all SoCs) support the following protocols:
>>>
>>> - MII
>>> - RGMII
>>> - SGMII, 1000Base-X, and 1000Base-KX
>>> - 2500Base-X (aka 2.5G SGMII)
>>> - QSGMII
>>> - 10GBase-R (aka XFI) and 10GBase-KR
>>> - XAUI and HiGig
>>>
>>> Each line documents a set of orthogonal protocols (e.g. XAUI is
>>> supported if and only if HiGig is supported). Additionally,
>>>
>>> - XAUI implies support for 10GBase-R
>>> - 10GBase-R is supported if and only if RGMII is not supported
>>> - 2500Base-X implies support for 1000Base-X
>>> - MII implies support for RGMII
>>>
>>> To switch between different protocols, we must reconfigure the SerDes.
>>> This is done by using the standard phys property. We can also use it to
>>> validate whether different protocols are supported (e.g. using
>>> phy_validate). This will work for serial protocols, but not RGMII or
>>> MII. Additionally, we still need to be compatible when there is no
>>> SerDes.
>>>
>>> While we can detect 10G support by examining the port speed (as set by
>>> fsl,fman-10g-port), we cannot determine support for any of the other
>>> protocols based on the existing binding. In fact, the binding works
>>> against us in some respects, because pcsphy-handle is required even if
>>> there is no possible PCS/PMA for that MAC. To allow for backwards-
>>> compatibility, we use a boolean-style property for RGMII (instead of
>>> presence/absence-style). When the property for RGMII is missing, we will
>>> assume that it is supported. The exception is MII, since no existing
>>> device trees use it (as far as I could tell).
>>>
>>> Unfortunately, QSGMII support will be broken for old device trees. There
>>> is nothing we can do about this because of the PCS/PMA situation (as
>>> described above).
>>>
>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>
>> Thanks for the patch but you add too many new properties. The file
>> should be converted to YAML/DT schema first.
> 
> Perhaps. However, conversion to yaml is a non-trivial task, especially for
> a complicated binding such as this one. I am more than happy to rework this
> patch to be based on a yaml conversion, but I do not have the bandwidth to
> do so myself.

I understand. Although since 2020  - since when we expect the bindings
to be in YAML - this file grew by 6 properties, because each person
extends it instead of converting. Each person uses the same excuse...

You add here 5 more, so it would be 11 new properties in total.

> 
> If you have any comments on the binding changes themselves, that would be
> much appreciated.

Maybe Rob will ack it, but for me the change is too big to be accepted
in TXT, so no from me.

Best regards,
Krzysztof
