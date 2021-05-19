Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E41B8389328
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 17:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355046AbhESQAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 12:00:55 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:35268 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355064AbhESQAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 12:00:44 -0400
Received: from mail-qv1-f71.google.com ([209.85.219.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1ljObT-0007Ed-Cq
        for devicetree@vger.kernel.org; Wed, 19 May 2021 15:59:23 +0000
Received: by mail-qv1-f71.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061so10701650qvb.14
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 08:59:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PnooPKSwa6SmA/H8X8W7wHWC0547PfU+gn/DWorwdGQ=;
        b=QEd3entfD+nNLFpBy00yiNHKcuAO6rmpQkTmw0pVIPzRVsPQmX+p/BPY+urbWhNLEW
         BhyM5cmLD8q1mn6nitwJu7xybQ/PMeGQ48RPAOEOYujN2gcOEvk9HwNsB+5TDvV5QI1/
         PmaQSjFN/7S0Sed1Uz2M66bjxcB2fdDX3Cf/KC3cDfcKch9KmqzjfauX/t+xxxXiRTWy
         JMuA27fYYO0JfW/HnotVsC4BOhT8HpWIiWKJbx1/rNsO0p7DRmhqnlAvm3qaIxfdiYXS
         rCHZoYsFr1eFoxAVLZRWMIkTgmZg/InzyzoXGFdEGuXU43BF2C7p03qFDnp0DhNqGBJd
         oDXQ==
X-Gm-Message-State: AOAM530H1alQSSZ9Z8eiHB8jNu7yOe5L+IVXqv7x95FufJi5GGqJthgD
        GpItnK679yagE/uYfN42mkkRoR3/hHHI3g6vhgKWJgTTFQ2pAAqd7kU1m0+QbF7AgiQeCXZIA+I
        z0OQQ3ayZOasGYYltDrCu28E0XxFWJHmr15ETkW8=
X-Received: by 2002:ac8:5dce:: with SMTP id e14mr77881qtx.183.1621439962545;
        Wed, 19 May 2021 08:59:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGwuwn46qYHy7r79lyImK37z9ZMvzPgbLiPqex86I0vyobhhsRXb3Fod9XlHot7MGdUrlG5A==
X-Received: by 2002:ac8:5dce:: with SMTP id e14mr77836qtx.183.1621439962143;
        Wed, 19 May 2021 08:59:22 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.48.3])
        by smtp.gmail.com with ESMTPSA id g15sm72470qka.49.2021.05.19.08.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 08:59:21 -0700 (PDT)
Subject: Re: [linux-nfc] [PATCH v2 1/2] dt-bindings: net: nfc: s3fwrn5: Add
 optional clock
To:     Stephan Gerhold <stephan@gerhold.net>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-nfc@lists.01.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bongsu Jeon <bongsu.jeon@samsung.com>,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20210519091613.7343-1-stephan@gerhold.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <c1f02515-a86a-7293-b884-52c388ea70e3@canonical.com>
Date:   Wed, 19 May 2021 11:59:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210519091613.7343-1-stephan@gerhold.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2021 05:16, Stephan Gerhold wrote:
> On some systems, S3FWRN5 depends on having an external clock enabled
> to function correctly. Allow declaring that clock in the device tree.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Changes in v2: Minor change in commit message only
> v1: https://lore.kernel.org/netdev/20210518133935.571298-1-stephan@gerhold.net/
> ---
>  .../devicetree/bindings/net/nfc/samsung,s3fwrn5.yaml         | 5 +++++
>  1 file changed, 5 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
