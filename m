Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01DF52E998
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 12:09:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348003AbiETKJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 06:09:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347925AbiETKJD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 06:09:03 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06207D412D
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:09:02 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t25so13476109lfg.7
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 03:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ffVcbFqh+NczMd03gfeMDbCvMp1x0RXgRcV6DKMvDxo=;
        b=eH1aiLq5vc7cykOBQCB/KhUpEmatVPZh7xfMVuYWSAucPk2kydjc1uP8asfBkNML97
         cNEOnzYUxa0c4GyMsRQqAfm7XyW0N9jVlgd1piVbdqmfPCTrrenK/Dhc8PdsTlnObYo7
         i6XavXoWq59+hSJ8X/2i638OzdppyAva3nxmcXKfZoFfKZu61ofgY24Dc+72koLVaNtf
         mKhxngeZnB/JJrsab3b1sa8jDnEEmrI0pFZtQYKK68eLzNrTKqjHCAnd0FM7zpQUqYRK
         tvHOVuOrfmXMXt8bISQ6mkt5bYs3OyIvFYhw7vBb4Vv6LL9KY4HFh0yPfXzcSh6Bw8M+
         N98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ffVcbFqh+NczMd03gfeMDbCvMp1x0RXgRcV6DKMvDxo=;
        b=FStQlvyw0NT5Am1+n3sU+SDibCyC4fL9QRKkat2jcu8XI1u5NfVm6s5qT7CU9AO/16
         dY+EJx0Yh2ZVDWEbUk2OSh0e9GJXINuFoDKZHLjjJ8M+fm/CZgc58iU6ODHAb0uR0EnI
         JLa0TJo1QscZApheglXb10ncm76p3/UwLqY5JDuD6qgRvx2m1rUDzZT9ULNhjta6UCXF
         yPWvsVnwzBt+R7eZ8Aknjo4dqJoFdk7/R/TOrDB7i6TYwAWbvJjh6iTLWRK6vR4xcJrk
         Gj+g4D8Lh+T4K9P5Vg0OfB7GXXbAPOQU+Y+aupzErUb8j90AU3if43W8gCQ4l9IP+CaZ
         ifgg==
X-Gm-Message-State: AOAM533+k9r7jonccmfReUP2mTlcdQPdno+EGtWZhDDLtAhnsJf5EwGw
        OQk0ADO+vbr9KDPXjpFeU5Q9kQ==
X-Google-Smtp-Source: ABdhPJxElWOFlHlhl90l3boaRwGbktiq9tcn54uVmr5ttnZ6EOmFvB0ZEd8I+Ox+Xorz48OWiDEyEA==
X-Received: by 2002:ac2:550f:0:b0:477:bc6e:9bcc with SMTP id j15-20020ac2550f000000b00477bc6e9bccmr6477518lfk.279.1653041340339;
        Fri, 20 May 2022 03:09:00 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b4-20020a056512218400b0047255d21177sm603422lft.166.2022.05.20.03.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 03:08:59 -0700 (PDT)
Message-ID: <bc52687b-54be-187a-34b8-459a110437d8@linaro.org>
Date:   Fri, 20 May 2022 12:08:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/8] dt-bindings: hwmon: Add support for ADT7481 in lm90
Content-Language: en-US
To:     Slawomir Stepien <sst@poczta.fm>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, przemyslaw.cencner@nokia.com,
        krzysztof.adamski@nokia.com, alexander.sverdlin@nokia.com,
        Slawomir Stepien <slawomir.stepien@nokia.com>
References: <20220520093243.2523749-1-sst@poczta.fm>
 <20220520093243.2523749-2-sst@poczta.fm>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520093243.2523749-2-sst@poczta.fm>
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
> The ADT7481 sensor is quite similar to MAX6696 so we can reuse a lot of
> code from lm90.c driver.
> 
> Signed-off-by: Slawomir Stepien <slawomir.stepien@nokia.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
