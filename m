Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08C7F608E40
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 17:52:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbiJVPwJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 11:52:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbiJVPwH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 11:52:07 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 171576A500
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 08:52:03 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id s3so3382488qtn.12
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 08:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2ROe9S2tOennILUkJm547IieqFBCurllsyrYLsv1RqE=;
        b=QUr+Vjeh7Pktt3wchoBycd/wfm9FAF8oY/8B3WecJwkaXdKSzuJbrpR2lWg8h4SorP
         HTYOfY34negwDynNvIi2VBk8fTSlu9SPd63FsnNT6L6JcsBBBVMYWeOss4hXcXCy26qH
         JHMojlrpRsOMDfw+bxjeNcluJl6zJ6KAHZ5hHIYgKvFxlqDiptMTA7sr6hK0w26ymFxB
         ZHDt3ufPm9QtIDc6E5kQI1x0+xj7y9su90LTgRAH8ctIQq1cA5CHTehzm0b05BCTpknh
         YhyfBd4C85JmJ0M//xptOqLFjfzxnNfFnPDyUk5e2WoY//Dl1fueymc6G8vekZIZ6vgm
         orRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2ROe9S2tOennILUkJm547IieqFBCurllsyrYLsv1RqE=;
        b=gM2xyuBfWEZC5tu3D6YMQSC71z7f1h9wRxVTXZKOYo5btwazrRNL1+jdfgK1Bqbw31
         jY2HNJ61zBMgdzSFL1hj79yP9y9kNJdXxGwhmURtbZ7rbnQhVTqQS7DMBp6RKMdfAhGo
         UBT4FK7XtcIOZT3+Y5fl5/ZQk5jxkPCqD/5UIuih+0mAQ7Y7giA9Vz33/j3Opg4E/+/H
         xY+Cyu4NMNNajFlQaMffeBB50BeDV6HBmWwHwlFKBfVqHgpLx1D8Q9MHvezloGI9MOlU
         lPZorqYG9vh0Z4V1CJJegRGD1uwVoZpUM48DKoIDBD5af5ivL+pZEkCv+4cMvpczQvNJ
         /pxA==
X-Gm-Message-State: ACrzQf2Uo144PEuooJiv/w3Vw0xuG2imF+knUL0l0rWaYIK9UY5N0ENh
        9cXbA1aSl8s/ONTJ0rctbnr8ug==
X-Google-Smtp-Source: AMsMyM5n02IlNakMyPtVUhOikkV+FpNu/okcHJHnLkwsIhZACN6JauTgOuIX2cYDQdy9tHMyvvpw3A==
X-Received: by 2002:a05:622a:24c:b0:39c:fd8e:7e79 with SMTP id c12-20020a05622a024c00b0039cfd8e7e79mr17426077qtx.70.1666453923081;
        Sat, 22 Oct 2022 08:52:03 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id b1-20020ac87fc1000000b0039cc47752casm10298463qtk.77.2022.10.22.08.52.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 08:52:02 -0700 (PDT)
Message-ID: <820095a2-3722-5c3a-77fb-5a6b6b44e1c3@linaro.org>
Date:   Sat, 22 Oct 2022 11:52:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/5] dt-bindings: soc: hpe: Add hpe,gxp-plreg
Content-Language: en-US
To:     "Hawkins, Nick" <nick.hawkins@hpe.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "Verdun, Jean-Marie" <verdun@hpe.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20221011185525.94210-1-nick.hawkins@hpe.com>
 <20221011185525.94210-3-nick.hawkins@hpe.com>
 <CAL_Jsq+xb2Ltfne4mQMXQAde-eHS7TsO73YZ-vhE7nK1Z_M0gw@mail.gmail.com>
 <DM4PR84MB192795B45639710259E9B19D88229@DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM4PR84MB192795B45639710259E9B19D88229@DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2022 15:56, Hawkins, Nick wrote:
>>> +examples:
>>> +  - |
>>> +    cpld@1e789000 {
>>> +      compatible = "hpe,gxp-plreg", "simple-mfd", "syscon";
>>> +      reg = <0x1e789000 0x1000>;
>>> +      fan1 {
>>> +        bit = <0x01>;
>>> +        inst = <0x27>;
>>> +        id = <0x2B>;
> 
>> These property names are way too generic for device specific properties. There is zero description of what the h/w does and any of these child nodes to give any advice on direction. However, a node per register or register field is generally the wrong direction.
> 
> Thank you for your valued feedback. The goal I was trying to achieve here was making our programmable logic register driver interface in a generic way across multiple platforms based on inputs we provide with the .dts file for each platform. For instance if we want to read the fan 1 install status on platform X it would be reading bit 0x01 of byte 0x27 where as on platform Y it could be bit 0x02 of byte 0x16. Is there a format you would recommend that I can adhere too?

I don't think DT place is to describe register or memory layout, with
some exceptions like MTD partitions or nvmem cells. Basically you are
representing here a device register map inside DT, just because it is a
CPLD.

Every regular multi-functional device handles its register map in the
driver itself and uses Linux framework to expose the internals. CPLD
should not be different, except that is programmable.

Best regards,
Krzysztof

