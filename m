Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B854557B120
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 08:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbiGTGaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 02:30:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231202AbiGTGaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 02:30:19 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A4D811A18
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 23:30:17 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id u14so11982714lju.0
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 23:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=svwBknUY50fmzabnEaICrZK9R0fh/lr5fpPdH5SEovs=;
        b=wgDaRIzqN/pGdLypgVO3Z8tD5NNE8KvD2Y8qC6/d3+Y5wuR7re/gdIJdrz7BEuOt05
         UeEi17qiQgHByTtOofLXN+0/nZ52q8ZsQxCZLoDMMORjyv8pRY4nJCR4H9wnOTjb7ROF
         pA1nSB/JxV/dkVNM24j+K8UMoMd+vuAWpdtlJ78byHtlN2h89B5gKmeuASp/pY7pOa5v
         v36NW56+nptXuHi0W4Rs2RCgxbu+UvCqehoSw/HtvEHRAzRVX0uVgyYRRfhdciF5oXWO
         31bcAtekwx1NDiDsaGGnBT0DsH4uL8dkbk4+IQUB90Rnj3Y/8x7TW/Xo+Jok1AWMufru
         JsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=svwBknUY50fmzabnEaICrZK9R0fh/lr5fpPdH5SEovs=;
        b=10GkUwQ8mS9bmvwU417/wzgVWDcZdTsRod2Q5hWmYQfA8PFLTi797+jFrxeU1WIjX8
         FEIVmHFuxZQ+mf7SBTYkEseqqK/klqHVaoVMZXdfM3/1HdOGZIfwDmJ3Mk7ZQHtzVHbk
         40TauUFL2Pl+DrWJobtcs0PZT7yYfmkQ0TZiPJwVb1+cz2uRczM5T49iKFka+0EmcVMy
         nPc+X33M/wbYI8/z3o1UK5mG/dM0r9kVBYr5TQVeO2ahGPFy7Zw4jY4eZtWTUdLiVk7L
         BDKv9kx3AzUqHSRiMEePgcegPHIVc+0Y9EQvA9AOKN6T07iCzbFpMbw2iQxFUqbofTwX
         rjXw==
X-Gm-Message-State: AJIora/09/ILLqbLZJFzNz2jNmrgN0y9y4W/JK12nloAYdaE87H59OyD
        ZxDdnM3IlF9SuHV5MEaaO0qILw==
X-Google-Smtp-Source: AGRyM1vf7GN6vgL/2J3B+G/GpAG/sQuS7t5m8lyVqk+/jaLOs9tVA7KN2osw6Zf6G8PB2ZE7mExing==
X-Received: by 2002:a05:651c:204e:b0:25d:4798:9776 with SMTP id t14-20020a05651c204e00b0025d47989776mr16630931ljo.86.1658298615813;
        Tue, 19 Jul 2022 23:30:15 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id a25-20020a194f59000000b004896b58f2fasm3618062lfk.270.2022.07.19.23.30.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 23:30:15 -0700 (PDT)
Message-ID: <991f085e-ae79-bf67-d063-51484a0ba344@linaro.org>
Date:   Wed, 20 Jul 2022 08:30:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom,rpmcc: Add compatible for
 SM6375
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220716192714.454031-1-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220716192714.454031-1-konrad.dybcio@somainline.org>
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

On 16/07/2022 21:27, Konrad Dybcio wrote:
> Add a compatible for RPMCC on SM6375.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
> index 9d296b89a8d0..f22febdfdce7 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
> @@ -43,6 +43,7 @@ properties:
>            - qcom,rpmcc-sdm660
>            - qcom,rpmcc-sm6115
>            - qcom,rpmcc-sm6125
> +          - qcom,sm6375-rpmcc

I am fine with it, although this contradicts a bit
https://lore.kernel.org/all/20220705161301.493364-1-krzysztof.kozlowski@linaro.org/

Would be nice to get Bjorn's opinion/preference on this.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
