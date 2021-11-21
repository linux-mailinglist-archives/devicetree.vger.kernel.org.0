Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0248A458561
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 18:20:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236996AbhKURXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 12:23:46 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:33072
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230330AbhKURXq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 21 Nov 2021 12:23:46 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8E8393F334
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 17:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637515240;
        bh=NhrY2YoYU8o49TvBH2U7Xc9BTYaL2Sw0oQZK6cM53jg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=A790Fe7d5Pgr4WRmbxlyDsOGjRddmKqGwOMTmQxiWXNZew6AO3HSTQi0xA7QXb0Dx
         hmNXHB9/QmjKlRYGTwOVm2o7fWVcnlC/bKIHrSeiOgXUhHyIBAdV/Flc0ebjx8DhAf
         IgSWMLr6UtXeoV2V1ZvpCGv0Gabme1r+kvMK/wBgI53dO+SwOli91pib9xB4KSAg6K
         kVvUPmC+qOtRmup8H/GpkWsbdMaoivXvmF9cAVjY9i9yW4c0rjoP0yPZPhLqAkHL+W
         30ADOV0kFUtwM52dgrERdvW4q2gEwGZhlWro/smYJVzMtOogIG/rohMYiCSo0/tZ9t
         doEwsPohFB8AA==
Received: by mail-lf1-f70.google.com with SMTP id y40-20020a0565123f2800b003fded085638so10305044lfa.0
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 09:20:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NhrY2YoYU8o49TvBH2U7Xc9BTYaL2Sw0oQZK6cM53jg=;
        b=4LYXhjSaNagjhpUOc9VHm5lwca6xwZbsUMKJ4/G6Vt3qaS+WfT0gfwklOTwaPMtN7x
         p6vtPPFkImIX9gU7/+moVXXtq3CQdm3EetrUfGUTNvBd5q0ewMRj9lgd2NvBWmE/coWm
         3VqSKDErfHEaqbueaMfs01oCPPrAXKin1ltrJAlLCuG/J0VKE0na3Gd/+YW+II9WWYmD
         H0s+jVn74yVgKew6RQVFZFiVaEr3soPri9LJJ/6gM+C5Bf0pmgRexznFnLwoPj655DKh
         nFLrJxAZy0msItvuwQGtZVSUKjEhA3cnxbiNQ/vV8it0gAyjmbv1Hv7fJgx0wkEPdbX5
         k2hg==
X-Gm-Message-State: AOAM530E9bx1rPlLFrqCvi6RM7tUytUuPHtFFHyMOJxbdVcPO6Wo6PtE
        yUU6hz2tKfgb73Lz1SKUvB5O4TUYfGh4gjJul+hj1k7Ejt0qKuMqOS7nmgxTb6t0O211rLdXMfk
        BLQDPBLy/gTgBM+OcnqHmxHTmlL17fNPJp2jJVoo=
X-Received: by 2002:a05:6512:3996:: with SMTP id j22mr52673196lfu.637.1637515239311;
        Sun, 21 Nov 2021 09:20:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw3OJlK6L++IcfAoz7b9WAy/3faXnNWTTp/ncrpwEtPTPXJ5uUwkzUh2rlxkju/Nt2T4ynj0w==
X-Received: by 2002:a05:6512:3996:: with SMTP id j22mr52673176lfu.637.1637515239152;
        Sun, 21 Nov 2021 09:20:39 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id m8sm799964lfg.140.2021.11.21.09.20.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Nov 2021 09:20:36 -0800 (PST)
Message-ID: <42516013-3b4e-0c05-5e4a-5a1fe9ff942b@canonical.com>
Date:   Sun, 21 Nov 2021 18:20:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v4 5/9] mfd: max77714: Add driver for Maxim MAX77714 PMIC
Content-Language: en-US
To:     Luca Ceresoli <luca@lucaceresoli.net>, linux-kernel@vger.kernel.org
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Chiwoong Byun <woong.byun@samsung.com>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Randy Dunlap <rdunlap@infradead.org>
References: <20211120155707.4019487-1-luca@lucaceresoli.net>
 <20211120155707.4019487-6-luca@lucaceresoli.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211120155707.4019487-6-luca@lucaceresoli.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/11/2021 16:57, Luca Ceresoli wrote:
> Add a simple driver for the Maxim MAX77714 PMIC, supporting RTC and
> watchdog only.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> 
> ---
> 
> Changes in v4: none
> 
> Changes in v3:
>  - Suggested by Lee Jones:
>    - move struct mfd_cell to top of file
>    - remove struct max77714 and its kmalloc, not used after probe
>    - reword error messages
>    - add "/* pF */" onto the end of the load_cap line
> 
> Changes in v2:
>  - fix "watchdog" word in heading comment (Guenter Roeck)
>  - move struct max77714 to .c file (Krzysztof Kozlowski)
>  - change include guard format (Krzysztof Kozlowski)
>  - allow building as a module (Krzysztof Kozlowski)
>  - remove of_match_ptr usage (Krzysztof Kozlowski / lkp)
>    (Reported-by: kernel test robot <lkp@intel.com>)
> ---
>  MAINTAINERS                  |   2 +
>  drivers/mfd/Kconfig          |  14 ++++
>  drivers/mfd/Makefile         |   1 +
>  drivers/mfd/max77714.c       | 152 +++++++++++++++++++++++++++++++++++
>  include/linux/mfd/max77714.h |  60 ++++++++++++++
>  5 files changed, 229 insertions(+)
>  create mode 100644 drivers/mfd/max77714.c
>  create mode 100644 include/linux/mfd/max77714.h
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
