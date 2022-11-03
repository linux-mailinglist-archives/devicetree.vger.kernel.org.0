Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAA85618392
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 17:02:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbiKCQCA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 12:02:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbiKCQBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 12:01:49 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 244091C438
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 08:59:30 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id h24so1489340qta.7
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 08:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HqPHgJ6Q3vsyoxK2rxkkcSzhGC1UMJJ4vLngK8JJSBI=;
        b=R9NxGyinhuqPxRu1XcOQxXx1AQlXSnqe5SzfUST4sZES5Ne3V+NcpkLYWRDAc+kaKi
         RCK3x7Ix9mm3qtDMJh4X3aPsLN4rAVj/l3fBb3Nt2I50gGuDfSa6oQ6ZPQ/vTYC8pfKL
         4hMxOu/EW0fKOxNQc/hrCj1AyPFB0kdTkte5bxk7/ka5xTa+LZzAVmjUN/M+bxT4G+ej
         V17k/ssV/HC7/doIEf40Nk/XlzKrWt3Sy0/ogXkcByxBw5gRilJBEA5s9zyyqgNGGaNJ
         fW5Mi/KKehwLmr+JuPy6/o9h3YrkBVEzqjoeSaipOgQzmgONJPBUcaSCAcSZLES7TFwS
         qp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HqPHgJ6Q3vsyoxK2rxkkcSzhGC1UMJJ4vLngK8JJSBI=;
        b=OMSyRfjLdIGcqrnzLYHEsq6CCXJNHXEZjUPmoONJnBFdbbd/+6a0YhptSWr1CUqOdZ
         54ZkJCSbmvms3C0cJj6VdF2zF+77ZIQol1OxsMlq8rRsGRIZ9jkzfHyR8ULJ4Hwn+4Eh
         CX3tnJ3PcOy4KCtXmP5t5VkNBcKhr7XHfrjNN2Blay/5EWHvWjuo8PKkg6QjkZtuSvCR
         hIa5JzqbGk3kk5mfnBHl5X3yk4o0UUPkEPMKH+wfwy1sPNC4tSvVjbAr4EI7vaaBBvQL
         UNa/Sx7H26vRayOMJuvSShsekoQUSnc0N6IY6BCJzrLXYu9uHyGnKpOUe3z6xhu7aQcr
         z6Xg==
X-Gm-Message-State: ACrzQf0d9vuQ/vA7OShE6uy0UL/lpToDIf+D4Ejw3Ox9/3qRGnUcKecO
        1h930C2qQsea8VU1IcfDN8RGT3lE7ldcyw==
X-Google-Smtp-Source: AMsMyM4Ez+YmyQckzZYNxvQpqbdHwzT1eLOp+gEs2cCwM+O0LA358ApAAKdIr2bWWenPpWNwhruefQ==
X-Received: by 2002:a05:622a:42:b0:3a5:62:af70 with SMTP id y2-20020a05622a004200b003a50062af70mr25527159qtw.106.1667491169243;
        Thu, 03 Nov 2022 08:59:29 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id bp9-20020a05620a458900b006f7ee901674sm1016996qkb.2.2022.11.03.08.59.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 08:59:28 -0700 (PDT)
Message-ID: <c6dd773f-3554-7cb6-51e7-0e49a451b42e@linaro.org>
Date:   Thu, 3 Nov 2022 11:59:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] dt-bindings: usb: usb-drd: Describe default dual-role
 mode
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org
References: <20221103115923.1467525-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221103115923.1467525-1-thierry.reding@gmail.com>
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

On 03/11/2022 07:59, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The dual-role mode default, in the absence of the dr_mode property, is
> already documented to be OTG. Use the "default" property to mark it as
> such more explicitly.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  Documentation/devicetree/bindings/usb/usb-drd.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

