Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 065424AB001
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 15:42:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238787AbiBFOma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 09:42:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242967AbiBFOm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 09:42:28 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE8BC043184
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 06:42:21 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BF5C43F1D0
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 14:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644158539;
        bh=wWeAOrZhTawmxEiltReu1FlJJKu3HnDYBZISiTvnreE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=GzznSWKXmADZNyN0Sy5gXb5HthEqVivEHS2ECNwkKvk0kYBFRrVhrsVYnW85ciEay
         /XeFPWls2Fo3r81P0jyuXSTpMsfyR2ZxgXyZIPd9V4vCq+HSKtEW6oEZYGlWdKo73v
         eXqC1XGOhqC3kaDHn53/wHyu3vGU/HaE3jkf9deyKKe3qLgcf7v2AYjnJimbPznfpw
         35Dg/sjwFuPOztJYN69rkJVo8afN1jjWXC1GL11su6DxA6WgJthtxO2vQ+8XrJ5E5p
         sf/8eZ+7HbsuqGRAY4672Vn6CJYKPPiMUsOOFTAt+sqTRyhgc0OpCwYyaXENN/i7mP
         ahGTSB5Y8tl9g==
Received: by mail-wm1-f72.google.com with SMTP id m3-20020a7bcb83000000b0034f75d92f27so4295576wmi.2
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 06:42:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wWeAOrZhTawmxEiltReu1FlJJKu3HnDYBZISiTvnreE=;
        b=soNcxAYCFSNjMDFmMr0TWGjSu4KIkA3Gy0m+k9/YU8WZHpw7BEFyDHwqa0p2x1hR6c
         /aVV1KFtYB84FkiJlg3PsORLUPHFb7OKR8uj2PIISDT+CxLSKURNCP7U8+aGwt4VcvcS
         8+kdKv1exc+Iecy8lH6WbXRHyQ8b+Dx84+WC9E9HsCyag+gPL0S4AKFdMAC/33ZlPJRk
         Z9p4EcRXEmYWipcV57AB/Xcipso4mDkfN9yPZaqtZJJkAiulgXwDQzRu6WyK0/aZIgFK
         hA7/g4F4qK8je5lyT1C7eZzTj3pJGAqaMZQwlWmYMmI7am77H5qzB6QrF6tvfNZszbq7
         5gOg==
X-Gm-Message-State: AOAM5331pPJRW8sp8z7bu40Fj0VdtuWMNA1s+hae/fgN/aqZz7Z3UIgw
        yOabRqA6NV3vcFuv0QWRraeGkQnSMFHQI8QyE8j/64XE7RjYsKuwhxAx1etdPG/N6oluHKCYb/5
        CEZzggqbEv824N19UoW0N99TR5R+2UnM69R+13pc=
X-Received: by 2002:a05:6000:18a4:: with SMTP id b4mr6687783wri.228.1644158538796;
        Sun, 06 Feb 2022 06:42:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxXBRP3Rqb0MD2IIF0vyMeXPM0BUDfOv1NXungYtOxLO/OoWYE3lpFTbe6wPLh6ec7w6us57w==
X-Received: by 2002:a05:6000:18a4:: with SMTP id b4mr6687774wri.228.1644158538580;
        Sun, 06 Feb 2022 06:42:18 -0800 (PST)
Received: from [192.168.0.85] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id y8sm8168815wrd.32.2022.02.06.06.42.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Feb 2022 06:42:17 -0800 (PST)
Message-ID: <64af3ce7-3422-f721-3543-5b3c310ba124@canonical.com>
Date:   Sun, 6 Feb 2022 15:42:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] Make Firefly RK3399 enable the mali GPU
Content-Language: en-US
To:     Michael Saunders <mick.saunders@gmail.com>,
        devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, heiko@sntech.de
References: <20220205140340.109118-1-mick.saunders@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220205140340.109118-1-mick.saunders@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/02/2022 15:03, Michael Saunders wrote:
> The Firefly RK3399 device tree had the GPU status set to disabled as per
> the default from the rk3399.dtsi. This patch sets the status in the
> firefly dts to enable it  for use. I've tested this successfully on my
> 2GB Firefly RK3399 board.
> 
> Signed-off-by: Michael Saunders <mick.saunders@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> index c4dd2a6b4836..f7b8da4953be 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> @@ -298,6 +298,11 @@ &gmac {
>  	status = "okay";
>  };
>  
> +&gpu {
> +  mali-supply = <&vdd_gpu>;
> +  status = "okay";

Thanks for the patch.

Please run scripts/checkpatch.pl, before sending it. You need to correct
the indentation - just use the same as other places in the file.

On your future submissions, please use scripts/get_maintainer.pl to get
list of people and lists needed for CC. You missed here both rockchip
and arm-kernel.

Use "git log --oneline -- ..." to find the proper subject prefix for
your subsystem and fix the subject.

Best regards,
Krzysztof
