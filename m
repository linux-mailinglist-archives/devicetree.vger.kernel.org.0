Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C159B3975CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 16:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234228AbhFAOvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 10:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233797AbhFAOvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 10:51:09 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26AB0C06174A
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 07:49:28 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o127so8370580wmo.4
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 07:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ihM/qXBqWzRvSoQD4j53iilM0ynqghAwVc7Zrz4ZrcY=;
        b=hBzTVjQI9L0XRaGOEzpyRjz3ZnsXv4aKJF0skfz4OE6eppuvG3Dz8etqDW3eZFu3Ay
         cu8Z1AB1oI9WAJ48ki/AXp52k9qRwbZBAi1rpQFnVqwTCxCp5gFoK085k5x9P9tg15r+
         85/Jh32kYWdzLPmCxw6PILZX/AtB311xgFMiNaB0deiQiTHkS8bX8Vbyddq15g2mUJeN
         R8sOiswLT4yiRuVUq1G0P+ZqjX+BXcNuWgfD9x8anxQZfqnMdte+69t6+CWl8MSwl9St
         0PJ1oaZlr+f31lhNePOIwrVM+HX7JdpuMBRWnjPen9Zoj6RNGsTHsfpqpZrg8SHgj4yY
         y/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ihM/qXBqWzRvSoQD4j53iilM0ynqghAwVc7Zrz4ZrcY=;
        b=lubUkN9NRfH7fSn0zrkjKC40D8zYhD3H38+UdVc0+YIyZkgmbhk11PT7qf3i71qaKU
         0q6T80XugiAeEn4tc1mfAAx6kpKYuo/WTbEEaeXzQO3Z7pt3TBUn+BIQmEoH8aQ3iofB
         RUQ4j351Og/Z98ZqNCyqmDWjUk71W+Clxf50MHYaawTiL1LMXs6EfuO/9GtHliJca42h
         dTPCkGdfAHYS2yHndWNtqoruSMD8RQxXDuj+AWAQ3uFhU/fmtst5AD/qjq9p6ezArcB6
         4aIP4PnnZgmy4i09JkiXtOSEH8hNDNadEUI9Y/CDaYv6X7vB0qt8orNZlATlR1m9v3H4
         D84g==
X-Gm-Message-State: AOAM5338J5z8exDadJC+06g50Y3IpfSOkPytYmcqG5N4Mm53/S4whqP9
        8F/t+duCtM6vrmt96BtIzdhDjg==
X-Google-Smtp-Source: ABdhPJyKzzXV/+PAHfSE00Fimmlh0sqGCwHz44R14tEi3mK5gO8EfT5Kqe/ywOo9kkcvQgsPWrVhaA==
X-Received: by 2002:a7b:c207:: with SMTP id x7mr20038772wmi.42.1622558966736;
        Tue, 01 Jun 2021 07:49:26 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id p6sm3842925wrf.51.2021.06.01.07.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 07:49:26 -0700 (PDT)
Date:   Tue, 1 Jun 2021 15:49:24 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3] mfd: db8500-prcmu: Add devicetree bindings
Message-ID: <20210601144924.GJ543307@dell>
References: <20210518145132.428340-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210518145132.428340-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 18 May 2021, Linus Walleij wrote:

> This driver was merged in the early days of device tree
> on Arm in 2012 and somehow we failed to provide bindings
> for it. Fix it up with some YAML bindings.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - Enforce unit name on the DT node, 'prcmu@'
> - Remove overspecified unit names for prcmu-timer and thermal and
>   use patternProperties to match this to a regexp instead.
> - Drop dependency interrupt-controller: [ interrupts ] instead make
>   interrupts required. Make interrupts required instead since
>   interrupt-controller is already required.
> ChangeLog v1->v2:
> - Make the main PRCMU node name more generic instead of
>   hammering it down to a specific address.
> ---
>  .../bindings/mfd/stericsson,db8500-prcmu.yaml | 278 ++++++++++++++++++
>  1 file changed, 278 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
