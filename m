Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C4232B0435
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 12:45:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728039AbgKLLpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 06:45:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728242AbgKLLpF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 06:45:05 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89BB3C0613D4
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 03:45:04 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id s13so5210082wmh.4
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 03:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W4rTVHjbd+mpguywWNkSROq0hOpiSxqsmTDa7iGbWzE=;
        b=DNCauhmrLLDTzPZ+mQbVBE0eqe/PQovUWayd6SBm7RrhfibTuoWKWG0EWv3oHEhUwE
         FVgr/6Rrg3Y+NcpsqF5u0zlvXOlJ0VnIB6hCciiAebVa1zVaG9TenreCe0QjoQ3R0xRc
         IyACffreqtASl9MdO4+nLmgZbhDvXWrSZkkpOn8PHOU/uT6PUZEUJYQjr9WC/xzoku4z
         FxTjaOEnhNR08GW0xyrZY+uyTfDDOazCtoMMjR7a37auwVi9r6K1ySWeaOVQXQp/BRd3
         IzraqvYlBkxo+tGSBgxGDaAGnqm2Lfc/D6IIwxasUBraNQqG/YYxpJuXXwDB9ONdvMl2
         9/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W4rTVHjbd+mpguywWNkSROq0hOpiSxqsmTDa7iGbWzE=;
        b=JigfjSN0Ya3JkdxmCIZv58bITVMXf/WmV0jC+qXVd3kcyrIzvia4lI2t7a/aHN97uk
         VwdtH1JuqstO9gpZv/2E508OE3/e8m+VZlynBKPlo4eN8J3ziXko+W/I1xjAPp4qFff3
         kEagwOlO0p8kYHRqnyYsWWhOyOG76/ih0DHRXlfYlNE5b3z2C6x9BUfTnNkY5i6+CTn8
         84f1Mkx/2sn6bDULl+xoWe34Ep/xXv36pWfbctM/SB7YCq+FLbtFZZsBwApF+1q6jO6L
         75I5CadeUVANcDltYQ5sDbzdit9aMFtMn1W87TM9ra54ajDUgaYsO7dKPsGIQTgjXTP1
         ORgQ==
X-Gm-Message-State: AOAM533r1djxHzShyMhv6byMvx8SLGPWq2YvhwJ/Kc1l+9P7qvIyq3PU
        rsfRx43LowKJWERS1VolHHjgUQ==
X-Google-Smtp-Source: ABdhPJx6GWoJgz5qXJzSTiQQAr2TDZDRCT0AUD+HPdj5y/7wWse8oZFJ5ZN/sD6m25n3mlGvcJg0Ig==
X-Received: by 2002:a05:600c:2204:: with SMTP id z4mr8822414wml.57.1605181503138;
        Thu, 12 Nov 2020 03:45:03 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:6971:b700:3764:fa96? ([2a01:e34:ed2f:f020:6971:b700:3764:fa96])
        by smtp.googlemail.com with ESMTPSA id o184sm6215357wmo.37.2020.11.12.03.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 03:45:02 -0800 (PST)
Subject: Re: [PATCH v5 0/2] dt-bindings: timer: renesas: tmu: Document
 r8a774e1 and
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201110162014.3290109-1-geert+renesas@glider.be>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a70ced89-3e47-9211-e914-84e3fbae0583@linaro.org>
Date:   Thu, 12 Nov 2020 12:45:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110162014.3290109-1-geert+renesas@glider.be>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/11/2020 17:20, Geert Uytterhoeven wrote:
> 	Hi Daniel, Thomas,
> 
> This patch series picks up missing Device Tree binding updates for the
> Renesas Timer Unit (TMU), and converts the bindings to json-schema.
> 
> Thanks for applying!
> 
> Geert Uytterhoeven (1):
>   dt-bindings: timer: renesas: tmu: Convert to json-schema
> 
> Marian-Cristian Rotariu (1):
>   dt-bindings: timer: renesas: tmu: Document r8a774e1 bindings
> 
>  .../devicetree/bindings/timer/renesas,tmu.txt | 49 ---------
>  .../bindings/timer/renesas,tmu.yaml           | 99 +++++++++++++++++++
>  2 files changed, 99 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/renesas,tmu.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/renesas,tmu.yaml

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
