Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4395401B18
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 14:24:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241560AbhIFMZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 08:25:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241394AbhIFMZK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 08:25:10 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 114ACC061757
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 05:24:06 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id q14so9614480wrp.3
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 05:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BB59IKAfrwSwSdWxafFGFhSlkLl8VbEjXjV3EpRJFr0=;
        b=WH0mSvnCL+acOmSHB5tbkeUzV72W8TU05gNSd2bsemQomgCcv1JOEOmTc0IpPWxpLR
         K5LISkLF3ij5Uxxyl4X/Yxx5j3OIQo6yYALIxkavaNoaNJhkbnzAB9vM418nrlD+lmuB
         haNq7/JnF7dRztxGthevIIMCcCddo2KPq3bPB+QWG65HIVO/+lk/bZTwE6MWtmAV4yc1
         Py3PWZrzuWQvJU12bG1mwlT5aD/Qvm+wMo6eYnxve1kMV6481OquymQAsNi8awdzNWZj
         U3+8Bgk5pCkhf6r4k9Y1ri+JjfXa5YnBY+XxEF0DDO8myxLSwTF4mgKF9TZKqefbPSwp
         GUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=BB59IKAfrwSwSdWxafFGFhSlkLl8VbEjXjV3EpRJFr0=;
        b=tCd6+qqPlKEdweSHb+I4U0lNp82YcfA9vhr6OKtNfxBngFmL/lHHf3jNlvf8p2exKw
         1KP9ZYAPpLz6u1D0QA0Fik9NF0/9O1hRx7Kz/5Yz+c6Th3RYgtlBZTE6JN+i/7ygg97X
         kAPSeilr4xzLWd8CoG8pTWms/QwYuSP3E58SM18ZQLBdWLrb5ZZz3MrZlvI8FgjNo/2m
         QYtpqaBoXRqz8HkM+ZWA1Hqd7FI8GMWZcCcgn/jOl0RJ5qmymz89U7p9IVGM4qNvQOpi
         15JmjhZVtJcmm5gNuC0FEOlVGywnWER3mrtZEY7N348RhjDVJLAPt6if4UHN6TwXbQTX
         pHFQ==
X-Gm-Message-State: AOAM532l20KflffZipzr8Fj6qR7dMNqK3P7Ag6woCDd8W1v2r2uQFz03
        afn3Cr42oL32UbsZUCu+ECZNEQ==
X-Google-Smtp-Source: ABdhPJwU9sW7OD+Tf4zkvp4IV8JncMXHvha1k67ulucGwUQzXRfB/DmhfbDq7VAPkIanJB/wNKHnrw==
X-Received: by 2002:adf:fd51:: with SMTP id h17mr13261148wrs.178.1630931044475;
        Mon, 06 Sep 2021 05:24:04 -0700 (PDT)
Received: from ?IPv6:2001:861:44c0:66c0:9afb:57ba:5ea:2010? ([2001:861:44c0:66c0:9afb:57ba:5ea:2010])
        by smtp.gmail.com with ESMTPSA id c9sm7748121wrf.77.2021.09.06.05.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 05:24:04 -0700 (PDT)
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: amlogic: add bindings for Jethub
 D1/H1
To:     Vyacheslav Bocharov <adeep@lexina.in>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org
References: <20210904142745.183875-1-adeep@lexina.in>
 <20210904142745.183875-2-adeep@lexina.in>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <8541f649-0885-bc15-0bb0-ac54110ac47c@baylibre.com>
Date:   Mon, 6 Sep 2021 14:24:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210904142745.183875-2-adeep@lexina.in>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/09/2021 16:27, Vyacheslav Bocharov wrote:
> JetHome is a series of home automation controllers:
> - Jethub D1 based on Amlogic A113X
> - Jethub H1 based on AmLogic S905W
> 
> Signed-off-by: Vyacheslav Bocharov <adeep@lexina.in>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index 6423377710ee..b223d7829c3d 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -86,6 +86,7 @@ properties:
>            - enum:
>                - amlogic,p281
>                - oranth,tx3-mini
> +              - jethome,jethub-j80
>            - const: amlogic,s905w
>            - const: amlogic,meson-gxl
>  
> @@ -133,6 +134,7 @@ properties:
>          items:
>            - enum:
>                - amlogic,s400
> +              - jethome,jethub-j100
>            - const: amlogic,a113d
>            - const: amlogic,meson-axg
>  
> 

Please keep review tags across patchset versions.

Acked-by: Rob Herring <robh@kernel.org>

Neil
