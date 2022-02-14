Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9253E4B5D43
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:51:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbiBNVuf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:50:35 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231458AbiBNVuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:50:32 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C5D19721F
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:50:23 -0800 (PST)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B6BE43F071
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644875422;
        bh=SK7G4ypmuhoiLsaPwNFfqBVBg1y4potPtaeeipvUqEo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Li5rOIMt5rt+U0sZwrn6wie1JONcpNmFV4YFZKXDXdDuqYkFJLfxb5D4e+u4l4r8d
         rn8FH0HvPhvs2hfM6Bar811jsQQKUb84keNyXdy9A/zkflqtJzgxM39fb5s7CdDLOO
         eB8Kt2nbkk2pXSR/AveTfHnIqOolBecY3luckrOivklfy22k3qEdPVexsGPgT9ey9c
         G7O9hL8wtLexovXium32tTO8PghIdnFROPJRnSfWKkzwgHWc9QtCQRffejoLZ/eLTL
         LDtn5gFdwZpkIhkKyOQebSFrrQKnHwb2tz+Yzl9xc0NgxtOs+nNy6y+RJh9nSreOyz
         sKyx5ciXOFElg==
Received: by mail-wr1-f70.google.com with SMTP id e11-20020adf9bcb000000b001e316b01456so7387514wrc.21
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:50:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SK7G4ypmuhoiLsaPwNFfqBVBg1y4potPtaeeipvUqEo=;
        b=cmKFy2xmRj0hOqbHsd81ELZ6aNKiaGuJ9puespgkg2DF885gKuJKIu54cu9/WN3bCY
         8GH/jx0XlKheJ1YcB0ZI84tIRUICPWByp7RzRJQWg5/gioTc7CJ8ATgyDDFeQyANk9Ad
         wjEspqlgw7vs9ByQUnqR9qcuB2eoO5iRRXxmt9O0p40Hj+2slVEUQYdpxjT6QxTqJipq
         uDT8mNtseKSq9jz3OrOt03KOjrOZ54XdkZ7NzpFrKmmRxQcc53dbVRWG5hKVqsTHd6Ky
         Wb9qZOI0Y3fQlN0YYSMjbEWtfRs1a4LXybPpsgqnpmLNq6b/NsE/9/KwblxpZpkTrzvG
         UFXA==
X-Gm-Message-State: AOAM533DU+SqYfAtvLt1WHl2ezJzGK4KQ+YwQg7MWrT2kXk3Zl58s1Ng
        B0tTlxbBcj1diHG7HpgLpS8DWvTDvOCxgKhTJ/tJNPhbTQSgLLclK3m3KUFEEt/k+lMJuZuYu6x
        ZZ76qQN1pww5CSinhuhfM6hs1/vmQ2Oy718HBFgc=
X-Received: by 2002:a05:6000:1a86:: with SMTP id f6mr736490wry.401.1644875422509;
        Mon, 14 Feb 2022 13:50:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJygBAmKnUaBhnqEsn25FVjZQMtwe8K8BzcNWLC4Y/B5LAnAJFvu17U+OWfVIobOofQEzcDjLw==
X-Received: by 2002:a05:6000:1a86:: with SMTP id f6mr736481wry.401.1644875422326;
        Mon, 14 Feb 2022 13:50:22 -0800 (PST)
Received: from [192.168.0.106] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id z2sm12703881wrn.60.2022.02.14.13.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 13:50:21 -0800 (PST)
Message-ID: <ce5ccbbc-0419-ae3d-5ab1-f8985cb7e792@canonical.com>
Date:   Mon, 14 Feb 2022 22:50:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/2] input: ps2-gpio: enforce and document open drain
Content-Language: en-US
To:     Danilo Krummrich <danilokrummrich@dk-develop.de>,
        dmitry.torokhov@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     linus.walleij@linaro.org
References: <20220211233137.99624-1-danilokrummrich@dk-develop.de>
 <20220211233137.99624-3-danilokrummrich@dk-develop.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220211233137.99624-3-danilokrummrich@dk-develop.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/02/2022 00:31, Danilo Krummrich wrote:
> The PS/2 bus defines the data and clock line be open drain, therefore
> document this in the dt-binding and enforce the particular flag in the
> driver.
> 
> Without enforcing to flag at least the clock gpio as open drain we run
> into the following warning:
> 
> WARNING: CPU: 1 PID: 40 at drivers/gpio/gpiolib.c:3175 gpiochip_enable_irq+0x54/0x90
> 
> gpiochip_enable_irq() warns on a GPIO being configured as output and
> using IRQ without being flagged as open drain.
> 
> Signed-off-by: Danilo Krummrich <danilokrummrich@dk-develop.de>
> ---
>  .../devicetree/bindings/serio/ps2-gpio.yaml        | 14 ++++++++++----
>  drivers/input/serio/ps2-gpio.c                     |  9 +++++++--
>  2 files changed, 17 insertions(+), 6 deletions(-)
> 

Bindings as separate patch, please.

Best regards,
Krzysztof
