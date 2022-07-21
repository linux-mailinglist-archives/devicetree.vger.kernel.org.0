Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 108B457C4A4
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 08:47:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbiGUGrT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 02:47:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231345AbiGUGrS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 02:47:18 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 706D66392D
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 23:47:17 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id j26so726360lji.1
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 23:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PrPgNBO+9p85TQzxrnrY5WOEkgNT8v7BsO0Ol1DHVHY=;
        b=SJg1x4WR6JY6Jw/8gBccfn07GjH+QW4J7aO4IM9NtCCNtwjalsTVwHpZjZgRiySlPn
         VFyl5UdAdz1uDnjjhKuj5DLZVVX3JDJWRvDx3nWvDuQBzSgrw+TJ/MpxSpHMyanRPyJs
         SwyH5bZVwwc1qsI9ZGF7eeTa8hv8WTNNCUS6njS9jLbrVH3sz3uJwTZyW0ydY70E1C4Q
         bvYeGdvlb0ijGhLqjSObj91Usy5HnsOOZOh9C0XD/Eiq0zHgW0qKBnquF6rWCPWQGzR9
         QbWMuCXoO5XT24AG3agoUMnU/7mrG+mKRumMhsxsZ1xWFOPzcbqHl7Pk1yNuMLdRHj10
         ewyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PrPgNBO+9p85TQzxrnrY5WOEkgNT8v7BsO0Ol1DHVHY=;
        b=llp/2EYHWKjaeilAs+GE9OG1WNf274EJVYjtx9YeYsnQRNQouNbj9IrZWQ+mHZQVOK
         //rXBNZyRtmdPJuz8jnu4Q+AyZKs0O+CuhQJ/83I3k7seruzBEkPKrPYGHXrz6Dayw7r
         AAULwu3YzKOshSD8OJlJGXG5ldG9S0UKyW8RnWKt8TmeASCp+n4X+jA4+bCIcAB/u/TZ
         koOX7LTpnGp1Dsdh/vTwe4T4imelW9yi8I/f1xAteoPwob04g43vBwjBvGuYvNGwy+oL
         jrsHMerGIx/rSMql8ZP0Ox+9AzcM0XQb0S32ToTdC58ZQUpTkxNrFu71lMni7gDNJY5G
         jziQ==
X-Gm-Message-State: AJIora/+K4q7/3oVwy/39zGJ1D+Y2qybMiFN/zui4sCUdWUDkDuaOF0q
        ZYqEs1n5kHHNkwp4/2ol+a/qow==
X-Google-Smtp-Source: AGRyM1txKqOXAaIedFTlaRpHHsdzuqTM4CRS9JsOVMJcWO6dZbVrO/5U2S5te5HbtPcdnleNH6qCGQ==
X-Received: by 2002:a2e:8606:0:b0:25d:53ab:87ae with SMTP id a6-20020a2e8606000000b0025d53ab87aemr17621797lji.10.1658386035829;
        Wed, 20 Jul 2022 23:47:15 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id u3-20020a197903000000b004833caeb8bdsm245328lfc.101.2022.07.20.23.47.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 23:47:15 -0700 (PDT)
Message-ID: <8e8a5195-9f7a-492a-5edd-8c763b03e0a4@linaro.org>
Date:   Thu, 21 Jul 2022 08:47:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 2/2] dt-bindings: arm: qcom: Document additional sku6
 for sc7180 pazquel
Content-Language: en-US
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220721033918.v3.1.I10519ca1bf88233702a90e296088808d18cdc7b1@changeid>
 <20220721033918.v3.2.I7ecbb7eeb58c5e6a33e32a3abf4d6874e6cb725c@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220721033918.v3.2.I7ecbb7eeb58c5e6a33e32a3abf4d6874e6cb725c@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2022 05:58, Yunlong Jia wrote:
> The difference between sku6 and sku4 is that there is no esim
> 
>  The different SKUs are:
> 
>    LTE with physical SIM _and_ eSIM
>    LTE with only a physical SIM
>    WiFi only
>  Both sku4 and sku6 are LTE SKUs.
>  One has the eSIM stuffed and one doesn't.
>  There is a single shared device tree for the two.
> 
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
