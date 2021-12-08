Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 275F846CEC7
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 09:20:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244727AbhLHIYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 03:24:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244726AbhLHIYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 03:24:12 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB69AC061574
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 00:20:40 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id p18so1161164wmq.5
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 00:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1w3QG5L2wJSdawJv13n1fbqmjL3sgSHFT+7XbyAvU6U=;
        b=55DNvAYxUXa+yKMvFNkcwxQcyuMG4hyrlqdl8GCYFqXE/nvB5hzQFKynb0amMmXyPj
         gvr6FYs5uEqtTr3S1cxwe8elBx06xxnm+aXZmnSmTpE4iBiqlMFjwG+Li/AZafgjjQ/J
         kfVWr21Ir4haj+rGGcA+A6kC8FsP9DhwqqdIrnTSjtTK4yLGw15m+Fd/QX/zYcNaeN60
         jtM6G0eR3psmmQ/Vrui/nwb1ZCQ7eo7nG2CngnGrj5nFE7X5MYrE/QmSZM/j7QIf17OY
         st+lLoPx7tEWVC/AA0P3vn93dIiI37Cp8OTaqRFkScrNd9NRbxdAWoF5gSyjRXVXUDfE
         vffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=1w3QG5L2wJSdawJv13n1fbqmjL3sgSHFT+7XbyAvU6U=;
        b=Ea3dIwwvlN3kJK9pPI8h3N2o3qB++2RJNCEd6bbCM57bxr2yHs2xWucM7m23z2DMXJ
         e6ldOn++OxhPguoK59vhYSdVa9j1BUUy6HDR9x7EGFQnUNXaTr/w4x91ZqXC6SCRLmFi
         gGr57nrTPaNlY6cQeSCQQlcWHsEFrcIMze+h4CMow02TU7JVc5SMKp9H3tk6sCGOqSk6
         6khaB/MXOMKTgVsl43SFn3CnzNKmc+H+0xYpxfnBlTeQT9GOYTZ3wBcYEzxCY8H85wMX
         D/t/HzuJbZrG8RnGasafhqtiV49ZFRtsMXlKCpX4DrZgid0higxOv4lwfySJejiobZTD
         4Beg==
X-Gm-Message-State: AOAM531xX1BNPMaGqG+dm109W9vBN7UFqtN/sygzNvVFcMrSpNp/1Cmc
        1OEEKjlWZibwSyBlBkFUuDl+Ug==
X-Google-Smtp-Source: ABdhPJzG/TNg3Piyp5TseF8rLfJFvZTaZFXGKZz5otMT3tS+daO2oHy7ZCllGK9433G4TB+hyrdAQg==
X-Received: by 2002:a7b:c24a:: with SMTP id b10mr14015235wmj.166.1638951639255;
        Wed, 08 Dec 2021 00:20:39 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:5245:80ea:cf46:35bb? ([2001:861:44c0:66c0:5245:80ea:cf46:35bb])
        by smtp.gmail.com with ESMTPSA id i7sm2022410wro.58.2021.12.08.00.20.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 00:20:38 -0800 (PST)
Subject: Re: [RFC PATCH 0/9] arm64: dts: meson: add support for aac2xx devices
To:     Kevin Hilman <khilman@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Benoit Masson <yahoo@perenite.com>
References: <20211130060523.19161-1-christianshewitt@gmail.com>
 <7hilw14nhx.fsf@baylibre.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <e3b404f8-758e-ba97-37c6-0178231119dd@baylibre.com>
Date:   Wed, 8 Dec 2021 09:20:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7hilw14nhx.fsf@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/12/2021 19:06, Kevin Hilman wrote:
> Christian Hewitt <christianshewitt@gmail.com> writes:
> 
>> This series adds support for several popular Amlogic S905X3 (SM1) Android
>> Set-Top Box devices. Like most Android box devices, they ship in variants
>> with multiple RAM, eMMC, WiFi and BT configurations. RAM and eMMC are not
>> something we need to consider to get a working boot, but we do need to get
>> the correct connectivity spec.
> 
> The reason we don't need to care about RAM differences is because u-boot
> takes care of that, and updates the DT nodes accordingly.
> 
> In general, I'm not a fan of leaving these decisions up to u-boot,
> but...  as an option...

For now we always set "safe" values for RAM in DT so it could work
even if not the entire memory is configured.

Since there is no way to detect this from Linux on ARM64, we have no choice
but hoping U-boot sets the right value...

> 
> I'm pondering if we should do the same for the connectivity settings?  A
> properly configured u-boot already knows if it's an internal/external
> PHY, Mbit vs Gbit etc. so in a similar way could enable/disable the
> right nodes.
> 
> We could have a single DTS for each of these board families which
> has some reasonable defaults, then u-boot would enable/disable nodes
> accordingly.

Yes it's technically possible, but it puts a larger dependency on the bootloader.

Having a lower RAM value is not idea but the system will work, having the wrong
PHY setup simply doesn't work.

Neil

> 
> Kevin
> 
> 

