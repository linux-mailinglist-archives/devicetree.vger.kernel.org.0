Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA175416D80
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 10:16:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244578AbhIXISa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 04:18:30 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53836
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244557AbhIXIS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 04:18:29 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D5623402DA
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 08:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632471415;
        bh=adcnp4GPi618GC+howN5SjCFMJE5yHqabJDm1ADbxF8=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=E0ROxLDaS+SY09a769r0JkQLs7IMlNYakYcl5U0fVuphkPLK3QBgyaIxKlOm75nfu
         crxl8c95bsjmi8kLvfK47gPvKdVz/qZEsTjEgJbhqn7nygmni0le7WQg/j62Cn7GN0
         Xg0t4rNUjJRg/SM2MpVslG/sFFqCUV+2YHzK6YTYo5MR8X6Gr9Dt2YzXfVPZHKZ/RB
         T1CBKF14D72InrjGvSiiu978oqisKgdLBsCfzkEdMUZ60CSicFo1HvWHxCfaO1HS0J
         MKah5JpziWsFhrcEjLjDVqQNEX5SwgwOqMnpp+7XIr4vzC2hzxW2qrTDaUbCW/yVtN
         6MMvHmNcNEWEg==
Received: by mail-wr1-f71.google.com with SMTP id s13-20020a5d69cd000000b00159d49442cbso7381900wrw.13
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 01:16:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=adcnp4GPi618GC+howN5SjCFMJE5yHqabJDm1ADbxF8=;
        b=sUCKiiF3IOGRsfKP9lRTd8ic/wIWalIj/MeMzqYr5cbPSVUkQ+FGhZ38EbZ85dlGtY
         55OzhXvMitYZ2/ssDlVvGX8LNj+p7aiZDKqOOPZbdyqFcc7UlH+GZvSVkCOpBMhgptKy
         yWrStBRZRSAw/y4/XqY/AfYkeF7sbJkmbtB/tsAzTWOvkjBRiV23azRj8dfqLu5nGdjF
         0CnW+4UpS7mA/a5pkkHzbC/iauQ1enwGqGTlvPCzk0wd+GXdhzqufCqBB0sUKUxsha5Q
         9uFqyjfi68SG2PjlQX0rqV/6wVoE/T/MhQZKTwCHA726ZfpnZCwt6LCOlBiLRs8o2WqH
         pf7A==
X-Gm-Message-State: AOAM532yzURGTA+VALkkJCb3duBYiFIJ3j08rhEL4pj/gp/yhwqUFlaQ
        S/t6hjfoYZV7XeeqFeYkiPQtoPJk/1Pknt+CcvMzTbWWFM0Q+B0FZJ6Ow+FQl9QT72P0Eda99qT
        YkfXhSB7V2I2/C5Td8bvf3/Ns3hsFu71AkRLdRCY=
X-Received: by 2002:adf:e783:: with SMTP id n3mr952616wrm.37.1632471415628;
        Fri, 24 Sep 2021 01:16:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvvnOCjxbLIMKuMcM/FVctZ/YNg4/CfqO5LPRD+MR74KA2VUBrrE8zgWW4PyuxHSiQJ3DL0Q==
X-Received: by 2002:adf:e783:: with SMTP id n3mr952599wrm.37.1632471415468;
        Fri, 24 Sep 2021 01:16:55 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id c30sm7500467wrb.74.2021.09.24.01.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 01:16:55 -0700 (PDT)
Subject: Re: [PATCH 1/5] ARM: dts: imx: e60k02: correct led node name
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210923201238.2516844-1-andreas@kemnade.info>
 <20210923201238.2516844-2-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <09e3d314-ebe0-1310-073c-f63562a640bc@canonical.com>
Date:   Fri, 24 Sep 2021 10:16:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923201238.2516844-2-andreas@kemnade.info>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2021 22:12, Andreas Kemnade wrote:
> Only led-X or led are allowed according to bindings definition.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  arch/arm/boot/dts/e60k02.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
