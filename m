Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ECC751B9D7
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347172AbiEEIUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:20:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346860AbiEEIUD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:20:03 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD985488A9
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:16:14 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id ks9so840087ejb.2
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dbqRuE1CwLabN+x/TH0QISlcTwlgIHsGqNhIQOAw7D8=;
        b=Hm5+RkpWUVUenENqa5HRpdatP8eR2ck2VhwJhLldJlknP4AFbWGCfkzPTyjQMbv5Aj
         9jUNaesVcrQywmr/KUMu7zGOxfiUbCcKbhyH2y1Pg13a+0yjeAHcUm1+0aBOmYqNTbac
         O0wacDk8GguBSoX0x++JbGS4MBOa4qeqS5aUPaUfo8FT9xFAb8hK0TKSxAgpSpJgBmHn
         zhF+HnSjo0qnz8IUn9JIt/xWQric63Sh//wc4R1VzUN+LpFBN8YjIiJ1nzcsHOvgWK0N
         MC7U1ZAt4gkuQRHwFFYivfGXJmTGaOdJ5Y5gR5P6q826rp3/XBrw2igHfCBsNDJz8jkP
         B7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dbqRuE1CwLabN+x/TH0QISlcTwlgIHsGqNhIQOAw7D8=;
        b=UuGDmPOUfxRN7/i82jaiX43p5FAAmZnqKKx5gW68xkjosufNqlRIqLdJuymWJABEo6
         XyOta/z89u/nB8T185FLZKKRIRG6tH9cbL+xhOb/h/SRIj2mvlu98jD+h+RToYyqmWjC
         Ejsb/HOFigIVJXYtXXgna5szST0V3+Wd92TgwuXQf9YlSo+9VhknVNs+4r9qnVkTX86Q
         mSc0FANp/zZEpdlwg8jNpDeugN2Eww20kptfZygsiwfqelfGuoY5IWC/NsSPri34wlAQ
         EBHgt7daDhfExMqWqUpOspxQ7q5pqlF4BoweFyxI0S6LNpyJW/Mhh8rPnq6UCGeM+GzZ
         v+xw==
X-Gm-Message-State: AOAM5335y9ja0STeqYANkYrvMHZBl8937E86K/nvyTFZKS4QaBgtuVXv
        xXTvST0LhHBJIOSDI2QV8eIFjQ==
X-Google-Smtp-Source: ABdhPJzOCxFTc+gf0aPuaRSWhYAXjy0l7MDIrOGEIPgZqgkJfuPQ7mT1moyZeaGlGLk0Eg5tRdUQNQ==
X-Received: by 2002:a17:907:6294:b0:6e1:ea4:74a3 with SMTP id nd20-20020a170907629400b006e10ea474a3mr24398950ejc.168.1651738573066;
        Thu, 05 May 2022 01:16:13 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b18-20020aa7dc12000000b0042617ba63acsm475480edu.54.2022.05.05.01.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 01:16:12 -0700 (PDT)
Message-ID: <04af4087-cd03-667a-52f0-f801b783602a@linaro.org>
Date:   Thu, 5 May 2022 10:16:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/2] dt-bindings: clock: Add Qualcomm SC8280XP GCC
 bindings
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220505025457.1693716-1-bjorn.andersson@linaro.org>
 <20220505025457.1693716-2-bjorn.andersson@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220505025457.1693716-2-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2022 04:54, Bjorn Andersson wrote:
> Add binding for the Qualcomm SC8280XP Global Clock controller.
> 
> The clock-names property is purposefully omitted, to clearly communicate
> to the writer (and reader) of the DeviceTree source based on this
> binding that the order of "clocks" is significant, in contrast to
> previous GCC bindings.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
