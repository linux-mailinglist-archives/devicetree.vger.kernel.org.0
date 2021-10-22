Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AFD243757B
	for <lists+devicetree@lfdr.de>; Fri, 22 Oct 2021 12:31:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232684AbhJVKdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Oct 2021 06:33:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232679AbhJVKdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Oct 2021 06:33:20 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86520C061348
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 03:31:02 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id d198-20020a1c1dcf000000b00322f53b9b89so2122539wmd.0
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 03:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0w1yn0kHGg+18Yn7SEFx6+dUjy1ROAw6/DrVLeyy5W4=;
        b=shWDNK044FtksKPiZfQIkKAl/3u/UdHTelMBoDZsbd1h56DG7bm0LQnjMj4g9JmBP3
         +kQFNVSbRFZEBUDGCm8zYgg0et6eSPNvJRJ19HUU4pKWSuQ5LKd/WQOWNK4k7zKhE3xj
         D4ONnV191Ab1miQm/2RCvy7rO+DofrTAnGwVapgKC/hAhMRMs4JkY1hi7n3ZEVJ16ct9
         VV2cx0BbHwGXEMdZ5sXjCNa1jGnYh2+LL9hvYE+ZGUsQ9KLqs/uaE3jRG/lSkMNTqba6
         1wGxS9/XXWJ++KIiqtnp+F/IEHB1nWurV0KyooTDpTVklKJO9a6ptcWFfXyqeTJ4yqbF
         /yfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0w1yn0kHGg+18Yn7SEFx6+dUjy1ROAw6/DrVLeyy5W4=;
        b=EBA6WOjpVyiYhvZt5dObcAQbLIw6uhR0kadUTfiC+8h8HEZ5alOS+194WdMF932Brn
         l6Z9CyRlOwIbWN2hd7EDYJs8qUX0MtRJDLwC4jMQwPvX3q8gJCXLeSH/t/U11JWOuEyn
         aRgKMH/fbFBqXSj68urwtRSj6t2DQGqaJkAp0/cqoQzdFYHg3ZLY8fJ3WGeKyTfrfePV
         ezOncXRXDema5pnw6NygcDk6euQBiY7MTt3ESrpgYu45JA8NHFpC48/EL+F8f03IUsdQ
         su6YVZSuCKx9+if8Q9DN7SejkhrrOHJAk3v8TWghjecw/OnPEmCpFtlPXzmYI5H+orgn
         CytQ==
X-Gm-Message-State: AOAM53078spGuKlMM92LV6bHtrMQDNnIay6EcwoF16EB5lGC+w3oCuL3
        WfK5cKzq87959dV0JyLWdaxcfw==
X-Google-Smtp-Source: ABdhPJwBDBAu78G4Mrc736dZlmiw1XOQycC0liaM/m7RdrV5TsQXA3ceFzJIOyDRGU3aQI3t8Eh9zA==
X-Received: by 2002:a1c:1d44:: with SMTP id d65mr8403859wmd.29.1634898661163;
        Fri, 22 Oct 2021 03:31:01 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id r39sm1862773wmp.2.2021.10.22.03.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 03:31:00 -0700 (PDT)
Date:   Fri, 22 Oct 2021 11:30:58 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Alistair Francis <alistair@alistair23.me>
Cc:     robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
        linux-imx@nxp.com, amitk@kernel.org, rui.zhang@intel.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alistair23@gmail.com, linux-hwmon@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v13 1/9] dt-bindings: mfd: Initial commit of
 silergy,sy7636a.yaml
Message-ID: <YXKS4slSthfexrR6@google.com>
References: <20211015122551.38951-1-alistair@alistair23.me>
 <20211015122551.38951-2-alistair@alistair23.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211015122551.38951-2-alistair@alistair23.me>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 Oct 2021, Alistair Francis wrote:

> Initial support for the Silergy SY7636A Power Management chip
> and regulator.
> 
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/silergy,sy7636a.yaml         | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/silergy,sy7636a.yaml

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
