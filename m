Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D6897193E8
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 09:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231365AbjFAHH1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 03:07:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231193AbjFAHH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 03:07:26 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75689134
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 00:07:24 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2af177f12a5so5686511fa.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 00:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685603243; x=1688195243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jTgkeUoZDrm3H4JZY48LkcXj1a8GGqfVAB6tQQW57kk=;
        b=Fm1Pq2Ue6JJGHarfUY6GOswK0cjxa8gtUuq5sHV7Blfg0pkheMr3I3HnFU4U/7SWRS
         +GwAdFWQACD9kb64Vrem1c2BBkWy/tYbkjWTrUE5KUpK79e8iIOucerKXDnhEuD4l6Kd
         J0EZE56D4Fv7ouxOhjHyQrfNhjotwwFIa5S1+kKveK6G4lw2wwIcVyG07ld5txfYcrcf
         jOeHL3XhBkMW6wZZaRG6a68AAKQkTiKz9RUW0p2M9IdwPqmOZ8IvC/JvffXpXRjrTiC3
         3LZDckOxnwBjFK+fa3V3xOcoMu7n7jCIxtPQOXbBvJcOudqAyeJKZJeCjDhAD0rTjiGZ
         SnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685603243; x=1688195243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jTgkeUoZDrm3H4JZY48LkcXj1a8GGqfVAB6tQQW57kk=;
        b=X1dbd4xot6B1AwdEnoO5fARlOHMp1JF3LnereDhvDxPOCVVVTeHvjq93rj/zIWlQPj
         efmxArrgYrm1PyTxvmmkUb7gHIJ7rv1EaFlFqbRiK/j4H5QBDKRvGE/WQu/0osMaIVCR
         Nt51LMJ2J7OTukytIwS1kjjrG4WvvrmZ2ADVSNXTUh6ctH17rwlu0KbE495qTz8g01YM
         euw9tAiK4ZbX6SRwM5rY71hKlRj4wUDI19YHcQ2gJKYsyB/RN1Opseeg7K0+at57fKA3
         Teo18P1gq+ZhJj72SV9cL2O+4TvUKKsd/Xgeh8Z15JmGBLxrgF+s4fAy4Ogf+LPdnpkz
         YjDQ==
X-Gm-Message-State: AC+VfDzyo2MZOAMhHRQAXEZs6YaDZZm86YNQ/TD6c0y+PIrwrrvFRr0p
        V99FVogoUBDsDST8fH8ldhMMXg==
X-Google-Smtp-Source: ACHHUZ5g+S7nxeGes6Q/Rl5srRoNRAARYYm1jAHUP5JJkJQ3iDkB7OpHXkXsLONoF9k1ghbr3AVQyQ==
X-Received: by 2002:a2e:b706:0:b0:2a7:8b35:8270 with SMTP id j6-20020a2eb706000000b002a78b358270mr4241764ljo.35.1685603242710;
        Thu, 01 Jun 2023 00:07:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id l2-20020a056402230200b00510d110db58sm6658071eda.80.2023.06.01.00.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 00:07:22 -0700 (PDT)
Message-ID: <b025b0ad-ca32-2c6e-08cc-9463e0ba0678@linaro.org>
Date:   Thu, 1 Jun 2023 09:07:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: unify version notation of
 Northstar devices
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Conor Dooley <conor@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230520112601.11821-1-zajec5@gmail.com>
 <20230522-bacterium-quality-b51ee7dc124c@spud>
 <c69fb09a-40aa-6c7a-09b0-d32a2b39e18f@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c69fb09a-40aa-6c7a-09b0-d32a2b39e18f@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2023 22:29, Rafał Miłecki wrote:
> On 22.05.2023 19:08, Conor Dooley wrote:
>> On Sat, May 20, 2023 at 01:26:00PM +0200, Rafał Miłecki wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> Always use a minus/hyphen char to separate model from version. This
>>> unifies binding's "compatible" strings.
>>
>> Am I just being paranoid in thinking that software may have relied on
>> the former naming scheme?
>> On the other hand, my OCD really likes the change.
> 
> That's a very reasonable concern.
> 
> 
> TLDR: The risk of any breakage is extremely low due to Northstar CFE
> bootloader & projects with Northstar support.
> 
> 
> There are very few Northstar devices with bootloader other than CFE.
> All devices affected by this PATCH use CFE actually.
> CFE on Northstar has no support for DTS (DTB).
> DTB files are always appended to kernel on all affected devices.
> 
> So problem of some DTB stored in bootloader getting out of sync with
> kernel / user-space is non-existent in this case.
> 
> We still should consider a risk of some out-of-tree driver or just
> user-space checking for those compatible strings. I'm not aware of any
> project other than OpenWrt providing system images for those devices.
> There is some basic support in buildroot but it's quite dead. Even in
> OpenWrt case the only possibly affected device is Netgear R6300 V2.
> OpenWrt doesn't provide images for any of affected Luxul devices.
> 
> So there isn't any known project this change can actually break. If
> there is one (very unlikely) it can still update its user-space or
> out of kernel driver while updating DTB.
> 
> So while this change may be not the best approach (in general terms)
> in this case it's very unlikely to break anything.

You should explain this - reason for ABI break - in commit msg.

Or just keep old compatibles as deprecated.

Best regards,
Krzysztof

