Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9360C5A9B53
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 17:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232804AbiIAPMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 11:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbiIAPMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 11:12:38 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1951585FD4
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 08:12:37 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id z23so15360974ljk.1
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 08:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=qTC2Y70APRJOcps3tf6QOae/fOMCH2muBNa4G8Z6yPs=;
        b=J1TYZkwC0XhQDSfLrkftWdaC2pwGjiDifNnjEa6B86mdUJo0eZRfPaMBgBPzzxGofr
         F3yf0h2RFfn1UocIllVNmkov5IDmsmHAS+/oqBSfSAolxYv6sAb1MpHiL7AHLfEa1yUO
         yvLOzCvHf2tmrljoFBfwLEfMRVg11vAVdq9m2T+kusBJyoomTRhhKFxeHEq5aiHWbcsy
         Prg/gzK2vq10/sIhjXSGa84BIHGYkoiX8GEqJdrbq1Qu1oJhDbBiQiyEQUUgYcLSwJOh
         sP5A9zYPc5h4hrDmyV0RQ9hl5fDfWkD+H71MdExNw1sYta0akN3QuJ5kVeSQCEnBZ6VW
         mbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=qTC2Y70APRJOcps3tf6QOae/fOMCH2muBNa4G8Z6yPs=;
        b=oNoC03Isc7SqRP1bfBk1LTIwOb123Z3r5hdzI3tJvwr1JuFIrY8Zw2ZU+Cg60PNxTP
         Bjr/HjnXbtW2sep8RaR6I0XUyW6mC+h9WVE3d9RLQRtPFNF60Nn/1cwY9VStelXNQgYk
         gmufzucDbHe7JBrx1ow59UZ9oQv5fdf2m1Z3AozD/j4DUqGzckXFamqgio0CcBjQfOWr
         0s14/xXFXezo+f6b7Uvat5cR893ZevP0Dpa6xsrohtqG2l6ed93Cb1z1jB+iTHsfLyio
         mCfc2SSImZAX4i+K26PEPtQY3uHgOw6QTumtukkbN/5Ujd9Dst5i/Ea279P0hYpktuiB
         rAdA==
X-Gm-Message-State: ACgBeo1d8YC75+B/GZfzQhRlO2Rx180fsmfReFvDkSPWg586g4oybnvp
        gm7ENb7eCUl58tPTF/YFSOBfsQ==
X-Google-Smtp-Source: AA6agR4ugS5tyTwVwYnuIaQklpVkzkiOpqJmaKPSnCGjhxjT9arcAzMb64uBWCZfCu3H+QzZlAfpOQ==
X-Received: by 2002:a2e:a552:0:b0:25e:6fa1:a6c4 with SMTP id e18-20020a2ea552000000b0025e6fa1a6c4mr9388414ljn.90.1662045155444;
        Thu, 01 Sep 2022 08:12:35 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id b1-20020a056512070100b004947fcf0c0bsm912235lfs.281.2022.09.01.08.12.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 08:12:35 -0700 (PDT)
Message-ID: <be6cda7d-28ab-6fe8-e0ee-5e448c7696b9@linaro.org>
Date:   Thu, 1 Sep 2022 18:12:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 0/6] Add Apple Mac System Management Controller GPIOs
Content-Language: en-US
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Alyssa Rosenzweig <alyssa@rosenzweig.io>, asahi@lists.linux.dev,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        devicetree@vger.kernel.org, Hector Martin <marcan@marcan.st>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Sven Peter <sven@svenpeter.dev>
References: <YxC5eZjGgd8xguDr@shell.armlinux.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YxC5eZjGgd8xguDr@shell.armlinux.org.uk>
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

On 01/09/2022 16:54, Russell King (Oracle) wrote:
> Hi,
> 
> This series adds support for the Apple Mac GPIO driver. These GPIOs
> are hadled via the System Management Controller.
> 

Thank you for your patch. There is something to discuss/improve.

> The first two patches add the DT binding documentation for the new
> drivers.
> 
> The second two patches add the core System Management Controller
> support.
> 
> The last two patches add the GPIO support.
> 
> DT updates will follow once the bindings have been reviewed.

...and how can we validate that your DTS actually implements the
bindings? Typical submission includes everything, either in one patchset
or at least linked to each other so we can see the user of the bindings.

Best regards,
Krzysztof
