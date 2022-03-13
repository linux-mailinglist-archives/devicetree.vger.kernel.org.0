Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B653B4D775B
	for <lists+devicetree@lfdr.de>; Sun, 13 Mar 2022 18:50:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232165AbiCMRwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 13:52:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231895AbiCMRwF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 13:52:05 -0400
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CFEA2B19E
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 10:50:57 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id yy13so29412273ejb.2
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 10:50:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:content-language:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=OnMEmnpHDyQ0JnBmJcE5RT8DxXCjGO53V+k3T5Ck1Q4=;
        b=LZ5Gt8N74eNbfe/LW4g2+vNN4FR0mzKX62oEiMBrog+NAshg4i81Df1qCulrOWIzBN
         7E5nqRJCnzRPG3h5KVH2CLeYBEDdaE1usfDKWAh79p8Xud85NgJwsmP11kWxHk8w4V3H
         BpDzOOG9O5MgZPaSv59wp0lXVfHhwg8N/nXg1Y5zmamZ+PR91DtDC+XZCNBNzxWDtUL/
         kHuS+uXFKJhZEjZGrkfOZ7XQ7fpikm5Bq3i2qE6UmJzG8kpJnRVDnjSysjTPIfbYJze5
         uG9BwqAakP4GNcmAPpx+zVN4GsiptugmJ3Ac9azlVSWPF348SxnMjULINIORZc4HGMEu
         C0VQ==
X-Gm-Message-State: AOAM532mcMga1g55VvdonkERNj7aid9QRyyJpExGjkAdCUCocCmwW3Lb
        8dbJRurH0MNgAIaptVKAjik=
X-Google-Smtp-Source: ABdhPJziVIZxm/tezBPDg19kHDHIAIrzncxfnjWMf409dhhk2Jv6Dh/+Ho85UgDbd0FYhSpIi1y2Tw==
X-Received: by 2002:a17:907:971c:b0:6d6:e503:131b with SMTP id jg28-20020a170907971c00b006d6e503131bmr15627567ejc.121.1647193855384;
        Sun, 13 Mar 2022 10:50:55 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id l9-20020a170906078900b006dac5f336f8sm5761810ejc.124.2022.03.13.10.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Mar 2022 10:50:54 -0700 (PDT)
Message-ID: <9a5938fa-3783-9e5a-74f0-639372480e4a@kernel.org>
Date:   Sun, 13 Mar 2022 18:50:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From:   Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: ldb: Implement simple
 NXP i.MX8M LDB bridge
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220313123852.207257-1-marex@denx.de>
 <9bda9a09-ec0a-0b6f-56b1-dff18821aa5d@kernel.org>
 <a8a0278c-92f0-bd9c-927f-b8ee729251af@denx.de>
In-Reply-To: <a8a0278c-92f0-bd9c-927f-b8ee729251af@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/03/2022 18:09, Marek Vasut wrote:
> On 3/13/22 16:47, Krzysztof Kozlowski wrote:
> 
> Hi,
> 
> [...]
> 
>>> diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
>>> new file mode 100644
>>> index 0000000000000..a05dd05547836
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
>>> @@ -0,0 +1,99 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/bridge/nxp,ldb.yaml#
>>
>> In title, description and commit msg you point this is specific to
>> i.MX8M, so maybe reflect it in the file name as well.
> 
> That's how it is so far, however NXP does recycle their IPs quite a bit 
> so I don't want to encode the SoC type into the bindings file name. I do 
> expect them to re-use this bridge somewhere else sooner rather than later.
> 
> [...]
> 
> The rest is fixed.
> 
> [...]
> 
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/imx8mp-clock.h>
>>> +
>>> +    lvds-ldb {
>>
>> Generic node name, so "bridge" or "display-bridge"
>>
>>> +        #address-cells = <0>;
>>> +        #size-cells = <0>;
>>
>> Why do you need address and size cells? This will complain if you test
>> your bindings with proper compatible.
> 
> Because the subnodes of this bridge have no dimension, so address/size 
> cells = 0.
> 
> I don't understand the second part about "proper compatible", can you 
> elaborate ?

You have wrong compatible in example and in bindings, so you do not see
the error of address/size cells.

They are also not required in your example, since you do not have unit
address. Otherwise your lvds-ldb node would be wrong (see its
address/size cells).

If you supply address-cells you should see a W=1 warning:
#address-cells/#size-cells without "ranges" or child "reg" property

Best regards,
Krzysztof
