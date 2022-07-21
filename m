Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82FE957C4D5
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 09:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232132AbiGUHBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 03:01:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbiGUHBa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 03:01:30 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D7D5E31B
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:01:29 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id j26so758236lji.1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=n+SSCx2OFwtU5XYYs4flEXRZ/EIm9z3U+bgO9J/kElw=;
        b=b4bQCp4lvvuYtyIFjQdAtoCvRR3KDomPpl9gCqNYxJZ5JhBii4Gd02lDK3u5bx1lN6
         JCpBPdKa3+1Hk0XbSOU+XL34d/iYIqLvNMLaplIDQj8NoYkJZXnZ7S8jCbM9x7aG0EWR
         VbmGqHxlODlXI84GbxC+/WCPDLNYOAvmwpY8gDN4PfUbf8th3CTUj0FhDTxZTy4853lA
         mlPbzff+NsDRiUObv2lGuo6E3ORwzDoGaEDdqtgelc2HkKDtbe842LAVKr2jj/b3HtkR
         MQm0CHXttZ++EGRy2xWEN6ZDSsmH6pqn4etDzpuuSqU11Dbgi9c2deSU8yqK+HOq8GCR
         ge5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n+SSCx2OFwtU5XYYs4flEXRZ/EIm9z3U+bgO9J/kElw=;
        b=zA44LeHk02TQduySUfeEuj86AA38uUutfEv+wZKoph5icXqzMF04slfOzJ5gk1leVv
         oDypsuZUbatBiKHzhRup23GV2riC+vgs1h/mTZ5EaQ3d42Innh8VX8fG+0+kQQC+HpE1
         Mc0NlRyitEmnn6LM9eHqBnHS4aTcD0dyBz3C/ryD3OPg6hUcpKIuhPUrhr0W59MJD9Gc
         sKP639FaqeByo8KnMBUuiMDbMjA+PJv+UR55bocgJ6c1yTQLuU2GFU1AqUfKnr9R+ukR
         6nvskCB9o0pDH8aZ3ok6hFMzN4MsBnR01DS2POs919Fz47zdR7tfI0Q2QsM+KmyCUdll
         vreg==
X-Gm-Message-State: AJIora8w2Rl4xPodJDd+MTO0w09HEe12hw6pVgbbrpZtt0Wjqkj47ivq
        lByo4D2XyeTzMgiWNHvwM9ipHg==
X-Google-Smtp-Source: AGRyM1vxaJl/E5urFENE1deq3SnjdW7FkyOEH9cUWqI24bB6kXn9pCjnHq/7leK2tmnPN/lfTVCEKQ==
X-Received: by 2002:a2e:8003:0:b0:25d:e500:23e0 with SMTP id j3-20020a2e8003000000b0025de50023e0mr664239ljg.227.1658386888328;
        Thu, 21 Jul 2022 00:01:28 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id d23-20020a196b17000000b00488d1acb7b0sm250511lfa.130.2022.07.21.00.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 00:01:27 -0700 (PDT)
Message-ID: <193845cb-6149-1ae6-5eb6-6b01ffcf763b@linaro.org>
Date:   Thu, 21 Jul 2022 09:01:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [RESEND PATCH 2/9] dt-bindings: arm64: bcmbca: Update BCM4908
 description
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>,
        joel.peshkin@broadcom.com, dan.beygelman@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20220721000658.29537-1-william.zhang@broadcom.com>
 <a635754e-bf41-4058-5fbb-57ead36b7128@linaro.org>
 <883c2ad4c36220b488519a8902ad72bc@milecki.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <883c2ad4c36220b488519a8902ad72bc@milecki.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2022 08:51, Rafał Miłecki wrote:
> On 2022-07-21 08:44, Krzysztof Kozlowski wrote:
>> On 21/07/2022 02:06, William Zhang wrote:
>>> Append "brcm,bcmbca" to BCM4908 chip family compatible strings. Add
>>> generic 4908 board entry.
>>
>> This does not explain at all why you are doing it. Improve your commit
>> messages.
> 
> To clarify it from my side (and maybe help a bit):
> 
> 1. As I understand it BCMBCA is a one big family of SoCs.
> 2. BCM4908 is a subset of that family (a subfamily?) designed for a
>     specific group of devices.
> 
> If that's correct I think William it's what you should describe in your
> commit message. That would make binding more accurate and should be a
> good argument for your change (I believe).

That's better argument. But what's the benefit of adding generic
compatible? Devices cannot bind to it (it is too generic). Does it
describe the device anyhow? Imagine someone adding compatible
"brcm,all-soc-of-broadcom" - does it make any sense?

Best regards,
Krzysztof
