Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 729CE4EBB66
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 09:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243555AbiC3HEx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 03:04:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243567AbiC3HEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 03:04:52 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80787E72AD
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:03:06 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id bi12so39632534ejb.3
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oshmNo9QpI++PBeGcUfK8FqiE0bcDHOAFRmb1sC62DQ=;
        b=k4L+d4Wg3xJWIOSafNRXZNWhQTmcoDKyUDF5jigBkuv5rDoybp1GjNA0AOEWk4KhxR
         9Ek1wCA4dNwrCI4LrlhCmVdQib3oIuVhZIfPMyyaDsKSlLBFFlrrsu3hXDSi4FCLaq8O
         bxMPx/L0Ab3u5PXng11itfMgvoFsCVnuSm6IROuxZV4/2/tfmk1By5lfFU7RgUClNHQY
         hhyYUVFbZnLCvr1l+g2RvBGgWM85Y8kggIevWklVLjjJZ2D5r73TTlmI1ep/tazn38jv
         2D5DJ7jqiiP9r/QpOl4QjXsmkjbrRtyUEwrD+oGqET1/suW9lbYevp+F7uCV+2lwDyJ8
         9HLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oshmNo9QpI++PBeGcUfK8FqiE0bcDHOAFRmb1sC62DQ=;
        b=MKnRmyOg4OfBMDNkHUbMtxZE+8jss57Y6Fnm4le7B9Ub3R7Jb8hzMmtNAjq//chgvC
         YysDDHio5XBDEwEliEk2k5Mej6g5a4SUilN8NZZLKibqQOzuxslEKUkAhsjiFGGDN6dB
         Yqno+g4uMmOljtuNiMQkLkTkcao3heoqRISQFWhMZD39ZFiOQTxRE521HSzs1cYz6VaG
         Az0EGKV5ox7mR61hBmPtJayRJn+q4PNlcWj5OfwuDGLCS1zhbWa2F3tNSU/4wkxRP6rc
         BRbvIH6xUCrnSYcneFb1OFxRxvBdCv2I2Mst6f2tlUz6E6QoO9RuiMB/8WRCS40aSeFz
         Y+pQ==
X-Gm-Message-State: AOAM533nACvbcCTDijWCCydR+BWPLTVRvCkZjAVDfullWu0+hYUxtoFa
        iTdUauCPt2BUrVVjU44za2TAhA==
X-Google-Smtp-Source: ABdhPJz5xHARA4VHf0zoxalwHrQm8Dw4UegHI0/zWR/8z1C7CPrOhvZ3Plw3MZxcMWnMCtZoV+Dp5g==
X-Received: by 2002:a17:907:2cc7:b0:6df:b76d:940d with SMTP id hg7-20020a1709072cc700b006dfb76d940dmr37968892ejc.742.1648623785083;
        Wed, 30 Mar 2022 00:03:05 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id g2-20020aa7dc42000000b00418ef55eabcsm9447609edu.83.2022.03.30.00.03.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 00:03:04 -0700 (PDT)
Message-ID: <f9d83e70-75cf-56f2-9c3e-05381b12325b@linaro.org>
Date:   Wed, 30 Mar 2022 09:03:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: qcom: update maintainers (drop Akash and
 Mukesh)
Content-Language: en-US
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org
References: <20220329113718.254642-1-krzysztof.kozlowski@linaro.org>
 <20220330054751.GA51248@9a2d8922b8f1>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330054751.GA51248@9a2d8922b8f1>
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

On 30/03/2022 07:47, Kuldeep Singh wrote:
> On Tue, Mar 29, 2022 at 01:37:17PM +0200, Krzysztof Kozlowski wrote:
>> Emails to Akash Asthana and Mukesh Savaliya bounce (550: Recipient
>> address rejected: User unknown in virtual alias table), so switch
>> maintainers to Andy and Bjorn (as Qualcomm platform maintainers).
> 
> Thanks Krzysztof as it was really anonoying to hear bounce emails.
> 
> One thing, I heard bounce from Akash only and not from Mukesh.
> Did you hear bounce from Mukesh as well?

Yes, both:
550 5.1.1 <msavaliy@codeaurora.org>: Recipient address rejected: User
unknown in virtual alias table

I think there might be a change in the email domain, so the best would
be if Akash and Mukesh simply updated the file...


Best regards,
Krzysztof
