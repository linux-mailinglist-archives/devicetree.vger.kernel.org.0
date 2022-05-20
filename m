Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F5D52E99E
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 12:09:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348035AbiETKJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 06:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348025AbiETKJ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 06:09:56 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AF61D412D
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:09:55 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id br17so1170599lfb.2
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=S/QQ41iqJdG4//Xb8E9sd+rE0rPYF5cqB+tQAeF9cbo=;
        b=Bmx8sMfXVBo4/rNKybs+gTJLCyW1VtRdzvDi570yhwBXeZ5WeX2i6Bo33fLP0mkoJW
         Z7K5rxBQl9EyYjjDnHHZBDOSgDW9mJGeLmW1cIBkXUAGBNG9ca3OnYIV0wipNAiB8Ut5
         oEX0S1ItfCbYylL/yQqReI4vojD8pXZm524ZklPQ+AiYKi7qwdy2jI6o3oSJsmfChoeY
         rlQLsLTfluPQl40pdv2NKQ9x0kOL/NG1zTWujAILlo09L0o8s+KsXmj9mg8AsdgT7a2n
         EzBZMO0lrStciz+8roeUVKUT6wQBhnG+9I4FoLNN6xPI7pOX4lOjTvdj/XV0hLb/tAxK
         9LFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=S/QQ41iqJdG4//Xb8E9sd+rE0rPYF5cqB+tQAeF9cbo=;
        b=ZybN2v0HjtSl4p9FnqLJUh/lC11Bmb8nOCcKsrO9MnP6eWC5awgoTcR4diCEoVX4Jj
         r4kcWqpcWfh5MerOEvsxhysvQApshRVPR++V5+yH8mVAjtmHr+6+N5i3yDXOglE9nc6u
         pMO7sg1F6nqebG2MRscYaoZ/hM9vg5IAT1X+O5YKJ1LQ2eDvaB9qbRBWNlaSD5YRUl2r
         t7SGmCxzyjmA+YpZwAp38SBLO2Bnts/E5JcOUwtxF7Q8tsneGzXJWsdyV7FVnnSiGL49
         HzYDnDfchNZucYIdZ2f7UpnC4hoS/YOP+NQCv8I4C+6mZiybwsmnD61q+qqjWggJkyRu
         ZVvg==
X-Gm-Message-State: AOAM533nWanV8pX6rluNwNlfr7w+Mr/xyxedeFjdyXEKuOHnuXAxeEXc
        yQVyUSGEV5CoKKXmkzmt/Rt5Q7bcP5++btvh
X-Google-Smtp-Source: ABdhPJxEXbYOPibkmQ5rNjzgSNZvXx30n32PVIP2eNKExPPQuvQDF8EFlbIqO9lqxv32gqVRPtleWQ==
X-Received: by 2002:a05:6512:1085:b0:477:ffc3:3a7f with SMTP id j5-20020a056512108500b00477ffc33a7fmr2712184lfg.578.1653041393532;
        Fri, 20 May 2022 03:09:53 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w17-20020a05651234d100b0047255d210e8sm607828lfr.23.2022.05.20.03.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 03:09:52 -0700 (PDT)
Message-ID: <3e1ccf50-754c-c149-225d-e041c38e968f@linaro.org>
Date:   Fri, 20 May 2022 12:09:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/8] dt-bindings: hwmon: Add 'extended-range-enable'
 property support in lm90
Content-Language: en-US
To:     Slawomir Stepien <sst@poczta.fm>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, przemyslaw.cencner@nokia.com,
        krzysztof.adamski@nokia.com, alexander.sverdlin@nokia.com,
        Slawomir Stepien <slawomir.stepien@nokia.com>
References: <20220520093243.2523749-1-sst@poczta.fm>
 <20220520093243.2523749-3-sst@poczta.fm>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520093243.2523749-3-sst@poczta.fm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 11:32, Slawomir Stepien wrote:
> From: Slawomir Stepien <slawomir.stepien@nokia.com>
> 
> Using the 'extended-range-enable' prop will enable the extended
> measurement range for device (if supported by the device).

No. Please see other patchset:
https://lore.kernel.org/all/20220517135614.8185-1-holger.brunck@hitachienergy.com/


Best regards,
Krzysztof
