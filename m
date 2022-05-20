Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 604BE52EB40
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 13:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348800AbiETLyN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 07:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239088AbiETLyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 07:54:12 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39D4915E48E
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 04:54:10 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id c19so804398lfv.5
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 04:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rSuzs4n4Sskm3JHT6PT66YWFV3PUZnimPTSzRD2tWSg=;
        b=wpU0Xbi3qNPhIsGbn3dTnIJjM0guksk6R0+2fenSiGhdpViMAQwecBOTD6TSGuyT+E
         uUB+KkSPJLE2hZE1m+XHi+XvIEOYhdcwkMwKILksmRBLUSEF0AChl22J2FR+pR8Y6aoM
         I6/nj+/ttx8o2pLGwFJmgVnxj/97Rp3IPxhNEoUV5nPKZTBvpzDr3ZGvseVYJROTwCte
         u4DUBrDePqhdXtUs4xQWmHYCUHf4tfeMllUs7Pr7MU2nW8LpOHLwL5+MIHHyNC+B3n4G
         6f5gY/5q/MMUUfU/9/CRzhAghdlEx6ErskRuy18t0iwPlUpIVTM9kMf4eZgqm4ztSp7A
         DdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rSuzs4n4Sskm3JHT6PT66YWFV3PUZnimPTSzRD2tWSg=;
        b=RlSNi6UL8nvAOEKn6G9mXUHkLbWrGW69z1dnpnEtT2p5Qc4apTNech1ZQYcQIcJef2
         KdV++UdWXl5Mz/El1j8MJy3CSjByDBUBH95ZVIlLbG6tHUGnZq3KeRtG/9nSHTVCAWsZ
         2iYoJb7I1JFSFw+VNsDZfRrHt8CBrk2pPeKUBPXe/hVM6+FYImIbVxy1dskkrZI397hb
         qV7rSMiopee/avRAZSS5FCacMGWNnNVYbXaKjrIpEAcdqX/FcDmvZNU5E7nYBbkhjulu
         K5tZ3scOGrQwHs2gswmnoqFSl0mMQb7zJTmFZoxorrcDFzF9cX6ds1be8orA1xwcA99C
         MInw==
X-Gm-Message-State: AOAM530hxcVck2vdEnPkkXXRHIeHxWOWwJY9BIcuOCY1lxL4lB4Uwx/d
        j3cBJ6lu27hj4ysZDZB4xb9V2A==
X-Google-Smtp-Source: ABdhPJwHbS3B+g10NGZBGRxnNDfdHe7p/uRXjL55A1oYzFJvqnTHUNryLFfceBT55K+P1aalTA9hvg==
X-Received: by 2002:ac2:43a1:0:b0:478:5867:5047 with SMTP id t1-20020ac243a1000000b0047858675047mr1004918lfl.37.1653047648614;
        Fri, 20 May 2022 04:54:08 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o12-20020ac2494c000000b0047255d211a5sm632074lfi.212.2022.05.20.04.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 04:54:08 -0700 (PDT)
Message-ID: <dc883b3b-9eba-e883-cedb-e848b13cf746@linaro.org>
Date:   Fri, 20 May 2022 13:54:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] dt-bindings: arm: qcom: Document xiaomi,natrium board
Content-Language: en-US
To:     Alec Su <ae40515@yahoo.com.tw>, Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, y.oudjana@protonmail.com,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        sboyd@codeaurora.org
References: <20220519074112.25600-1-ae40515@yahoo.com.tw>
 <20220519074112.25600-3-ae40515@yahoo.com.tw>
 <1652965539.974526.1359566.nullmailer@robh.at.kernel.org>
 <7e5ecca1-aef7-ce90-7797-7f8be3b55715@yahoo.com.tw>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7e5ecca1-aef7-ce90-7797-7f8be3b55715@yahoo.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 03:23, Alec Su wrote:
> On 2022/5/19 21:05, Rob Herring wrote:
>> On Thu, 19 May 2022 07:41:12 +0000, Alec Su wrote:
>>> Document Xiaomi Mi 5s Plus (xiaomi-natrium) smartphone which is based on
>>> Snapdragon 821 SoC.

> 
> I checked the full log. These warnings seem not the new warning caused
> by the patch series. Look like these device trees are trying to match
> with each of the compatible strings in qcom.yaml.


Yes, I'll fix them.

Best regards,
Krzysztof
