Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97AEE416D89
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 10:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244592AbhIXITs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 04:19:48 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47092
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244515AbhIXITs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 04:19:48 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B3B2940264
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 08:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632471494;
        bh=wKfFqc9ypBR2vFb4ND2JpOR913aG3NGwaTaadvEojhM=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=bwOCpTTU9l59aR2p2FK+hAYzgRMu0g4DgqC3YV6GFo6Ro2e2DrnR6LgkEZcTyZwZC
         huEFIFcKgnW6g4xsMDBlJEvBxG4G42ZS3gv8Sm6Wb+QPIFARg0yDOrzR8lb3zib7AS
         JeeXgwPOV9LGiLP/TT1S//IKrDplrz0z1hCNvI/zXdqhpftuwm1RufmOVQrK96IYmQ
         KSAWUvqLkLA/H0D+jxploie4XmGeMrEC+/6Yu0GNfUb7o262BtvGKyz1k9E2Q4/tDp
         3w5FQ3BG9LKJxxkBvrbkNHj+aHrziShSMDg7NeJZzbe16NsAbt7P7xPe8BMNzO1eJX
         ra0CqsCd05N7A==
Received: by mail-wr1-f72.google.com with SMTP id h5-20020a5d6885000000b0015e21e37523so7383616wru.10
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 01:18:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wKfFqc9ypBR2vFb4ND2JpOR913aG3NGwaTaadvEojhM=;
        b=Ng356Xp7AL85Y8Lbl+9uB7jfPEbm/rfSA62dAcEjdQiB2kRW6bJK3CREwOHeh6vZVu
         SLXbBQ0G5K6q12Cl4OZ3wJEqSkNMIm42mmC4zOlzcK28sC9JvWr2oIHP60JVX9mSQaVt
         8f/RqK8IhVkuj/J8kppJmLbJahPpfqC6VrzNnab/9LG8mrEo2hvQBvb8rF3rwfulFwfR
         AO1WuM2KqVHb7n9dwy1syKDdYEOuCIQ+uhLqupg0h41iF8oJ8YiwQ7sSh0DLH4UkvdVk
         EZkL/mCDnlE8BoCJo9C20+TT6RiJpDoXPXag/b6/as0wxJDWwKjPcfBQDzr7YzYcxFgZ
         xXeQ==
X-Gm-Message-State: AOAM531bdeBiDR27x4d27Smh9oCGXCcFydbO6AuP9DqAgaNu9K4DjwzL
        qZEJFAxd00n2hij1rTUKt4pmIIxfLjZA/VZXGLwXVgQ9HBt9vG1971rR5kGNtVjFzfJShaqYnFw
        eiQpIypxhsvRYBtXcbsWJ3Y3z5HlQmzrDXvaL4PM=
X-Received: by 2002:adf:a3c3:: with SMTP id m3mr10097089wrb.237.1632471494439;
        Fri, 24 Sep 2021 01:18:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyAb/J02T0Mk5CKwEU/mHb7Gj4aP6D1cNjZYYufMpJRWi5uiH2oXt7jWB6lSTkoBQhoI5S3eA==
X-Received: by 2002:adf:a3c3:: with SMTP id m3mr10097078wrb.237.1632471494243;
        Fri, 24 Sep 2021 01:18:14 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id x21sm11546908wmc.14.2021.09.24.01.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 01:18:13 -0700 (PDT)
Subject: Re: [PATCH 3/5] ARM: dts: imx6sll: fixup of operating points
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210923201238.2516844-1-andreas@kemnade.info>
 <20210923201238.2516844-4-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <cbb414bd-0d6d-7ffe-0cbd-2bf747f7b219@canonical.com>
Date:   Fri, 24 Sep 2021 10:18:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923201238.2516844-4-andreas@kemnade.info>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2021 22:12, Andreas Kemnade wrote:
> Make operating point definitions comply with binding
> specifications.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  arch/arm/boot/dts/imx6sll.dtsi | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index 04f8d637a501..0f148f498374 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -51,20 +51,18 @@ cpu0: cpu@0 {
>  			device_type = "cpu";
>  			reg = <0>;
>  			next-level-cache = <&L2>;
> -			operating-points = <
> +			operating-points =
>  				/* kHz    uV */
> -				996000  1275000
> -				792000  1175000
> -				396000  1075000
> -				198000	975000
> -			>;
> -			fsl,soc-operating-points = <
> +				<996000  1275000>,
> +				<792000  1175000>,
> +				<396000  1075000>,
> +				<198000	975000>;

Please align this line, so I guess double space.

With the change:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
