Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB08458A89F
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 11:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237962AbiHEJSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 05:18:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235201AbiHEJSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 05:18:52 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7842C12089
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 02:18:51 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id w15so2446290ljw.1
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 02:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GTjcoqI8Zy27Jjru/d59SIQfAPUV+r8g0eBDkIE396k=;
        b=lKhJRkSEw51vKDVAn2VeUUsFqN2x/2Od3nB1tmiYf6aGDUh/wZ0B+lDEho5FuKYvyr
         Fantq8i5HJb/ZXuQzQ770l6rOlhAJNk+Zx+EhJpn5mT75AToQhQfOQzIyPF053hvOOOf
         n4Mg0txMOKJBUZRIgNk9sj1/Ci3RUqtMf+QnYEBF85ngVA5KzK13/Dc+Cr7mO/XKnIvW
         aBVXwo4/3ztNXMMq98gtV/6zvdrWXk3FOMc7di6PWYLTDo3RzMd5w5sRkCKE69lhyty3
         d0hOO52zMLIR4QiEYLpLMag0aQPUfTVCr0oclshUUKbWkkgMEKpOR/gk0wspWTsFyVO6
         co4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GTjcoqI8Zy27Jjru/d59SIQfAPUV+r8g0eBDkIE396k=;
        b=7sVPoJmoT2AhuniH8mZFeaufBso0W14W56p97tFH0+fwDGaEgyrJ+ifY1NGgPkU92g
         DRse4UbeFByYSeHa2EpZcn3ETxFkPopgrhEeS1oG+4ExseIM9qPIvn2OWMrbHdCzqRnH
         t0ZSlLqiQMW4NkgANxnhcm5CK7tsjFu0LoXYlmNNkRNz/HEsPR9+mw29dkFUGIK2Fu0N
         vGOC2jkTOAo+R6OPC3HpoREjaAA5i5ad7d9dZ0hjvIbMf9I4/Oy7efk4YmU3bPzTiEW6
         GI0nhr+laFqppEYNh6ORqkHlWUfl4+3d9Ns5LbK0g8H8Puwd6MupmPAEMXUl+hdwm4YY
         /YBw==
X-Gm-Message-State: ACgBeo0pDxrhsaERMPvPzWBxeBN/peURkC3nqthiqyDHvnsPkWuGmHGT
        S3FYLAFdz0JGrOdHSDxSq0Ahrw==
X-Google-Smtp-Source: AA6agR7wHuNA7a+JazzGC2jn/GP7TBwgHVZRkO2xAVt7CAJVVMAvSYiwie/Daa3N1pCyJKOHQtY0/w==
X-Received: by 2002:a2e:82c5:0:b0:25d:83d8:41b with SMTP id n5-20020a2e82c5000000b0025d83d8041bmr1705001ljh.140.1659691129869;
        Fri, 05 Aug 2022 02:18:49 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id u13-20020ac25bcd000000b0048b0062a14fsm405209lfn.144.2022.08.05.02.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Aug 2022 02:18:49 -0700 (PDT)
Message-ID: <106e443a-e765-51fe-b556-e4e7e2aa771c@linaro.org>
Date:   Fri, 5 Aug 2022 11:18:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: cpufreq: add mt8188 cpufreq hw
 dt-bindings
Content-Language: en-US
To:     "jia-wei.chang" <jia-wei.chang@mediatek.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hector Yuan <hector.yuan@mediatek.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        hsinyi@google.com
References: <20220805091211.2791-1-jia-wei.chang@mediatek.com>
 <20220805091211.2791-2-jia-wei.chang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220805091211.2791-2-jia-wei.chang@mediatek.com>
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

On 05/08/2022 11:12, jia-wei.chang wrote:
> From: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> 
> Add mt8188 cpufreq hw compatible in dt-bindings.
> 
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> ---
>  .../devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml      | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml
> index 9cd42a64b13e..b56d36224612 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml
> @@ -16,7 +16,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: mediatek,cpufreq-hw
> +    enum:
> +      - mediatek,cpufreq-hw

Can you add a comment mentioning for which SoCs this is? Someone added a
generic compatible covering all MediaTek cpufreq-hw (all!) and now you
say it does not cover all?

Best regards,
Krzysztof
