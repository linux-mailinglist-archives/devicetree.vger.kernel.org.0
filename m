Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35FFC45ACBE
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 20:43:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238723AbhKWTrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 14:47:04 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34574
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238475AbhKWTrD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Nov 2021 14:47:03 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0879540743
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 19:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637696634;
        bh=X9nPu6M4MnGefRZgRydbBLcoxEN2an8Y7q8i1bd1GgY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=D8bhrCEb54Ptj/jszwGK3G055/akajeVAAG/5P5NnjKYaxW6ar8hzh+6VUHpZn64v
         NJmLomc+OUKRXAURHYtBjXftV0oLhSTHzDPEHYnyw0SPvufi2fazUZGn15tndOEgSW
         CTA66G1nqSn2U6d484+tHixHCW2tLC55EPEce2PZyU13nDZrthRoofdymTWmAMKazw
         JEZRVZA1MaP51vCGcu44l8iZjHG26sut7Vfz1yMLyYiPER8YAOE8bD7sqOGjz+9gL+
         GG/VHwSSRPNTyz2l8WgQByukHibK/WLJGDwJ1HgmVTiAdv1b6PbAqIICTi48oVSixE
         INQOYhORa5Qig==
Received: by mail-lj1-f199.google.com with SMTP id p1-20020a2e7401000000b00218d0d11e91so60881ljc.15
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 11:43:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=X9nPu6M4MnGefRZgRydbBLcoxEN2an8Y7q8i1bd1GgY=;
        b=HtugPIOjvCc2di/C2uVo0zHsBB8ykCVCSnBrGDYo2bVIJiiybG2ydhhBcsVjPc9/lg
         vtHRFH2Y1zBrqy8K/P/VpF296w3DVEUUmoB0UQWWawE+YZa0Purp8BCqp06BEmGA61dy
         CBljLJuYKZRySMMPtWrKZwTi78P2VdbQvJmh/7vqlnUne/hyOE1df/1trN4enH9cfT7n
         ZSx/Kaeb22VyRcka1DD+MJAwQ32l+of2fPe+o132/Un8dtOsaY7K0MsCCUqlrLomWTOz
         eigomP1zXrrwCkToonkMdqqr+TrbFO2a/5ltQlnSD176tHIdrYxsFm0eiPxSL9AkQS2t
         hvoQ==
X-Gm-Message-State: AOAM530Yitfa+BEU2Zc8iQ5W/paSmATJlz9SW77Y0SOL4GetO/6FawhN
        wi9MjuLr8Usz3QMFfbS3lRPti2EMry8ycXDoF9gdkKPixdOYVktxXz0yTRXemqCBP0tDpammwE6
        PoYWXGXVXae9L145EjKA/ztKPNlkZCFgeAV7KF2U=
X-Received: by 2002:a19:f242:: with SMTP id d2mr7801928lfk.516.1637696633492;
        Tue, 23 Nov 2021 11:43:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxFaBRKZmEoS9PRHvnxswXTWeitqkbEItlmIJMyGoqfOpgMWayVxNDGVMByx8TFop12tJI2zw==
X-Received: by 2002:a19:f242:: with SMTP id d2mr7801899lfk.516.1637696633321;
        Tue, 23 Nov 2021 11:43:53 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id r3sm1387507lfc.114.2021.11.23.11.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Nov 2021 11:43:52 -0800 (PST)
Message-ID: <6a8f93a4-7390-1f1e-6ba0-601859c21ac0@canonical.com>
Date:   Tue, 23 Nov 2021 20:43:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH 2/4] memory: omap-gpmc: Fix menuconfig visibility
Content-Language: en-US
To:     Roger Quadros <rogerq@kernel.org>, tony@atomide.com
Cc:     kishon@ti.com, nm@ti.com, vigneshr@ti.com,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20211123102607.13002-1-rogerq@kernel.org>
 <20211123102607.13002-4-rogerq@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211123102607.13002-4-rogerq@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2021 11:26, Roger Quadros wrote:
> GPMC was not being visible if COMPILE_TEST is not enabled.
> 
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  drivers/memory/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

... which was probably on purpose, similarly to many other SoC drivers
which are selected by platform. Therefore there is no bug to fix here -
lack of visibility is not a problem. Please document instead why you
want to change it, e.g. why this is a problem or unwanted behavior.

Best regards,
Krzysztof
