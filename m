Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96E38637A8A
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 14:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbiKXNxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 08:53:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbiKXNxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 08:53:41 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF9FAE0DC0
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 05:53:40 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id g12so2671682lfh.3
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 05:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P8lbUu6OFIl7NccN7UG8ZKYXFkiaHI1XkyswdMkXj8c=;
        b=K2uzXr8LtHcvWqkJF/JEwxLR4ecnpLaumkSgW+1rexxqTYcEX168nhUEN42HSfKa3X
         Sg+sPlGWdwIFNLZQz08CpI0HuwCJIm5FsNOEZWzPtJ1B5Fbv7FaruT4Ug4te5DawuUNN
         +SkMioMJ+Zw0mMDBxLXVd19ukHNS/IeSPcsJ3mmGxnPAO8off4DVFCuP67sbNpreF2hs
         qlYnXu7SBmzgNqSwWqDRDbzmdIFkFD5NpMC21VOcaOSnaKc7HIMUhbqhxCQs/rGNx5Yz
         mhyFbzywSkD45rLongGT0erhSbo+hrzwcIKNzdO3iegJwqA0GosTDwZV2c4DaGDwQiLi
         6KAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P8lbUu6OFIl7NccN7UG8ZKYXFkiaHI1XkyswdMkXj8c=;
        b=7IxEkAkSbz+aoZSY/xknVtqadkG88yeRlj4su6BUT8ZLDn4y0HkViDeKsEmSwG53U2
         44i0+x+c8H4aWn556P0TOMctVM0s9SoGNcUWnJG+pbEDkA2G2pFKYmKrxhyW+qRSlsV3
         mPp0G8VTnSuulIxeim6SslnIDQUzlYObfzXpW46PWiIcoIop/iUkcJXudg+AJcvh7R+N
         BzzLcpyTQX1An385RIp5BoSYbABlunXXsifx6daCEUEYlsIZaRyPGdv88m18khqDflMk
         L9YK4KAYN4iSvw+j6pTUGlfDhpWrHVVkQpsIPOEjiqpbTcM6GysseG1OkB5CwlG/mclP
         tC7w==
X-Gm-Message-State: ANoB5pkhmG3cAJj+ge8VTon9D/AdDk7QzUtiN5SLG+VDGp1BaN9FT3aC
        Atz+gEvnGr0nDAMZMAOnwdHdjQ==
X-Google-Smtp-Source: AA0mqf6t/T0KZpzUbtEltL3VTN7eFSbYPD/4fl64zlMo7LAQqsCI5aeCjioKcCcT900So7/113ZPcw==
X-Received: by 2002:ac2:54a8:0:b0:494:7541:9dee with SMTP id w8-20020ac254a8000000b0049475419deemr10255586lfk.680.1669298019233;
        Thu, 24 Nov 2022 05:53:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z17-20020a056512371100b004b4bae1a05asm124794lfr.293.2022.11.24.05.53.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 05:53:38 -0800 (PST)
Message-ID: <23bd1410-bef7-65cb-be51-476efc832740@linaro.org>
Date:   Thu, 24 Nov 2022 14:53:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 1/2] dt-bindings: clk: Add binding for versal clocking
 wizard
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-clk@vger.kernel.org
Cc:     git@amd.com, devicetree@vger.kernel.org, michal.simek@xilinx.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        sboyd@kernel.org, mturquette@baylibre.com
References: <20221122121255.6823-1-shubhrajyoti.datta@amd.com>
 <20221122121255.6823-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122121255.6823-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 13:12, Shubhrajyoti Datta wrote:
> The Clocking Wizard for Versal adaptive compute acceleration platforms
> generates multiple configurable number of clock outputs.
> Add device tree binding for Versal clocking wizard support.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> 
> ---
> 
> Changes in v3:
> rename the clocks to clk_in1 and s_axi_clk dt
> 
> Changes in v2:
> rename the clocks clk_in1 to in1 and s_axi_clk to s_axi in dt
> 
>  .../clock/xlnx,versal-clk-wizard.yaml         | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk-wizard.yaml
> 

We pointed out last time that you already have the bindings for it
(xlnx,clocking-wizard.yaml). Don't duplicate it. I don't think this
deserves new bindings and new driver.

Best regards,
Krzysztof

