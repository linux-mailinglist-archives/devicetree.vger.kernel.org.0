Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E54050D130
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 12:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239005AbiDXKrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 06:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237673AbiDXKrJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 06:47:09 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6923E201BE
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 03:44:09 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id gh6so371806ejb.0
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 03:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4AVi1XVXcouIuyifLjQAq+sw3PWp8pP33Yfh6eAqcJU=;
        b=i6DV9xqoI5hmKUZfCN71rMfXvVcYTJfx2IjPHadVetxGJKxTwFRt5LMbLS3R3khKCJ
         TS7t85t41kHQbgwFO7oyGsyaXXqdjgj+jVf0wYEMxkVz/A9lYzWt9Gc7J6H+u0Qsu5E7
         fQpKYidtiTCVdWIdsH3mV42/n4qMeRfz5TdSlRM5z1HvBM70MOA2FYt3CVEyNdqmS5qg
         3U2hPIZpuj0SpeGUwRZJ11qC+LYqb0+sgvBAlK7WvMl78OvMW5OSjAYgFriUyo7FH0y2
         iuX0wLPHJwhL2e9dpow9mEwYXQq87QrtZ+0vuLh1m375cVdFQofL9C0tpzA0fX+FJPjV
         hAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4AVi1XVXcouIuyifLjQAq+sw3PWp8pP33Yfh6eAqcJU=;
        b=gzYlSxawlp2oAdMVfuKYGTa7m5ekTUqhpgR/2qGQwmmE2iY0MaMulURtLhYyh+qnya
         LIgq/M4Gyftis1As4EYnyA7Ur+FXz+8XEKO1rZFwKhGXATdw8zY2Fci61Q/OtuDCGNMB
         /gjX1G7P22IW5RnzCSRa4tjVczl99PyWB6bAkuw91tppxeweRHRQzwItfjl33SIiKTnd
         EpcE5k7aiNcnE1JT0u15p2C134Vg0C5bZeFh4UjAHUk5rkU5nAUYT8RoVMvoh+CECmTz
         A9OmmeniQJfyUpHWgc1j8ZDKWIwjpxAE6pd7Y33XumCm6T2ylonL8ldIW/6+Zx98gcBV
         eVyw==
X-Gm-Message-State: AOAM532gS46GnjN9ZwLYT8P7EDEQK9MR9r0vHca4lMHp1/k1WUBaEGDB
        mAkLyVfmXg5PH1knws5tu3XQSg==
X-Google-Smtp-Source: ABdhPJyysfjE1vzFK2VIiFfc65L2oNfrdvu3uHImb0PjBuAG1X1E5JX2MrRkgogBGVpqM26b8yYpGw==
X-Received: by 2002:a17:906:c104:b0:6ef:fb70:1c54 with SMTP id do4-20020a170906c10400b006effb701c54mr11958971ejc.71.1650797048012;
        Sun, 24 Apr 2022 03:44:08 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709064f0f00b006f00349c4c3sm2453605eju.122.2022.04.24.03.44.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 03:44:07 -0700 (PDT)
Message-ID: <8a343b5c-1d3e-2c1d-da6a-c9b1cac89ec4@linaro.org>
Date:   Sun, 24 Apr 2022 12:44:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Multiline in device-trees bindings
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org
References: <c652c8cb-23ba-c5e4-cebe-383a9237d798@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c652c8cb-23ba-c5e4-cebe-383a9237d798@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2022 10:34, David Heidelberg wrote:
> Hi.
> 
> Often is suggested to drop `|` and `>` for the `description` inside 
> device-tree bindings.
> 
> I haven't found any recommendation related to the device-tree bindings, 
> but from [1] it seems to be even used in example.
> 
> My main concern would be, that using block style indicators [2] can make 
> text more readable in future, when at some point eye pleasing 
> documentation gets generated from the device-tree YAML files.

I understand it is about usage of '|' or '>' against nothing marked at
all. In such case I don't see the benefit of using block markers for
cases when they are not needed, because they produce exactly the same
output as one without them. Where is the "more readable"?

It's entirely different of course for text which benefits from block
markers, but no one recommended you to drop block markers in such case,
right?

> 
> Would be nice to have consensus when to use them and when not to. Maybe 
> add it into documentation or reference YAML documentation with addition 
> of specific recommendation for the kernel project?

I think the consensus is already there - when using block markers is
equal to not using them, why adding block markers?

Best regards,
Krzysztof
