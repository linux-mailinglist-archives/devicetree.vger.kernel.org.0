Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2267D416D84
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 10:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244598AbhIXISr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 04:18:47 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53872
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244594AbhIXISr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 04:18:47 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 92BB3402E0
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 08:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632471433;
        bh=EXS4i7/UM+obnQxSd1z8wLNVqi/HuXi6RdmLnjeH2JE=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=M5+zz/2rJxZvkyeih0BUZKW1hYqsWkpYSVSXP24PTd+nRUFBuinliKJM6r3W8Ynan
         a1v6Q45HbTemez4MZc1CoiksMnLaP/vR/act4qdJh/5a4eMujmhYT9oZKd5EEwbal0
         KuRhk2POJUseefr2X5lutIzUJyzXdREn40tB8A5l92XMfQvQSf2q0vsOWB0MRmeTA9
         iJgUC3YXRwOVNQ47pFbZfzCYlczhEPDw8eadaxDULiDIGOOzDojwexxy0vRpjvwtcr
         2SxOsWwkrwiCfsoneqxXoMsCQAGONQ5MWDymhLhDSfv4VovUfNEU+n+ivjZNVRGIAB
         GrCGM5IxgrvxQ==
Received: by mail-wr1-f69.google.com with SMTP id i4-20020a5d5224000000b0015b14db14deso7336788wra.23
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 01:17:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EXS4i7/UM+obnQxSd1z8wLNVqi/HuXi6RdmLnjeH2JE=;
        b=AE3fHPRUUHRoOqTD8107JdFrjnCdYxNt3FKQzAlrTePvkyYbqkwt03LMJNRDh6MAnV
         WyGkh7hnp+qaIBIb7gs55HU4i95dUuxN3pqDrgBm4elA/MfM2G6L2wGwLPvditBmVcDN
         Wg6F3VE+cxWuOdOvTJW0ZYGeyB0W9WSpwgJ2VLbhq76IOtYWGBm3XWTpzfKrp7Evw+3z
         uh53JsIiwCRDhPxD9XFIb+RBzvpw9muQtyzLdJs7sdN3HnLvPFGOMLCTbbplh4znFg7v
         yXhgRaDa5Rt9Ynj5422V0nhY3bvONu2OXsME6YQlNxVEEE8nNQXi/J9j+bvakOEySZZO
         DN/g==
X-Gm-Message-State: AOAM532OZDehH8JS2LICbF9yQ1SZVbkVGr+ndrCOKRZlsdr4ADC2PBVp
        U/UqDTYSNehJ40CjHqIxB4PTKQvQ3Ds/7kwsTBYUcSKKbrZDyjwTrYl58zotVobSZHD0tFgIq7+
        aPrek5l+JdzB/nY0aflslkj0BglUXaWE3Dy3B+ms=
X-Received: by 2002:a5d:404b:: with SMTP id w11mr9561043wrp.437.1632471433290;
        Fri, 24 Sep 2021 01:17:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+vjhZAx/ULGOawL+W6ez/4NvIuds33IzJPVlTeG1/oU9kqKCA9AkDVpnCpge4bLZlTNV+jA==
X-Received: by 2002:a5d:404b:: with SMTP id w11mr9561029wrp.437.1632471433160;
        Fri, 24 Sep 2021 01:17:13 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id m2sm11457315wmm.3.2021.09.24.01.17.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 01:17:12 -0700 (PDT)
Subject: Re: [PATCH 2/5] ARM: dts: imx6sl: fixup of operating points
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210923201238.2516844-1-andreas@kemnade.info>
 <20210923201238.2516844-3-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <e41f9570-3350-651a-f4f6-c9864d3504c4@canonical.com>
Date:   Fri, 24 Sep 2021 10:17:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923201238.2516844-3-andreas@kemnade.info>
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
>  arch/arm/boot/dts/imx6sl.dtsi | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
