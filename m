Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDCD852CDDD
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 10:05:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbiESIEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 04:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235145AbiESIE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 04:04:28 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ADE957B18
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 01:04:27 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id o22so5275005ljp.8
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 01:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZZOJQsXopNvdEtJpq78Q/nXeV+Bemzorq/3YkFGIe1s=;
        b=u1RoAU6r4L4vEbyskCWAmkVU+zKBNrLY5Rfmyan1DzHNkXvP2qv9R9T9whl0T+CcKo
         g2U0XT4C79sEB6SrkXmmduhiPTZL6+KCT2ceo8b2UXU9O0gT6spp3DujC8STiNy/Cu8y
         +IER8ANoZOnG8SiW2dkIUI2voNr7KR6Ze9SRy2lFSlHnaAwrHSs93tlQWN7Dd+6pqs1B
         Jo/DkYROTgeGawMG4PGHWJMmZwqdryznMofdSlSv4JkSIlhyZQ9MlpSxq0ZWugnNaBp6
         7ENXWKLpc15h67x1QwJnp4sr3OTUvqRbZBbNvSm1Fw37/TWG1m20Eke2Ve3VDg19H86+
         /y1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZZOJQsXopNvdEtJpq78Q/nXeV+Bemzorq/3YkFGIe1s=;
        b=E4ipKRx5dl0UGgz9lcBuolJPyRZvDmdhzXVolukrRAlZNDV9Ec9y8uES7jx8uMLGQo
         rYmTw1NNgYwvEWhCJuRPu+hhxSCtKBxSWxhL5Vouw3+GZyUcvoZxfGyZit+RluLS8mx0
         CKW4OIoV33rJ2XrWYbm1kDtT9xVzSBJWAG7Zu/Yctj7lQx3p2vdvDhZMDyMnwS0mDDBY
         KCcsvqCDkhLU365pECNDg3DuQF5oKNQBaH84dvkJtCkpITei/bLMGF9VD6cyxT2AZRiq
         XtbEga0UwYPRfKrg+B6dYEZMKMW4ReVmuHzx5gAUK6X7t5i+wWfKrgpn+lf9zt2mOBcy
         nz/Q==
X-Gm-Message-State: AOAM530Outi/s52z9XATdHWexYN/Pg2O0nMlS66iOddUrL1TBLEQTZ2a
        g3GNEpHBLa8g/XpHX5ju53IHkQ==
X-Google-Smtp-Source: ABdhPJwCQ8oQ+egK1WvrGhSYWRJ9D+wUKMTbdriiSXDhgRTkRjVT0AgaxutawTDSEEUFgGnnTc2+9g==
X-Received: by 2002:a2e:93d0:0:b0:24f:255d:4bb1 with SMTP id p16-20020a2e93d0000000b0024f255d4bb1mr1924870ljh.525.1652947465899;
        Thu, 19 May 2022 01:04:25 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d25-20020ac24c99000000b00477b624c0a8sm195989lfl.180.2022.05.19.01.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 01:04:25 -0700 (PDT)
Message-ID: <d33e2d4d-35e1-f17e-c4dc-0218e79afa7b@linaro.org>
Date:   Thu, 19 May 2022 10:04:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] dt-bindings: leds: Add aw21024 binding
Content-Language: en-US
To:     Kyle Swenson <kyle.swenson@est.tech>
Cc:     pavel@ucw.cz, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20220513190409.3682501-1-kyle.swenson@est.tech>
 <20220513190409.3682501-2-kyle.swenson@est.tech>
 <cb83fbab-7aa3-d1a7-ab80-d2b94a516f6d@linaro.org> <YoPqDLMe+WYWKBxi@p620>
 <2c9b80ef-74c6-bd60-cfc9-d69349cdf6b1@linaro.org> <YoVimFUOy581rJ9W@p620>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YoVimFUOy581rJ9W@p620>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2022 23:18, Kyle Swenson wrote:
> Thanks again for your time and guidance.  I happen to have a board with that
> lp50xx LED controller and I'll be happy to test out the example DTS from the
> binding if you'd like.

Sure, that would be good. The DTS using that lp50xx LED follows
different concept, so maybe the binding example is not correct.


Best regards,
Krzysztof
