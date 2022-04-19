Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B404507C5F
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 00:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358165AbiDSWGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 18:06:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241143AbiDSWGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 18:06:19 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B469740E73
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 15:03:33 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id x3so11506658wmj.5
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 15:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PWuHE0XoOPojKzjEsniW3P6N2a9mVtnpLAiJcKJSdNE=;
        b=H0X5g7nYbyY+UQ4qbpovEudISkgPhSm+ipZrz4iGI2OA0rsDA4a2Hk1C5dv0axt2sn
         g8anQbit8C2e8H3o1++TM6VvrK1O+6UOHRM34hU158Rlm/C6cUSNS79s/vZuFPKjoR/O
         4EN4KGF56OI9T0uQVniusBvW/8WKn37B67D9+6kXS+nivpwm7pfsjIN8LI6hy8vj6+z5
         QIhsvHPeNTsZdUmZhwSbKsu9qY1E/hYANoPV9nz7fHHqkBK9i9l+N4NPaqtI5KBVsNED
         SjhtwRUUnNpqOwBJ0ojdGegXimpMhepJK3jaDoPiDNyHhLwdTwVvlSTxgUyhIdpKh09U
         3ZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PWuHE0XoOPojKzjEsniW3P6N2a9mVtnpLAiJcKJSdNE=;
        b=0wxW2c1OMrI/IACqBNlT4rdqRBpkdaOCPrVkCjYTyyvsSmN3NZDVpFcyQ8cRDAGz6U
         nE1bNYYOtk6SEssUSebC9i0I4zLSgzA2iIDCvTS++EofW8dpcheIW1bRIjR0HDy+NPTR
         qJtGWQ3NNQvqfvkjENaRPGrSVUBMhkNFZsB2MxkdrlzF28a2oY54GBrnzozbhBaaF5Mz
         Vlrysc70Fz7Fx1L2n6kpvhi2Rxmlzg/vgDIuOAlTpvd5EGUvqBWSERrPXMbeSv60gzeg
         1bp3RxBMNH5SO9sSDgsXDRkHzHXXohIzU6na1f+sxD6/ZqHihK4DQAxQT0gOoR48chND
         9PmA==
X-Gm-Message-State: AOAM530WW9JniCkE0TVcMUJma5Y4zMf0VUuJtLLnR2CYFvtJe+9wumzb
        cEnFN1FAtWOjpA92yxcas0kGug==
X-Google-Smtp-Source: ABdhPJxDJ1rI5kDKiMLJ+aQC9FQ7fnWhalZhf8ba9SVUZSOR45YV+G6CEP9CjQcraCOEvkREA+OGAw==
X-Received: by 2002:a1c:2744:0:b0:382:a9b7:1c8a with SMTP id n65-20020a1c2744000000b00382a9b71c8amr527095wmn.187.1650405812251;
        Tue, 19 Apr 2022 15:03:32 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o11-20020a05600002cb00b0020a88c4ecb5sm9664133wry.3.2022.04.19.15.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 15:03:31 -0700 (PDT)
Message-ID: <552547c1-36c3-8d7e-0fd5-1b22fd184b4b@linaro.org>
Date:   Tue, 19 Apr 2022 23:03:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v1 4/4] arm64: dts: Add msm8939 Sony Xperia M4 Aqua
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, shawn.guo@linaro.org,
        jun.nie@linaro.org, benl@squareup.com, jwillcox@squareup.com,
        jgates@squareup.com, mchen@squareup.com, zac@squareup.com
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-5-bryan.odonoghue@linaro.org>
 <Yl8NLldCWaecisH5@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Yl8NLldCWaecisH5@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 20:27, Stephan Gerhold wrote:
> tulip seems to have qcom,usbid-gpio = <&msm_gpio 110 0>; downstream.
> Have you tried setting it up using linux,extcon-usb-gpio?
> See e.g. msm8916-longcheer-l8910, it has a similar setup (it also uses
> smb1360 for charging actually).
> 
> The advantage is that you don't need the manual role switching using
> "usb-role-switch", USB OTG adapters should be detected automatically.

My understanding is "no new extcon" - certainly as driver 
implementations I assume that also extends to dts..

---
bod
