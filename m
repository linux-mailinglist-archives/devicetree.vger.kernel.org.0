Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 156156BAF91
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 12:49:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231730AbjCOLt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 07:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231894AbjCOLtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 07:49:05 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C8B5838A5
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 04:48:33 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id bh21-20020a05600c3d1500b003ed1ff06fb0so993254wmb.3
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 04:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1678880912;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NO4JHw+ZVAfkOsRA/oTSKnVgRkH4XwkA1j+W0BL/pdw=;
        b=NpEBwtpN5e9qvCAKYLSSfGOCoxZ5Gx8bYsIsUoLwksUrXDVusK6rewjy+4zlzFKnKl
         zwOJL3D7vBoQEIVfS25/c+6atqDZM7CngruUJ17Lj7f64CJ5PXBq43fF4vL41lCY3UPD
         zrbrnpShRX6VFGbQ4tg7xu0DDz8Ii6pSjG+386b3M6OE3REuGZnsW/HNLUdSnO8RcCaV
         zX28x13VqPR+Pki8i34qXiEyPw8+jdtIFONO8aZXvy1UhkZDKzn56K/LfsoQz7nBc2Px
         eKhSpYBmT0sDJYyxM4zUzYPUiJOZp2DZVhblpjNfOf512dENf3VgHOEjf/Hdc9jVypQt
         uWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678880912;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NO4JHw+ZVAfkOsRA/oTSKnVgRkH4XwkA1j+W0BL/pdw=;
        b=uw+zGHrW5N9jMmfuiR+T/DonbkEmJh8GqeLNwk8y/qa1jEJBKhTb7WsQ9hXe5tgyGT
         RLV3IG+FTI8zbKZGwqbm+li0PW4E4zCD1cWqtfKstXqvZ1oODqPwd+zMkTn3yOdB8pKK
         SReO6SP7GiL23IcFIF/qzR8UkbFhWL3qOLI++tjj5nsidaHH4rsGRuz9eaanaZQEVNi7
         5NEb8xrZzClNU5gURZLj5VhATllIIBOVXGvekNiNbFxFlBXPAvNMLZVsLiIJRCkl5Niy
         XI6gxiC+wKjj8kKTdT2HRn1psWruw+gJ1i9bRcfot43C/pM7PMTKMxBlNQjtJl2G3+mn
         d1wQ==
X-Gm-Message-State: AO0yUKXtm+b0PeoZFCB/LFAKw+Dqd1/fYHVJr1zL3CFk0TXiJrLW4kaC
        Qen4e1U7eHKt9BRlBhtzA2ZXkQ==
X-Google-Smtp-Source: AK7set+GokxbwRmBEQRMy2g7A1M53ZwF41ApR9RS3SgvL6woujcHid/lb0fuLuYXyG+4/rgnwcRbiw==
X-Received: by 2002:a05:600c:45d0:b0:3ed:2382:d2fc with SMTP id s16-20020a05600c45d000b003ed2382d2fcmr4448665wmo.4.1678880912390;
        Wed, 15 Mar 2023 04:48:32 -0700 (PDT)
Received: from [192.168.1.70] (151.31.102.84.rev.sfr.net. [84.102.31.151])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c234100b003ed2c0a0f37sm1601734wmq.35.2023.03.15.04.48.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 04:48:32 -0700 (PDT)
Message-ID: <8fbd38d7-841e-2b9d-714b-753c66931707@baylibre.com>
Date:   Wed, 15 Mar 2023 12:48:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 4/4] misc: tps6594-pfsm: Add driver for TI TPS6594 PFSM
Content-Language: en-US
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net, arnd@arndb.de,
        derek.kiernan@xilinx.com, dragan.cvetic@xilinx.com,
        eric.auger@redhat.com, jgg@ziepe.ca, razor@blackwall.org,
        stephen@networkplumber.org, davem@davemloft.net,
        christian.koenig@amd.com, contact@emersion.fr,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        eblanc@baylibre.com, jneanne@baylibre.com
References: <20230315110736.35506-1-jpanis@baylibre.com>
 <20230315110736.35506-5-jpanis@baylibre.com> <ZBGtVuI6YTfENUNr@kroah.com>
From:   Julien Panis <jpanis@baylibre.com>
In-Reply-To: <ZBGtVuI6YTfENUNr@kroah.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/15/23 12:34, Greg KH wrote:
> On Wed, Mar 15, 2023 at 12:07:36PM +0100, Julien Panis wrote:
>> +// SPDX-License-Identifier: GPL-2.0-or-later
> Are you sure about "or-later"?  (I have to ask.)

Some others drivers are used with it ("or-later"),
even in misc directory.
But to be honest I'm not sure about the restrictions, if any.
I will ask that as well.

>> +/*
>> + * PFSM (Pre-configurable Finite State Machine) driver for TI TPS6594/TPS6593/LP8764X PMICs
>> + *
>> + * Copyright (C) 2022 BayLibre Incorporated - https://www.baylibre.com/
> It's 2023 now :)
>

OK, hehe. :) I'll fix that for next version.
