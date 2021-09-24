Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71C2B416D9A
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 10:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244702AbhIXIVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 04:21:38 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54118
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244706AbhIXIVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 04:21:35 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CC0DA402DF
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 08:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632471601;
        bh=/FpPJ6HUKh570GzSsZQ+WyAXS4zfQoVYPICEt0qHWjE=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=YJd1yfmuovSX2k/Ro1Cu5/LhLvCugxS10ZBC+yBTMJKi90gH1cXnZam779S1055bw
         /2M+7m7khj0gXtU5dDHyqq2GRv/W7HKAx6t3PYs9W7SPShoHCKTGlfexrXQuPdhEgl
         x7DMfs0JP4ArIAkPkcNeYIJl3QVplOCyXtS8gOp2HxRJXwGKJW8xqB/VEcl7DbLGW6
         kW02gzVJgf/LuRWa4vWDFYntwX98BpN8mneyLx8Mtp/WlgqqSq1M1ri69iZPAB4Y0Z
         ecV4JypSoFboDRBQvIt77epegKQhnK6I5+y57YhZS3Q0VNR1Ez5cFZDSvJndMcAGYl
         P+zFcNW2MusqA==
Received: by mail-wr1-f72.google.com with SMTP id s14-20020adff80e000000b001601b124f50so7402542wrp.5
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 01:20:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/FpPJ6HUKh570GzSsZQ+WyAXS4zfQoVYPICEt0qHWjE=;
        b=qLv2QWi+gbJeLcZIXIqoCeNvngpO8KY1SF9+wQ9bG2xXRMhRecbsMlVepvNFRhxR6+
         o6tiNpaDq4e0lbDpL9FipUrVfXz8DnigHzwe4UnfX1/kERwK1Vm88U7qZSKTiWkoz0wj
         xfa13dc96+mPeN41zzovPvHMZ+2vCYXVs4oNgXuoYkCtkLf8fdNJjCp3k24Fws1U/M8M
         gXW6IcFRQSt7jRpsbw2L5e5MKb/FLm0MrL6Kjq9DVouZgSYRzFd9slDwthpWkVKRidAk
         Hn9nM0l8PNnPQJxRglc+qg4bVHIFhx/g/pQ6O4MKcZiig42HeqMG/j2DIpolRaQglP1f
         temQ==
X-Gm-Message-State: AOAM530erXroHEWUhSE0QVDvkYuNvcdrK5F3NI4WaD3ov5e244Zv6FVX
        m9zCPzrrAvODPqWUB0o8omXO2gFUEaXjffCbSJTa7W5DxpgcGm+/9AzI8EHXnY1dsTV/HIx+KzR
        M5egHryrx07z5ZGqDYKULdCk/0V4PjLZR34eYZs8=
X-Received: by 2002:a05:600c:22d4:: with SMTP id 20mr667844wmg.177.1632471601562;
        Fri, 24 Sep 2021 01:20:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyovs07/NpPqs+7EX8hqtEtUX7GPNasLzXOlMR532keOm9gCjirjHV0aIV/QaKqpQCZ0XtFTQ==
X-Received: by 2002:a05:600c:22d4:: with SMTP id 20mr667818wmg.177.1632471601360;
        Fri, 24 Sep 2021 01:20:01 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id c135sm11874595wme.6.2021.09.24.01.20.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 01:20:01 -0700 (PDT)
Subject: Re: [PATCH 5/5] ARM: dts: imx6sll: fix mmc compatibles
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210923201238.2516844-1-andreas@kemnade.info>
 <20210923201238.2516844-6-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <c4723e89-a6aa-ab0b-f55a-0d6734a19c34@canonical.com>
Date:   Fri, 24 Sep 2021 10:20:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923201238.2516844-6-andreas@kemnade.info>
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
>  arch/arm/boot/dts/imx6sll.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
