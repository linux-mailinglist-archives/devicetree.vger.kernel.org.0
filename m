Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44C75BF696
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 08:47:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiIUGr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 02:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbiIUGr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 02:47:56 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CDCE7821E
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:47:55 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id x27so7710806lfu.0
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=e/qlMRjeLI7cvdXCPMm7XCLXM8gfF+H0TRh7nH7eUmc=;
        b=OlkRaPzT/EsGVCYhp7QKngqgMhN2WB7xIl3iSkBNblcK1aMQf/e3vV3uImji2L/okS
         irQ4+OVGKyqvaPjBBDRBqYV++TVSc/TbpxptrDPORPR9yoK9G16+Ff6xylkU66LGlWQH
         jjMoA6MONOBG5PIVUsXNCV1Za5TfUMExx+q9tiUFOthrs1v+jmguuKCxpYqMray+JJZm
         yGos339JbYAb34YtrSKGCy6ZCAOKnTP2rRZeldsi07f+j1rS23tG5mx3/YFliGxCt+gG
         H01wlsf893s+yU7aLO4sqqs9vWRYuyeR4S7XPOGgoSyYFStGRuD4VVu3ChwrirChO0ki
         Wjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=e/qlMRjeLI7cvdXCPMm7XCLXM8gfF+H0TRh7nH7eUmc=;
        b=5wkrwLnyla9zwqPN8m5KUf5kAJBPllFUrVLcEVEvvciWktmpVmNH4Z6bUk0c4ypdmn
         jP1lKvrIAAefx18KszGHBZUbaKYKxaA6ISRzhl/5QT1tj4e3wCjrqjPZfLEx0Cukh8Kg
         yH1O1gTERE4OPnQvtUPqM4vYhZDoxQ+hXHJBcYKHPM5U3CTVIFtmWwnD2BPHtlJbco1E
         iIQ95EOKS22e+htQtgOFLabQYxFwq6LRjsSVewx67IUIn/Wa7jWqxcUE9FR1Er3N+Fnw
         cqnQ/9wubkqNIIyNysfdP6+yv5faKy5KkB0dSjLkNmlp9k7KqEMx1lvefC8VSbsmYqg6
         n0pQ==
X-Gm-Message-State: ACrzQf2OaOlbOqZ2chSoSSA6z2JCj2xNdAxE7f7I6yiQyrs4wo0Pa5Bk
        qENq2ynTqQ5BUwA79ZqnY7sATQ==
X-Google-Smtp-Source: AMsMyM6VSdl6GKknWuhyDqBfXdVFdqC5rXDETmWwrMAV8AsKNNZpVThYjbK5rNepO9cRHCPXEhPTIA==
X-Received: by 2002:a05:6512:3d9f:b0:497:a108:544f with SMTP id k31-20020a0565123d9f00b00497a108544fmr9018351lfv.688.1663742873480;
        Tue, 20 Sep 2022 23:47:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j16-20020ac253b0000000b004948378080csm295277lfh.290.2022.09.20.23.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:47:52 -0700 (PDT)
Message-ID: <f49144d0-4e26-6907-d2bb-0bb15ddb7954@linaro.org>
Date:   Wed, 21 Sep 2022 08:47:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/4] dt-binding: input: egalax-ts: fix GPIO and IRQ in
 example
Content-Language: en-US
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-input@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920042608.1865560-1-dmitry.torokhov@gmail.com>
 <20220920042608.1865560-2-dmitry.torokhov@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920042608.1865560-2-dmitry.torokhov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 06:26, Dmitry Torokhov wrote:
> The driver is using level triggered interrupt (low) which is backed by
> and active low GPIO that can be used to wake the controller by driving it
> low. Let's annotate it properly in the example.
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
