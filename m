Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7D2B4F04DC
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 18:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358056AbiDBQ35 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 12:29:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358052AbiDBQ3z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 12:29:55 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C50158DB2
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 09:28:03 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id a17so6268152edm.9
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 09:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=85K94gC6fjSv5+mFsUOnacf7TgjC5LIwnDsMPlBwdvE=;
        b=VpeFPGN0HmleD2Jl1+XMRpn+P5x0hdN88iBjisIjms7Bi+lCv4HgWBQXgrn8TLIjtu
         tJECLvb/VR1xrBSvUiE3Jwiw0MkrXZyKZ3ujqWzzxQOkHngI9REs+XbYoFipYyJOKCye
         4BvCUpkp1Cjs8X8pr+25doAg1RNdSEhYf0Rb1noezEJQfX9tWHKA4/YJ/BQIf1fiHVZa
         Kah5FB/1+00MtSTXyXRDCKrBNuXF4SCmLYrjH9ioGMQBtlQ/n4m5g33MlE9ifcvKmDQf
         aTDpLtlWJISB48mza5FAmnbrOTe0+I/lJJrlxY0RBijey+nY60A2HMlXhha0WDB21q9P
         ve2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=85K94gC6fjSv5+mFsUOnacf7TgjC5LIwnDsMPlBwdvE=;
        b=IoLyrQHWV4PbWRN/LZ4LFBSD7HNvaBwjMChd3qBomHPFttQ82eQzWVArFnPEMCzKnX
         /CSkbYbyorB1yVCZRimGJfsD88K77IumuTH6X7lcInWoP0YLp5k7jzhoXZRMaYekqcZW
         JGI2HAmy+Wn4mRDcqnixyy7Dl9yikvyPzfUPYYUHQuwyeMrgXSCMi+ymHkxdtm1JG22X
         aaPMDvgCR/1OjE2A2uPkO1ua77mC1RqbMI4y6202wl5FvDg7N7VqqcjMUhf8p0jN//X/
         0BybUv1j85CQ/3rW1u3LU2BaWV2D4jExX77be15QSi9zPldMI7xG5kWk7DWjeoHU77OA
         tEnA==
X-Gm-Message-State: AOAM5331dhQa0hJt2ByNMR9+/io2UGVD3YAjtG7M+Jbv2n3iHVA6DfVH
        +7iY8ZgD7Kc0CYD4l76+l6ngZQ==
X-Google-Smtp-Source: ABdhPJzMki+SpO7ynQLrGREJgcJiMbYxfBKm5GoMZjh7NZz2e9H7iQoUbF2ejuba4CdkSQAmnFhAiw==
X-Received: by 2002:a50:ec18:0:b0:419:3af:5736 with SMTP id g24-20020a50ec18000000b0041903af5736mr25863643edr.215.1648916882039;
        Sat, 02 Apr 2022 09:28:02 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id o22-20020a170906289600b006e44a0c1105sm2278430ejd.46.2022.04.02.09.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 09:28:01 -0700 (PDT)
Message-ID: <fbbd44cc-e839-9532-962a-538ce834930c@linaro.org>
Date:   Sat, 2 Apr 2022 18:28:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: fix BCM53012 and BCM53016 SoC
 strings
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Scott Branden <scott.branden@broadcom.com>,
        Christian Lamparter <chunkeey@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
References: <20220401172427.2806-1-arinc.unal@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220401172427.2806-1-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/04/2022 19:24, Arınç ÜNAL wrote:
> Fix inaccurate SoC strings brcm,brcm53012 and brcm,brcm53016 to respectively
> brcm,bcm53012 and brcm,bcm53016.
> 
> Create a new description for BCM53016 and move Meraki MR32 under it.
> 
> Fixes: 4cb5201fcb5d ("dt-bindings: arm: bcm: Convert BCM4708 to YAML")
> Fixes: a2e385f5374d ("dt-bindings: ARM: add bindings for the Meraki MR32")
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
> brcm,bcm53012 string was silently changed to brcm,brcm53012 after
> converting to YAML. Let me know if this was intentional.
> 

Thanks for your patch. This looks like 2 or 3 separate patches:
1. Correct meraki and BCM53016 bindings,
2. Rename brcm->bcm, in bindings,
3. Change DTS.

Best regards,
Krzysztof
