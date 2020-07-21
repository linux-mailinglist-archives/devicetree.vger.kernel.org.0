Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89A6C227CB5
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 12:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728536AbgGUKRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 06:17:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726147AbgGUKRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 06:17:12 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1884C0619D8
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 03:17:12 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id 22so2260657wmg.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 03:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Bl3XIfXLjah4oPLTL/rDwdpYDwZ3/9YGgHZMl8zqpLA=;
        b=L1RvLKNqtxs6nWiVoFNg7xichLnVL9Lw3ZKE0k6yBdT/h/bZSuUjuNni35i5O+T0wX
         hqWkOEcklsePlmH06tF2lai3NWe0NMjpCEPFYtiqRQOeGdIOzwlvUIHmMMCVLHQcG+pl
         EPHj4l00LRIcJrkcjr3sg+qPq3wjU7VAABRN0xVdtHiV+yETGHhP09DmQHGNXTNItqRw
         Wf38K8gqyd6DE4EObx8W201R6UdLtP19Qn4vBHLs2h1Mmrq4bc/8FieHxRNjvaU6EBP9
         WyWnbBxtC5js/1G51fWbyPja+pMNFlbQc0UBS9hhuu5iT/frnPqiFChyfAv1JPDIcoAb
         MRzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Bl3XIfXLjah4oPLTL/rDwdpYDwZ3/9YGgHZMl8zqpLA=;
        b=kbrUXHMGUBR71uFNLpzTR9zaVuAlKxVkkXud+kyJ+mUIrt/jaCb+aqHN731E/RHl3G
         kYvdqE18KJZvTHH/YLsHLLe88hJ7cBinie6p7XxR6xliP1oa1KRNyyFLpvmRWdminKJY
         9mVgNHqeM8f9sAOG0m8ULfq7z9nnGPBOrYgl9OJAZQBVX3qzURyf9FyhhtDeu1VJtlGD
         w1Tx4r7eaOqeygdcm0drT9KcbNnLD2ADIHI96RMQKZIkr+R2WSz964PMn2yiQirWV6Z1
         hZ/+L+Fso0Ave2iIMlAf6b5VN6RoAaYlZiad7eB+eQwa57FxwaAFrrG0FsDTvJWpr/py
         /FLA==
X-Gm-Message-State: AOAM533db2XNEB9F3xdNbXscs0ih63iYRg8VjefbRxNcqpeXJ0IpAOg0
        JPVMhBfOuRKmYWWDJWxSZRbvAjOt+Xc=
X-Google-Smtp-Source: ABdhPJzaSOzBg/P/7Wo8uh3IBjKdlBxyt8Ncn2NlVZKOs8h2lFF2aYdaM13WWnx7mJ8ljvT5Y/hECg==
X-Received: by 2002:a1c:e088:: with SMTP id x130mr3252719wmg.14.1595326630904;
        Tue, 21 Jul 2020 03:17:10 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:3590:b402:869a:11fc? ([2a01:e34:ed2f:f020:3590:b402:869a:11fc])
        by smtp.googlemail.com with ESMTPSA id w12sm39791729wrm.79.2020.07.21.03.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 03:17:10 -0700 (PDT)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: CLOCKSOURCE,
 CLOCKEVENT DRIVERS
To:     "Alexander A. Klimov" <grandmaster@al2klimov.de>,
        tglx@linutronix.de, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20200708165856.15322-1-grandmaster@al2klimov.de>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f84744cb-92a3-a731-732f-996bd556ae87@linaro.org>
Date:   Tue, 21 Jul 2020 12:17:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200708165856.15322-1-grandmaster@al2klimov.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2020 18:58, Alexander A. Klimov wrote:
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
> 
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
> 
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---

Applied, thanks



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
