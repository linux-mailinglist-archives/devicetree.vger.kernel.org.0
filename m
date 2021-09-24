Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36822416D93
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 10:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244679AbhIXIVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 04:21:19 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47140
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244676AbhIXIVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 04:21:15 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D731340264
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 08:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632471581;
        bh=c0wuCPSc0x9xGVIhUquA9CgZ6k+TiKYwRjcwj4ZggoQ=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=jiKsL4j8t6cd592iyp/FcX5FVzTFspZ8YptjpIZfJNvlXhQ5IPzndsc88W4qv8U/8
         p+5XgrZU8dVrV1WcXtho4W3tCV8yegR6a4LCMrFhdn9RmjDCD6luwzkquaIDAPMmrs
         D/kAOulbQ+cQnt7TJNqsCQMjAu7HFwInqnXgp5s+XvDpbfHQ8TxNEtmbIt3cCc3rQM
         wAREYKzBObz8iz3PF1s7SLWJk94y0EkLpGhHooS/FaqnL4oh0Z6zbTqcxYQxMMRxwa
         J6cZcA6SJWwBfwRBRiCejXYvnqubZWFZAPc3MuMyfnaZpEs9GznClyzs4bO8NuRqMZ
         zlatwSTfipVXA==
Received: by mail-wr1-f69.google.com with SMTP id x7-20020a5d6507000000b0015dada209b1so7360810wru.15
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 01:19:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=c0wuCPSc0x9xGVIhUquA9CgZ6k+TiKYwRjcwj4ZggoQ=;
        b=ebpl/3JTtJzvdqhejq085tC7227/8RlbWPVaZnUJf+So7J0VCZxmyfyMoa8yQPJFDj
         vImB1ni1XLP6ISRHlc32bXYYVPI8/tiXhzu63NJGASEcKkGV2UchmaX/shLXlEX38TGN
         w8NC5Wzbf3aDEL7Keuzp4lHQi70SVhG8Hx7R+drH1yQ4orFl1otqDbcU06fzCDGEO2Xw
         FyPTOGrDOz4Nz0Z241GIcGEIdMb3AOzdXw4Ebqe/6Amy5dth2efAhxeMove8o5ZUuJv2
         SGcvvigcAa8AXuBn8bSW63NQgPrH1MgvYL+jzhT5z65CaFl/AxsniSb7J6eVT4gnXdF1
         c95Q==
X-Gm-Message-State: AOAM530c18vm6xzx+Xgsz/GKprvb+r8usd8p1Q21OXBdnus01mOHOqYN
        dTp62rTfAVDM3/dJVua0xpbIkFsk7z65tqX2Jp2RVSQfg1BIOBYufgSkORBARvEYena9Fe8Qzwe
        5ptsVhpYlwcHGFQX98VKqsDeuqbf2ol/0m8tnayY=
X-Received: by 2002:a1c:3b54:: with SMTP id i81mr732311wma.120.1632471581517;
        Fri, 24 Sep 2021 01:19:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1C+cVYdmRZUTlAjomfSJCurRjYJSJ+tIhqYru5qzoX0rLrdEtmb3ME8XHJhD/TSPVPDKbdQ==
X-Received: by 2002:a1c:3b54:: with SMTP id i81mr732302wma.120.1632471581386;
        Fri, 24 Sep 2021 01:19:41 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id r5sm7315447wrm.79.2021.09.24.01.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 01:19:41 -0700 (PDT)
Subject: Re: [PATCH 4/5] ARM: dts: imx6sl: fix mmc compatibles
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210923201238.2516844-1-andreas@kemnade.info>
 <20210923201238.2516844-5-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <d556611b-a1ec-a492-55a8-3704fde2487f@canonical.com>
Date:   Fri, 24 Sep 2021 10:19:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923201238.2516844-5-andreas@kemnade.info>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2021 22:12, Andreas Kemnade wrote:
> Binding specification only allows one compatible here.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  arch/arm/boot/dts/imx6sl.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
