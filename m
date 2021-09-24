Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40BE44170B8
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 13:16:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245213AbhIXLST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 07:18:19 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54752
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S245205AbhIXLST (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 07:18:19 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id F220440264
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632482205;
        bh=aiCG4TKCxB5pDlfBPhlfyfaq05mK5AFrA1zDk3YN3Zk=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=Z4UIyPdvy8C71nOFxy/9l2EumujKA1qpP6ICrGl/BXUQzp+oSl9eNfk9CHxHMrMh/
         ch7gwPHJ1W1qbwSQ4NdTRiTx1qWKshrq80WMeckWpimU3loYSpvDCmQWnf79xnnymH
         5OdgAFc45Izcn31222YhluaWGWUBDCHT5y4g+wIAK/0irRC18hxOWSVHZEa8LvI2tG
         5cdRk9wk+smixrLahQWx9rdH0npXQJYQJ074Z/zF708YGQWmzCRtMsAEnZiGx89+c/
         UDmjBvSN/dOnQh8qqhxTYk+YiMVxa1ZUzOIFhIpxr4Pbk07bQuJjagMlr05A9vordV
         tmVEvAvjmxOXA==
Received: by mail-wr1-f71.google.com with SMTP id a17-20020adfed11000000b00160525e875aso236073wro.23
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 04:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aiCG4TKCxB5pDlfBPhlfyfaq05mK5AFrA1zDk3YN3Zk=;
        b=UxZGOHQEd/BWF8EO21IAn2/qAAXsMWqK1SUVsvHR6r7deXytedDmOMbcOqMNJstEQl
         UMJxbi+u4TnDgoq8aNBqT3v6RJMkVLOO4i3sWHWkjOc6A2v18C2C/wpf/rjr3APy6csx
         kUUKEDzPzB+pLW8u56PWt9kURkoaHLSAWx8SDRF5OxLBzsgakn3aPvjVq5iE5W99C56h
         m95TynSj55tVI9+eGNXUsL2x4a2glVpjpIaEL4ieqF1im+Hj0Mmq5CGTnwnLKBJglJDD
         2u2q1RwJ52hMVfhLCffBRjFSy0Enh1jrB5jusac0zfxOjKwiHIrlqnJ7z8QDlbAL5/l9
         gltA==
X-Gm-Message-State: AOAM5301EPmvDHuYhTUThLqeoDb+cmpO24RnTGuEqwB9QkyVeRBtI7nv
        0vnV4Jtjt1Aij+9TT6rRjrj+x0EgsqC/i/vkhSOu9tjsgGlERorbZs8UjfTm1nCfx5z21Ak7i3t
        NHQu2JXsg8oFIj7+mh3umZGZNZ2iOQ4zmlNKhck0=
X-Received: by 2002:a7b:cc96:: with SMTP id p22mr1445591wma.83.1632482205430;
        Fri, 24 Sep 2021 04:16:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+ZIBTe1TLhsLs5L6B4mgKWTfR95aGpSX0d+JQJIY6OfeZcyVoHaFWVremJOS2a55z2/0e4Q==
X-Received: by 2002:a7b:cc96:: with SMTP id p22mr1445571wma.83.1632482205225;
        Fri, 24 Sep 2021 04:16:45 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id o7sm9958016wro.45.2021.09.24.04.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 04:16:44 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: rpc: renesas-rpc-if: Add support for the
 R8A779A0 RPC-IF
To:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-kernel@vger.kernel.org
Cc:     linux-renesas-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        devicetree@vger.kernel.org
References: <20210922085831.5375-1-wsa+renesas@sang-engineering.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <75713e8e-f675-240e-b503-99618d07afda@canonical.com>
Date:   Fri, 24 Sep 2021 13:16:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210922085831.5375-1-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2021 10:58, Wolfram Sang wrote:

Please write a short sentence after commit title.

> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  .../devicetree/bindings/memory-controllers/renesas,rpc-if.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml b/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
> index 990489fdd2ac..b15992ad3613 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
> @@ -33,6 +33,7 @@ properties:
>            - renesas,r8a77970-rpc-if       # R-Car V3M
>            - renesas,r8a77980-rpc-if       # R-Car V3H
>            - renesas,r8a77995-rpc-if       # R-Car D3
> +          - renesas,r8a779a0-rpc-if       # R-Car V3U
>        - const: renesas,rcar-gen3-rpc-if   # a generic R-Car gen3 or RZ/G2 device

Where is the driver or DTS using these compatibles? The bindings can
come even without users, but are you sure this is what you want?
Changing them later, if ever needed, will be more difficult.


Best regards,
Krzysztof
