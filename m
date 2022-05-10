Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A07B521C86
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 16:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343678AbiEJOiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 10:38:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343872AbiEJOhg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 10:37:36 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 497A2D808A
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 06:56:44 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id i27so33107193ejd.9
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 06:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=pjmJ7M+KMckwEPKWOfiYlDmA1Pppkrstffdbv55ePIA=;
        b=IaCvboNyy9XXm/WOVingix5kNVr2ZVr9B56ITuA78kNWY5vjtaG4aGi4nxNAbQCKLf
         Q2qF9RGNRQW4KkfBoUYGqu0KYxt5eJkmD0C+GkuyII0reCCOzipRy4etvpV3qrNxIqoR
         VJrzA4JgMuUqNz29D9k1ax94UQkpP1YKDNos+ca13xP0GfEVLQBGdAG6UoQ1A1To8Q+9
         LZuVOMhBDbIm1ZZbhlBwAlv7xHAFlfaVQ7kEZnNH3EzYxS+BScNZd6ih0Bl/EjR3/LwH
         ZTENTY6nQMiIlcN1uo6esDCkVS81+TXUYClr7e8oAM4j4N8BXaRZadJeiTBH2AWrtBJg
         iSJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pjmJ7M+KMckwEPKWOfiYlDmA1Pppkrstffdbv55ePIA=;
        b=lTKKIO2QElZzefK58Y+n+Szn31d/ZKTjhx82nLyZPvsunGOIaOHJl5uA9+1N5uNVw9
         TZHWkzXcxPoAKiCmUOAEtxwjZCEmj/CUZhB7IfoFaQlRx09uAGCAqoRiv6F3k2ETXmo0
         UsxSJy6hGBmwgjOdxWAnm5xVd6JsPk9lL2ec/AbrkFmzjCg3WzcSaBrZybSBH0Fr1Hq6
         eJBGmCcxax7vfSIz1nfA6s4ZHB9eJGKZ7io2jxJHzdBTcKeD8NLJ8i+SO8Li17kIbzg9
         TH9tnQyLJva8IUf0bMLCCSd2iHzHlScZCkFh7MNkjZu4etCXR2e0rfnC3mLDnYFRfCBK
         WaPg==
X-Gm-Message-State: AOAM531BhPceAVpsf78YED6+0HEhFiCwozHg9KboJXV7URHbfbgo1phr
        5VWIKvDBJwsLeL6EuKa5Y6Sz9w==
X-Google-Smtp-Source: ABdhPJzX8NehLFbd2eHiwAz5mIFRYvEUSDEbzbZGkzzZ0F3c8SW4arwk9U2t99jcgn0VYiWyWa6n5A==
X-Received: by 2002:a17:906:5fc3:b0:6f3:9901:bc3a with SMTP id k3-20020a1709065fc300b006f39901bc3amr19929018ejv.711.1652190998024;
        Tue, 10 May 2022 06:56:38 -0700 (PDT)
Received: from [192.168.0.253] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id hf15-20020a1709072c4f00b006f3ef214e4asm6150973ejc.176.2022.05.10.06.56.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 06:56:37 -0700 (PDT)
Message-ID: <b183f838-359c-752a-dd23-9bd1a160eee5@linaro.org>
Date:   Tue, 10 May 2022 15:56:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/2] arm64: dts: uDPU: update partition table
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        pali@kernel.org, marek.behun@nic.cz
References: <20220322105857.1107016-1-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220322105857.1107016-1-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2022 11:58, Robert Marko wrote:
> Partition currently called "uboot" does not only contain U-boot, but
> rather it contains TF-A, U-boot and U-boot environment.
> 
> So, to avoid accidentally deleting the U-boot environment which is
> located at 0x180000 split the partition.
> 
> "uboot" is not the correct name as you can't boot these boards with U-boot
> only, TF-A must be present as well, so rename the "uboot" partition to
> "firmware".
> 
> While we are here, describe the NOR node as "spi-flash@0" instead of
> "m25p80@0" which is the old SPI-NOR driver name.

This patch was applied, but it was never tested with dtbs_check (nor
rebased on my cleanups). spi-flash is still wrong.

Best regards,
Krzysztof
