Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50F8264AFC1
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 07:20:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234504AbiLMGU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 01:20:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234494AbiLMGUY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 01:20:24 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C2771D0C6
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 22:20:22 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id d15so4975880pls.6
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 22:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KUnbUUVS0h/mM0988pdGwtUuS3v9jL1KTBuUyaSkBbw=;
        b=u+K9pqPXQm1OLclKfh/f+jAACZuriI9DS302u/QoWvSK0hgykIrXle7ycpEFoBj3Mh
         XSxbWTD1OvTmmDX6pYTS6LJIAHzYoXCtFeCnQ/W09MqrWntC6MZQQmxgfR351s3pQVY7
         yFqb1Y9sT9dqmNhMaV7QSvrUSlRKk8Hy9mNg1M58SG9sUe3cyI227HkU6FTrXvRRuqGO
         5VOXIA1JvEkXVkT4t/0tRqzb1NNmK37qgMY9oynQAY1GL2hjpmBjt/iRYU1bzFRcqCit
         Dx/p323CFqny+IBii7FVV+j1k0xNEipVh2j7q551/7aR0OOoja4tIQfDX66NHKqZhVGf
         dfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUnbUUVS0h/mM0988pdGwtUuS3v9jL1KTBuUyaSkBbw=;
        b=xogTWHZi4gukMc+LDrq57HJKIbSYTFCIkhRNHmkgbPuBaF1/Xf1MDuQ1ibd3mgBIrl
         Jc2BhEHMzp+AUcJf8e/2YvVWuhufM2zb9JoCNzRvk9AYN7eQ2LUFrrdi0bz6MESISylJ
         YsKlnVT6LAV7b87sJUewi0hNUXxk7hHHZFQPEVKUNe4qYisHtYqO5ayPLxUTXKq43a6A
         0m2swrYY5MOuSV2y7x5zTJGp/9Je1cUDT8DMJJXdC/6FIIpj79h5tmBgigx+xYowT9KK
         NRwNYCEQlvXYQnHtU3FFd+H8WhK1NwKlyXpfBGWgFrGrGhuWWQ4W4pj7/+8qTlmFJ/vQ
         321g==
X-Gm-Message-State: ANoB5pndwIQCUdZDvcQEGa1DKQamHEe0R8pHN7smJ+KN01Q6+K6Vm6cR
        SncM1xG18TBj+ZA8w4hFzgyyJQ==
X-Google-Smtp-Source: AA0mqf7bVgfbDIYIbr/XijD9jkgKneRGDgZWhsg0CLJra6QeIPNjc0LBfAlwb2WU4VfMjVyfu3Bx1w==
X-Received: by 2002:a17:90a:6985:b0:21e:dec6:fc38 with SMTP id s5-20020a17090a698500b0021edec6fc38mr15334064pjj.46.1670912421935;
        Mon, 12 Dec 2022 22:20:21 -0800 (PST)
Received: from localhost ([135.180.226.51])
        by smtp.gmail.com with ESMTPSA id w15-20020a17090a4f4f00b00218fb3bec27sm6317514pjl.56.2022.12.12.22.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 22:20:21 -0800 (PST)
Date:   Mon, 12 Dec 2022 22:20:21 -0800 (PST)
X-Google-Original-Date: Mon, 12 Dec 2022 22:20:11 PST (-0800)
Subject:     RE: [PATCH 0/6] crypto: starfive: Add driver for cryptographic engine
In-Reply-To: <a0bd9060bab348eba1044cd911653bd7@EXMBX068.cuchost.com>
CC:     krzysztof.kozlowski@linaro.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     jiajie.ho@starfivetech.com
Message-ID: <mhng-181c038e-a986-4dac-9745-9405d6814c84@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 08 Dec 2022 01:35:10 PST (-0800), jiajie.ho@starfivetech.com wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, December 8, 2022 5:28 PM
>> To: JiaJie Ho <jiajie.ho@starfivetech.com>; Herbert Xu
>> <herbert@gondor.apana.org.au>; David S . Miller <davem@davemloft.net>;
>> Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>
>> Cc: linux-crypto@vger.kernel.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-riscv@lists.infradead.org
>> Subject: Re: [PATCH 0/6] crypto: starfive: Add driver for cryptographic engine
>> 
>> On 08/12/2022 10:09, JiaJie Ho wrote:
>> >
>> > Hi Herbert/David,
>> >
>> > Could you please help to review and provide comments on this patch series?
>> > Thank you in advance.
>> 
>> You received some comments so the expectation is to send a v2.
>> 
> 
> Sure, I'll do that then.

Not sure if I missed it, but I can't find a v2.
