Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0086988AAF
	for <lists+devicetree@lfdr.de>; Sat, 10 Aug 2019 12:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725884AbfHJKUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Aug 2019 06:20:13 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:44431 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725888AbfHJKUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Aug 2019 06:20:13 -0400
Received: by mail-lj1-f194.google.com with SMTP id k18so94262685ljc.11
        for <devicetree@vger.kernel.org>; Sat, 10 Aug 2019 03:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Sq+6WqpBLaoDnZr39PsY/fQut7RglmH69G4syGYdWNo=;
        b=tLw/xrN3nkWKecpxzW5sPTVkFFTaLhsramlyCkj7eaSKZz6a1uRzw28+4LJIhGB+24
         A3T+bct9hlfM8sXFDk8nbnaLGanH5XFzB6HG3iPWQZi/Uxdsi6GVUukvJexdakztwtOw
         p59/ZKZS69yXzHJMAeoo5EvNcbT3pSFH/5Q+adgVZxbptJz9pCXW8TBAAMyXOCjYsSvN
         WiQeuX10bfqMISv3uS4WBGfy0/n3Szneb86uASIYs6QP5zTs7kyfiP7YnqpZQTu47Mrp
         dtcSsfFy9ibFh5U7uB3O7DtjFJSYegzxqqG4gbvdh204/NbyTS+soFEeoKIFSBQSzd3Z
         x2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Sq+6WqpBLaoDnZr39PsY/fQut7RglmH69G4syGYdWNo=;
        b=pt31DcJgqegWsPzzMXHRHqXh6lI0nIqH+uP23eopKVvjHccCgiqFA26U8Ni1lCaMdI
         9TERCqOipVr7j/h/ZhAvOllxhPKQsRlm4I1p511e9PtE8aq93ZnOGH6gvGQ5IvdvW9h2
         r6dQyhfYrjf1ik+HxH9dgASzowhvGTh+lLBIGVN4CK2wvHrQxDIv94HFKS52W6c+oUHb
         DWA+VXLtJM89+0p2F9uQv19jupVt0NGj0c9vhHJofdmdvyKHPK06gDFyJ2iWrZDAyog5
         KiJA/lB+N//FV86IgvEMkDx+Hc66yHLwm9usGzGv0NKqinhi5gtbpUW/IGaQkWNJdnoH
         tmWA==
X-Gm-Message-State: APjAAAU7+JlbeCaFujVIjGAb0o7iti4crtq06SXc3LT+hNLuzjZ0Kk0t
        eG9lUOMtUL3LoSNe5lv4neOdFA==
X-Google-Smtp-Source: APXvYqx5avYfGx2MFNcpS82xmwm1Oq3cm6YBNaGbYQ/4WYUkHtj/CNLg89ZluEVcn3ib2fDTh+rKPA==
X-Received: by 2002:a2e:a415:: with SMTP id p21mr13856843ljn.111.1565432410967;
        Sat, 10 Aug 2019 03:20:10 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:4d5:6a53:c586:c2b6:b7e6:3b26? ([2a00:1fa0:4d5:6a53:c586:c2b6:b7e6:3b26])
        by smtp.gmail.com with ESMTPSA id t21sm339759ljd.91.2019.08.10.03.20.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 03:20:10 -0700 (PDT)
Subject: Re: [PATCH v2] dt-bindings: usb: renesas_gen3: Rename bindings
 documentation file to reflect IP block
To:     Simon Horman <horms+renesas@verge.net.au>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        =?UTF-8?Q?Niklas_S=c3=b6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20190809213710.31783-1-horms+renesas@verge.net.au>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <0be0a8f4-881d-d959-fd71-70670a6a86db@cogentembedded.com>
Date:   Sat, 10 Aug 2019 13:19:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809213710.31783-1-horms+renesas@verge.net.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 10.08.2019 0:37, Simon Horman wrote:

> For consistency with the naming of (most) other documentation files for DT
> bindings for Renesas IP blocks rename the Renesas USB3.0 peripheral
> documentation file from renesas,usb3.txt to renesas,usb3-peri.txt
> 
> This refines a recent rename from renesas_usb3.txt to renesas-usb3.txt.

    To renesas,usb3.txt, perhaps? That's what I'm seeing as the original file
in this patch...

> The motivation is to more accurately reflect the IP block documented in
> this file.
> 
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> * Based on v5.3-rc1
> 
> v2
> * Add review tag
> * Correct changelog
> ---
>   .../devicetree/bindings/usb/{renesas,usb3.txt => renesas,usb3-peri.txt}   | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   rename Documentation/devicetree/bindings/usb/{renesas,usb3.txt => renesas,usb3-peri.txt} (100%)
> 
> diff --git a/Documentation/devicetree/bindings/usb/renesas,usb3.txt b/Documentation/devicetree/bindings/usb/renesas,usb3-peri.txt
> similarity index 100%
> rename from Documentation/devicetree/bindings/usb/renesas,usb3.txt
> rename to Documentation/devicetree/bindings/usb/renesas,usb3-peri.txt

MBR, Sergei
