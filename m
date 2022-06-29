Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4ADD560340
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 16:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233435AbiF2Oiq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 10:38:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbiF2Oip (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 10:38:45 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3BA2E680
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 07:38:43 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id ej4so22516135edb.7
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 07:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PnEt7d5QnZ0Yn8ybHzJYEGx+tFeZXTV8T7DShxJNnBk=;
        b=UZlX1BG0tUDIAYILJFbBM1cO0lWz7ZuYnrrIDg9unZGN7G3xXFUE7BPbqKryBpNa3N
         c0/WUYDVzSdTHAzryCOt/r6qqlrSp5GdfAVLHLbl3o/CRpkxxC/KKHDjXl/uXsMMtj4v
         +pYoZXARUOAAAfolpRR1K/I4KussluBwkvy3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PnEt7d5QnZ0Yn8ybHzJYEGx+tFeZXTV8T7DShxJNnBk=;
        b=4j5i3JdZ0fRNlzyOXZ1XcdJ1fo0Ui/zLnAXAvUn5exFfBGmRESlBAgTEFj5Zzihc9q
         RlOG5+OzixZWiie8tuJA0+tOROnbAxzq/mdM3QfFM29dI6UvO9Q1bHQ1+dGDe9dXccPH
         witnPYGxFdutrEYf5NKWUHaFc/AXp8HoYhuBJfuVN2ji/VXYvrSKiAUO5Ze7fTUz5Pvn
         PNSsbctqJjZs2F089viTYDZFHn0oSSPUOfT8YZliF7yeZ5HACg5RQ1N1NPLv6n8vkHHM
         Xhv0e9/EydCoiWzyYvItAyQ5UCtB1vX5GNyLmhEXMbigUSS6kNCXw24lPpPRts6n895+
         4Kfg==
X-Gm-Message-State: AJIora9Tgtczbc7Aqkwb4PdPVIazv2ewGI99C/Po/Dr1AvOwdG7jh1sE
        Ex+uVm083QeSoagwBhG+2qVWLw==
X-Google-Smtp-Source: AGRyM1t+8fnXxjsqDsINL6coLHDoPGp3pQmzKLiUukSyd3oFRr+4bVPBOWzzr0i+bBROlFW49rr1Nw==
X-Received: by 2002:a05:6402:388b:b0:42b:5f20:c616 with SMTP id fd11-20020a056402388b00b0042b5f20c616mr4661220edb.50.1656513521806;
        Wed, 29 Jun 2022 07:38:41 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-58-216.cust.vodafonedsl.it. [188.217.58.216])
        by smtp.gmail.com with ESMTPSA id d11-20020a1709064c4b00b0070cac22060esm7669054ejw.95.2022.06.29.07.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 07:38:41 -0700 (PDT)
Date:   Wed, 29 Jun 2022 16:38:38 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linuxfancy@googlegroups.com, linux-amarula@amarulasolutions.com,
        quentin.schulz@theobroma-systems.com,
        Daniel Scally <djrscally@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] media: dt-bindings: ov5693: document YAML binding
Message-ID: <20220629143838.GA418524@tom-ThinkPad-T14s-Gen-2i>
References: <20220627150453.220292-1-tommaso.merciai@amarulasolutions.com>
 <20220627150453.220292-8-tommaso.merciai@amarulasolutions.com>
 <abee0a14-23ba-b784-33a0-ffe878a76a3a@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abee0a14-23ba-b784-33a0-ffe878a76a3a@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed, Jun 29, 2022 at 12:42:10PM +0200, Krzysztof Kozlowski wrote:
> On 27/06/2022 17:04, Tommaso Merciai wrote:
> > This patch adds documentation of device tree in YAML schema for the
> > OV5693 CMOS image sensor from Omnivision
> 
> You could remove "This patch", but it's a nit-pick
> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

No issue :)

I'll fix this in v3.
Thanks for the review.

Regards,
Tommaso

> 
> > 
> > Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> Best regards,
> Krzysztof

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
