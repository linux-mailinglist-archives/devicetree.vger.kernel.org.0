Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CD0F42D2D8
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 08:42:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhJNGoG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Oct 2021 02:44:06 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:40850
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229457AbhJNGoG (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Oct 2021 02:44:06 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 205933FFE0
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634193718;
        bh=CMmfj/ip+IGKBw8tWjgLAh8I3/FgLXWH7nylZ4BTcqA=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=MB0bTCTv11kczFzbPY0FNzUUzYIrnwcdrIR2ll7xRifeWSekRXlKO7E3SYp3zdaFC
         lP16RSZ0xEPUwmKdATpbgmUig603V/Ba243xvAWTMkZX0/TEuE9VYmC62Cq//O8DBX
         pYmAJyT0xQRjC0siiKj+TgLyc7Bbg+icir5Z5SW1XFWQ7URtUfnsEt0wWK/AA1G0JB
         fp1f3t9ZewpM8hsg09sV9wFCV/IROhGAN/ytuWaS4FFWFxn0gTEaoWE9UkB1sNy0XY
         7CLqmYHQYhUuoaqG4WnuAPdbREwt8JNp9mqD4tt0WQLgA6xpFvKOiqlD2U9vC/QoNl
         CkeKep4ZC8AlA==
Received: by mail-lf1-f71.google.com with SMTP id c41-20020a05651223a900b003fdb648a156so1459676lfv.15
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 23:41:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CMmfj/ip+IGKBw8tWjgLAh8I3/FgLXWH7nylZ4BTcqA=;
        b=QC/VojTgSTQ2X1JU65AO2VEizxxjEBM0ux0mJ9Wu9l1POl4aJKjh8taUOVu7oLyu1s
         DZFW/5CMgnJZQEpoCRqG7Sjq+6DDsOunWNXYM6GgWVA5RoXM4H1jvowIFOKa9AO25Yw0
         gf2e4Cscl4PUfB7//wDsFtyhwM1Ta7ScFM84I4p4d/2J/S/NMgaDn7Vj3NnEXpDK5CTz
         82sDuR1dP/WSLzK+yw0FKAYDiieLmaDDRRerZaWJv8kMlvJdEMim3Mdpra6vF2OfvojA
         Go7s9Oo9VD/oWVpnaEY2wc0MtOnC0y+MbTEN7BwIV4dEKkTvptGllZJnY8lxotX/3c78
         uDrw==
X-Gm-Message-State: AOAM532gQP3wYfsXEgXoaAkubjETO6NvihnWtEobuNY8rdyJRxlKIz44
        qbiWp2A/ogY/TSl2d7XphxXwgKVHMP2ETZnSO4hufxkIg49jtsl+YC+dxepDzxknFAzl0Cz+jL4
        1uiXPoOhpnc4EUJlju2yS2YhF/Z8vUfrU8rhjako=
X-Received: by 2002:ac2:52b0:: with SMTP id r16mr3405372lfm.500.1634193717259;
        Wed, 13 Oct 2021 23:41:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFQjJUQipqmMTro8hRz6eMfXduPpPL0Xek7QIUsQK2i5IMv8MJSarYOB4NbF6Q6rvUma+yZw==
X-Received: by 2002:ac2:52b0:: with SMTP id r16mr3405360lfm.500.1634193717105;
        Wed, 13 Oct 2021 23:41:57 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l24sm176616lji.25.2021.10.13.23.41.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 23:41:56 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] soc: samsung: exynos-chipid: Pass revision reg
 offsets
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211013202110.31701-1-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <3460c787-0a72-3c37-1075-dfee9cc2c0b3@canonical.com>
Date:   Thu, 14 Oct 2021 08:41:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211013202110.31701-1-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/10/2021 22:21, Sam Protsenko wrote:
> Old Exynos SoCs have both Product ID and Revision ID in one single
> register, while new SoCs tend to have two separate registers for those
> IDs. Implement handling of both cases by passing Revision ID register
> offsets in driver data.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/soc/samsung/exynos-chipid.c       | 67 +++++++++++++++++++----
>  include/linux/soc/samsung/exynos-chipid.h |  6 +-
>  2 files changed, 58 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
> index 5c1d0f97f766..7837331fb753 100644
> --- a/drivers/soc/samsung/exynos-chipid.c
> +++ b/drivers/soc/samsung/exynos-chipid.c
> @@ -16,6 +16,7 @@
>  #include <linux/errno.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/slab.h>
> @@ -24,6 +25,17 @@

Include a changelog please. Your patch does not apply and there is no
information on tree which it was based on.


Best regards,
Krzysztof
