Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28F9567523F
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 11:21:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjATKVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 05:21:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbjATKVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 05:21:40 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E44244617D
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 02:21:38 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id k16so3626688wms.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 02:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=opTxvrNzoM90zf6iRlxw6xlAEQi0T3iaraiUbrs0+KI=;
        b=HlT9nOfUeMCu/pLD2N8cPd086rwZWAiDOILIZPoVbjDw1TKmGja6qR+xeZs355WtMF
         /stt66FXI8rKnyuUzuoWYXw6KNTare5tlw6cVaJM43FJvg7OUNZbe5ivc7cqRwkckg0s
         MLliU/Ve0LbKltbMN93BvgFPBZmdOupv0SGKWSlFY/AbbYyCRnaYknOLEh4poKKMAlCF
         Cj9dnGPEfdPltLA5dCxRkDceLvRTOFdxMW4FwF/ov7oZoHuATB938g9KeK1vL8zdjaeZ
         qSUDN137FE+vnffdKdOilVOTtjlZ05kV12RF1gPwQE0PM51M1pS/8nD/TzSeZGeBPeM6
         j78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=opTxvrNzoM90zf6iRlxw6xlAEQi0T3iaraiUbrs0+KI=;
        b=CwhPhGx3ibFaXx260VlhzoPWkX74Bsx10dReOWY68QsiGSwg1q1kAcRq40aonDYkZr
         X7k0YmLZG6los2kvkcECtL2bAmYJ6YjFCW/UYEO+RuSL5ksQCsotKKFonxvawku96i7I
         tB31J9KTfLx3aPxwOmQMfq4Ee2IPnc9Qxrc1DLgJZZk/l+XOclDKfq1WiFCIUmrFSGoY
         uevSicc9XdNxfzmEf27doitwIkJeKOEitDX0Pc0jGQVaXOTs0KN5c7ZGGClKVXduOOsr
         yE3wNboLJteuWH3bJu1f1A5L4peYPiYDKgtZlrHz1fFeKq3X89eKYYrTMmR/uJ3dSliI
         RboA==
X-Gm-Message-State: AFqh2koAp0SI/u1v8s6ZHdOeSuuxtqYYY3ZrShs+huev8iiWUGoUfIk7
        LqvvIcYDVDPVrrqvaTD4O9PvOmCUqvzk9Yq3
X-Google-Smtp-Source: AMrXdXunXvSvbGCf6rhdGbv1vceov01lLIyxAajwlt4psjJxQ2qF62COX+4qgWFlTWOXGm0F12cUaQ==
X-Received: by 2002:a05:600c:1695:b0:3da:f502:83b5 with SMTP id k21-20020a05600c169500b003daf50283b5mr13679062wmn.2.1674210097517;
        Fri, 20 Jan 2023 02:21:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c468700b003a3442f1229sm1914667wmo.29.2023.01.20.02.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 02:21:37 -0800 (PST)
Message-ID: <64c676cc-774c-0c6b-cbc6-9a6f1c58967f@linaro.org>
Date:   Fri, 20 Jan 2023 11:21:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/9] ARM: dts: ls1021a: add TQ-Systems MBLS102xA device
 tree
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
 <20230119144236.3541751-3-alexander.stein@ew.tq-group.com>
 <7cc4c0d4-d863-a62d-3867-ab03d7f7507a@linaro.org>
 <2902259.VdNmn5OnKV@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2902259.VdNmn5OnKV@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 11:08, Alexander Stein wrote:
> Thanks, will drop it.
> 
>>> +
>>> +		stmpe_gpio {
>>
>> No underscores in node names, generic node names, so "gpio". Does
>> anything depend on odd naming?
> 
> You are right, node names should have underscores, but in the end I was 
> following the bindings (Documentation/devicetree/bindings/input/touchscreen/
> stmpe.txt) naming 'stmpe_touchscreen' and 'stmpe_adc' in the example.

Example is not bindings.

> Each subdevice has it's own compatible, so there should be no issue.
> Using just 'gpio' and 'touchscreen' below I didn't notice any difference.

(...)

>>> +
>>> +&i2c0 {
>>> +	status = "okay";
>>> +
>>> +	mc34vr500: pmic@8 {
>>> +		reg = <0x08>;
>>
>> No compatible? What's this?
> 
> That's a DC/DC regulator on the module, currently without any driver support. 
> It's controlled by the PMC, see below.
> 
> We had an internal discussion as well whether to state clients without a 
> driver (and thus no compatible) on the i2c bus. What is the guidelines for DT?
> The benefit stating, even without compatible, is to show there is some device 
> on the bus.

Leave a comment, but not empty nodes.

Best regards,
Krzysztof

