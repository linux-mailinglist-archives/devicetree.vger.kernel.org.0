Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 708245EF40F
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 13:13:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234861AbiI2LNV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 07:13:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234890AbiI2LNT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 07:13:19 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8246213744F
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 04:13:14 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id z4so1736805lft.2
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 04:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9XLTjcTfR7oKSD6FYuz8rsf9GaidwI4jkeOMp+Vcpgg=;
        b=VILJW6FkPk1WbGBiCV8qFpKI6AtDdxlKMn1nkgynaFiFDYXgYALLkde01boSxSjc9y
         VTtRPBQQuCYc66LY6UTkxgPNNKj1rBPnUmqHtovqRq/zmqOc4TmFThTC63sch0Oi2rQ2
         kC8A98Hih5oPQpZyHRoNTdbdD9tyBEMbsgU+0aMyBeK2PUPsRJy+NDr69LTA9z+jkJ0L
         k319ehu5cXosJQn++rTiqrw2IPS+PpgODfNUbhjuX9XZd1AmsSwcujSjIFjLQzjDZgE5
         XjzssLtQ4wOvCZrxuIq2CY4VM4ahQR+LS9Ksb+c1OWiAvK2jXpeYWTOQAXanUCMbMdEy
         7aVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9XLTjcTfR7oKSD6FYuz8rsf9GaidwI4jkeOMp+Vcpgg=;
        b=I9i/Pokaf1z5SrG84cPKzZOH2/Yxlc9dCmrbG9wa6WlfesAl+VMPKn1NVkfeUlxpga
         oHL7XcNehu4Txh4o7HYe57m1Sp3F6+vuMXdSkpFvQmC4L1s6DhsT0hgnO2/jIyptYojQ
         6dEec5X/I6lGrUmEpMA5IOEjBDfGNwIj/dSE9Gq4C673M/QVU3wApfWmV377F2eT2drf
         pWc+8a1DAbMu9EARn9igj2KJcycxEz1E8LAwf2e1JP7idzBx+2+ofvd4e1t5GC7m/K3P
         awdrV+vcxOimn9I+tX9vC8Sm0Pw7Mmc8VrDW04yHCvJ0VmybXRZtQ3yxSkYSsImHg2hB
         ix+g==
X-Gm-Message-State: ACrzQf3Q1pTpIzH5wzVhxMjreA1xqM0GVWf3eSvDliV4lzdSpTw6Tyyy
        QSBuoWQm7aLQ1sWbLpxNtJBEHA==
X-Google-Smtp-Source: AMsMyM6Da2z1LE8/N7lc1Nv5jLptMuhM82djEkbuGMvc1Nn6mwOVTPATqxh0opJtTKeFH3DT2jNBgg==
X-Received: by 2002:a05:6512:b17:b0:4a0:13c:9b3f with SMTP id w23-20020a0565120b1700b004a0013c9b3fmr1105109lfu.91.1664449992253;
        Thu, 29 Sep 2022 04:13:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k17-20020ac24f11000000b0048b365176d9sm753425lfr.286.2022.09.29.04.13.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 04:13:11 -0700 (PDT)
Message-ID: <059dd56e-d778-5b10-0285-3555ba930410@linaro.org>
Date:   Thu, 29 Sep 2022 13:13:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCHv4 1/3] dt-bindings: mmc: synopsys-dw-mshc: document
 "altr,sysmgr-syscon"
Content-Language: en-US
To:     Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Dinh Nguyen <dinguyen@kernel.org>, jh80.chung@samsung.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220928165420.1212284-1-dinguyen@kernel.org>
 <CAPDyKFp5oPuOz9A=37pRTvq7JPtJRdduEgmU9g+eUm0K=dZjUg@mail.gmail.com>
 <0fff7922-7932-dda7-f476-32f4b0d09fa0@linaro.org>
 <CAPDyKFohA9gKu8qwR+YUCy46tepO3k7fQqcHPvjYMznDmckLzg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAPDyKFohA9gKu8qwR+YUCy46tepO3k7fQqcHPvjYMznDmckLzg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 13:04, Ulf Hansson wrote:
>>> So this change will not be backwards compatible with existing DTBs. I
>>> noticed that patch2 updates the DTS files for the arm64 platforms, but
>>> there seems to be some arm32 platforms too. Isn't this going to be a
>>> problem?
>>>
>>
>> The backwards compatibility is actually expressed by the driver. If the
>> driver keeps ABI, we can change bindings so that all DTS are being
>> updated to pass the checks.
> 
> Right.
> 
> So, I should probably have responded to patch3 instead, as backwards
> compatibility doesn't seem to be supported, unless I am mistaken. 

Yes, it looks like

Best regards,
Krzysztof

