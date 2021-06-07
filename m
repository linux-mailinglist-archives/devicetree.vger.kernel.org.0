Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBD5B39D588
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 09:02:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhFGHEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 03:04:43 -0400
Received: from mail-wr1-f47.google.com ([209.85.221.47]:42790 "EHLO
        mail-wr1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbhFGHEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 03:04:43 -0400
Received: by mail-wr1-f47.google.com with SMTP id c5so16241494wrq.9
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 00:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=51VmsxUZ/IAwiM9uqtyHR/QzterIDzyNotbKCVYVi6U=;
        b=UErHyRPG3ov/MsTwHowtTjWSFcC+P/2iwVP5iJLA1usgbYKBmvqeFxr3XeTFR2JnVM
         tIwANwHiuwIBNwHB0Yyx/8jZZjbXyx1OXp1dFW1HaaWLtu+o1HKEmcnxlbCbgMaDkBtK
         hOzisd/j7mC1huYAZW/58XnfF1PuQP3eZ1B/DiEsKfSXbxSPlcixSlI6KxskHB2EhYjg
         7kiwleNFIsXUD0zS3bgYHZxO5Av2tUPWotOwO2acjibOs8/mbOR0SqbYTytrCd66RVHP
         T1O4I6dw0hcdZ4jyXyDOBZYyOm3rimC5OB3+ARrJwBZj3iIdOUQbSTB10RSsCV2Yd2Bq
         iGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=51VmsxUZ/IAwiM9uqtyHR/QzterIDzyNotbKCVYVi6U=;
        b=sUVKXTAIQml/fZNwU6bmrhutU624SUtt/GjvMoNGe0Clbpn7eDxG1HV5+JkRDGSnFr
         enUws4z2LwWSnUTGpk09RRrHOSzTXQ5IDbxjl+j6gtBIOXylRECgkrGK3NVwNjT3tVGQ
         cKhrYotHl11iFigji4SdFv+TAEb+CjajN1gH7eeej27OvvRIdFBe1BNrmZ30qQlgfjd7
         Gx7E0w4YNO7wlVQ/Ub0TdoRcyMJkpbh5V2pv3kE3dLCR1hcQ1iiNMQJ50KOyKU8RklJJ
         hnFkLK2oBBvxGJFCa1tlUSJePgFl7LQI6DizGHAas1HquQBD3Di4M5EUtRx1mHRh54KX
         1Axw==
X-Gm-Message-State: AOAM531EXn1mg/oZV6AxRs8mDMoxAPo80REuRWTObXwxFmt4anc/+R5Z
        Po6QCA2yyOwXDm7LngGcF1LXng==
X-Google-Smtp-Source: ABdhPJyFU5Bdb0c/UXMAqn+htCSNFOi08UtRCmr3smv+Y+vGV9/Wwr8eHauHTkflHSi04H1eurQDzg==
X-Received: by 2002:a05:6000:89:: with SMTP id m9mr1446926wrx.8.1623049297239;
        Mon, 07 Jun 2021 00:01:37 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:7c1f:1c9f:555e:7398? ([2a01:e0a:90c:e290:7c1f:1c9f:555e:7398])
        by smtp.gmail.com with ESMTPSA id q11sm14647214wrx.80.2021.06.07.00.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 00:01:36 -0700 (PDT)
Subject: Re: [PATCH 0/6] Add serial and i2c aliases for Khadas VIM boards
To:     xieqinick@gmail.com, robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     nick@khadas.com, artem@khadas.com, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
References: <20210605062313.418343-1-xieqinick@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <4e1e960c-16b3-59a5-61c2-6d6e2f8204ac@baylibre.com>
Date:   Mon, 7 Jun 2021 09:01:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210605062313.418343-1-xieqinick@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nick,

On 05/06/2021 08:23, xieqinick@gmail.com wrote:
> From: Nick Xie <nick@khadas.com>
> 
> This patch series update / add serial and i2c aliases to
> keep the same with 4.9 kernel for Khadas VIM boards
> (VIM1, VIM2, VIM3 and VIM3L).
> 
> Nick Xie (6):
>   arm64: dts: meson: vim3: add serial aliases
>   arm64: dts: meson: vim1: update serial aliases
>   arm64: dts: meson: vim2: update serial aliases
>   arm64: dts: meson: vim3: add i2c aliases
>   arm64: dts: meson: vim1: add i2c aliases
>   arm64: dts: meson: vim2: add i2c aliases
> 
>  .../boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts      | 8 +++++++-
>  arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts    | 7 ++++++-
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi       | 9 +++++++++
>  3 files changed, 22 insertions(+), 2 deletions(-)
> 

Thanks for these patches.

I'm not sure about the current policy about aliases, but when we started upstreaming the amlogic boards,
only the exposed interfaces could have an alias and in the board.dts file only. But since other vendors
added a bunch of aliases of all the possible i2c/spi/uart/mmc/ethernet interfaces in the SoC dtsi....

But the question of the 40pins header remains, should we add aliases for interfaces present on the 40pin header ?????

Personally, we should'nt since these pins has no defined functions, so any alias should be added by a DT overlay loaded from U-boot.

But it's my own opinion.

Rob ? what's the current policy on that ?

Neil
