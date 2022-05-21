Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A304F52FD53
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 16:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355245AbiEUOem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 10:34:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237288AbiEUOek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 10:34:40 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8D4E5F8E4
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:34:38 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id q1so2760617ljb.5
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=f7yVVGhzAgX1cWIFxsEPVC/NZ8WTsH47DeAlTWO+NH8=;
        b=pJnyO8fTiM1uh0/+6gzuwB8Lm+k+0s1DoxJ6NEYcYRMFeboq5U/TWwx9VqivjeU93w
         /49LkANyMd25AZmGp/ZFp7GRJSWFHU1ybhUwEKC/+AlLRH9ltufi3Glt6G/N6qGpn6eG
         sEE+2uLsmuqsRq6RiNqG84mNDg1flMoCXA77FeO9Hsj1M+/X1FuKKQwu3QP/Y3VHsH+M
         0zsd5/QGQcXVDkobMRuizgY4+9tjiorHmXXNZU4ASS1/dH4gk2IkxtjlbjSWY0S56ylc
         dcNPyHOfHMXIXkY2qyNPTRIVbF8RQtKgok9DctF+IPmMIytqHc/xvg/voXj31KTU3qcR
         9UMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=f7yVVGhzAgX1cWIFxsEPVC/NZ8WTsH47DeAlTWO+NH8=;
        b=mnJfOvSrrNY3NgU4nPxgtpbGWud7HHh/9Q4aLT/r5a1fr6/XS3TeKrUo/A/W4HH0Lv
         17vVcWTdu4PruQTdpXUlwEsm09Gp9nBziO/74vXrCH88rRr1lrs5gwxRisGDh7e3HET8
         pjdhnOKxwNbFzbRGBJ4egfyZy5qhQtZJQ0inGqrGnSP/I8A6BV/y20WiQkYCMkpz5mKC
         diFuuVwk0nGZQnwxDsJKU8Z2C3xKpX4/0Zemd31gO6JWghZJySmrqN7wOGK+pQhZYuYG
         nUannZQLbiwpZiiYo7qAIsqKZonPVlJH97eOVMhFdWGOw6iA9yoFYv3hjn9r3k+TIx52
         bx1Q==
X-Gm-Message-State: AOAM531QyMKenBDgmWpJDUkgUlcQYv7/YAo7fQoK46oJMge+LzMmiOnr
        HdEpK+agu1qHE8HXR08UXU3mMA==
X-Google-Smtp-Source: ABdhPJzOQn60TUnZO4u+U3g2asg2RR3pDQG64PXg2esjG8zR00whkH3p3r3N0KD3a24ADNBiu+O2Jg==
X-Received: by 2002:a2e:8049:0:b0:253:e065:3720 with SMTP id p9-20020a2e8049000000b00253e0653720mr3148047ljg.123.1653143677270;
        Sat, 21 May 2022 07:34:37 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z14-20020ac24f8e000000b0044a1527df04sm1081289lfs.3.2022.05.21.07.34.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 07:34:36 -0700 (PDT)
Message-ID: <371ce290-1deb-bff2-112b-71be8c005b37@linaro.org>
Date:   Sat, 21 May 2022 16:34:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 3/3] dt-bindings: remoteproc: qcom: Convert SC7180 MSS
 bindings to YAML
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>
Cc:     bjorn.andersson@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org, mka@chromium.org
References: <1652978825-5304-1-git-send-email-quic_sibis@quicinc.com>
 <1652978825-5304-4-git-send-email-quic_sibis@quicinc.com>
 <20220520224011.GA374485-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520224011.GA374485-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/05/2022 00:40, Rob Herring wrote:
> On Thu, May 19, 2022 at 10:17:05PM +0530, Sibi Sankar wrote:
>> Convert SC7180 MSS PIL loading bindings to YAML.
> 
> I suppose there is a reason the sc7180 is being split out and the only 
> one converted, but this doesn't tell me.

I am also confused, especially that last time I pointed out that there
is work already:
https://lore.kernel.org/all/20220511161602.117772-7-sireeshkodali1@gmail.com/


Best regards,
Krzysztof
