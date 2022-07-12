Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 056A5572270
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 20:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiGLSUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 14:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230296AbiGLSUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 14:20:38 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA7AC1FD0
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 11:20:37 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id y11so8803487lfs.6
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 11:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1gzR+wNqtuyrFm1FNlb8hG1Ws+B4tsa2kbSPanKefOs=;
        b=MdrqVdGHPFBC9uUzUWcPjdhJI4i9ybaD17Rg0ed5ztTaTJU0xfsWJLypKwrV3fEV6F
         aM7QgXJnr+avFwhfNGHGsGoLiIycb7aF7eawv4qbSo0vZy6S2wZqkHWzf66F29z9Nn1n
         Z4Wb2D6t3BbQxnVXcTv5JRMi1YzZ2sNhLkRXoleFt44jBS55WWgtWYlB7HoVC/0LCx2V
         FdnvaVwggTcMoOVfi3M7BJflf0EdG6xTQ5rv/dI8pVft1Mh255g6DFc6/CROUiLNLCKH
         lvvlD/wOCa569Jh+/06kHzoilhwxHI95TvwJYg0N472u1D3m1yTNOOnENnxhPPLtGsBE
         s9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1gzR+wNqtuyrFm1FNlb8hG1Ws+B4tsa2kbSPanKefOs=;
        b=V5YGNP7UPwG3a25sZdy1WC8LBVw54eR5x8EVtUzFUL8P8YUxuV9yZEZTRJiiOPTLwm
         ZssPBhhEcm4DTdVH/IjjXtCsco2dP2uhHd81KuSDc4nHpRW+aIu8kZEMZOCaJLj4dbgb
         BmlMSl7/UY5mgrAB65vjtGCawi/J51CssO6hvUa69d/U9GtjMoCnV9FjMa63TElwqH6U
         UFNG2xp3v/XE4r6OM8eI0wq1ZSasfOy+oFCXkLk2/MmgJVkDGS3GULfkB4bxuF77nHEl
         cI0uj+tP1wSWmfVnowDAVaBqjT8aQ2rT6p/w/GveMSITSb+HtNwxoGxTItCr+R1bssdX
         gL3w==
X-Gm-Message-State: AJIora9QF/zrY5H7VcjD69X0/txQDGtKCXKtVgdYUgiCizeR3uy5MgM9
        x4oz+R02vEUFSsL9PYgfH2SOVQ==
X-Google-Smtp-Source: AGRyM1vHeLvHwkweub6jEy2PrrfXVMh6MiTdXVhFvmcdwtG8Yv2b+E2aj/xsO+uWv9VWbmmSPmeBKg==
X-Received: by 2002:a05:6512:39d5:b0:47f:6e9a:5bf with SMTP id k21-20020a05651239d500b0047f6e9a05bfmr15826527lfu.580.1657650035973;
        Tue, 12 Jul 2022 11:20:35 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id b11-20020a056512070b00b0047a0300746fsm2299470lfs.304.2022.07.12.11.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 11:20:35 -0700 (PDT)
Message-ID: <5c79330d-7786-61a8-b464-d7e7171a7aab@linaro.org>
Date:   Tue, 12 Jul 2022 20:20:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [RFC PATCH 3/3] arm64: dts: bcmbca: update bcm4808 board dts file
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     kursad.oney@broadcom.com, anand.gore@broadcom.com,
        dan.beygelman@broadcom.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        joel.peshkin@broadcom.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220712021144.7068-1-william.zhang@broadcom.com>
 <20220712021144.7068-4-william.zhang@broadcom.com>
 <d93e55fa-3359-2609-aad5-c80eca78f380@linaro.org>
 <900ac3ed-a77c-3cc0-f5ab-c45267a1a4ba@gmail.com>
 <6b7bab04-90ce-6111-35bd-42cb3a1f73f8@linaro.org>
 <9bc3e0b6-833e-375e-70d6-1dbd036ef25a@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9bc3e0b6-833e-375e-70d6-1dbd036ef25a@broadcom.com>
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

On 12/07/2022 19:48, William Zhang wrote:
>>
>> Best regards,
>> Krzysztof
> 
> The reason for this patch is to keep the bcmbca board dts in the same 
> format and keep everything in the same yaml file. 

Not a good reason to change compatibles. You can have the same format
and keep everything in same YAML file without replacing compatibles.

> Understand 4908 was 
> already upstream but luckily there is no driver in linux and u-boot that 
> uses these 4908 compatible strings. They are only used in the board dts 
> as far as I can see.  So it does not really break anything in the end, 
> unless someone use them in any driver but never upstream their code...

So maybe just briefly mention it in the commit msg?

Best regards,
Krzysztof
