Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 062562206DD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 10:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729688AbgGOIQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 04:16:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729643AbgGOIQx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 04:16:53 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BA0EC061755
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 01:16:53 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id q7so1630006ljm.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 01:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I5qZejAIQq++nnd7O7LL3lalpe7lhmzwl0tFbvuobuo=;
        b=Gzz92IMQX2sC0iZHXUrf4B54p2Nu5HGb/sJFPOgQq/1UflTk9/FKdYY4lLrTSNXu0w
         PZN0c2ABgKSbYHv6Pk3shycPo/BkbFCLufjq+5DxgjtfF6Y44ScQw0h3wcp2SDV5hze0
         mJ2CokvBuuotOUOH2z2rRknfxowQNuJvGIIbapp+TCfchXKrHXUVJ+ikCKtPEly8PAFu
         mWsTFK2Ois6xOffKQEnyDkNZoCDqzhkzRnmW5AKy2HcZdHHjLVEbTkkurQKD1wK2d+EY
         eSfpJaCrVpm8ocppmWIqUU0veC6tkc/CyNJLg+RKJfRNVvZG+LapQef0T6N81JNR0Khq
         Ud+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I5qZejAIQq++nnd7O7LL3lalpe7lhmzwl0tFbvuobuo=;
        b=rp4DD353OEkBaa9xRBYCdUWYAa4tj7Avfd6hrqsP23IaXXyamtiewXDdzqGX6S3faq
         3dPz78IBSesz+Tg0PPKlf8fkq+Gm9P47ZGishjZuTUikJHh20nFYe7zRU1fGQEBCf37/
         wL4nK70YlmLTNuTUhxDenxDLgEmDFg3gX0bUEEVjllBEaWly3rVFKIpCNrqzezyEq4fR
         wcwm4QknctaL4C9Hiz+CYcEK5nIGu7WFSczA13TpMUmdcrS5TG1pglWmk8GNTzR7inQv
         MuehKXP9RnJPnl1m3i9uTW6SO1CnTGABUS296cqqKA7YgyVoQ62oMQcRodjYo2ATiaUx
         Zrsw==
X-Gm-Message-State: AOAM531Msqxjtv4SzFTLiGw/yOpq0TRdV/7UoK20qwJNmbJVfvlMHLqJ
        ZhpRbeZM1bqCNxH2atUq5c1rpRhqsNw=
X-Google-Smtp-Source: ABdhPJxqAFU9d9qG0B2IeCGOTGsnjaqirHnR+hmZdY7Fok6nHXNjd8zVRcxq89X/7K/8CQUFnp9PAQ==
X-Received: by 2002:a2e:850b:: with SMTP id j11mr4605072lji.30.1594801011614;
        Wed, 15 Jul 2020 01:16:51 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:42dd:3c8c:7d45:c199:bbef:e36? ([2a00:1fa0:42dd:3c8c:7d45:c199:bbef:e36])
        by smtp.gmail.com with ESMTPSA id w24sm338403lfl.17.2020.07.15.01.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:16:50 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] dt-bindings: arm: renesas: Document beacon-rzg2m
To:     Adam Ford <aford173@gmail.com>, linux-renesas-soc@vger.kernel.org
Cc:     aford@beaconembedded.com,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20200714123419.3390-1-aford173@gmail.com>
 <20200714123419.3390-2-aford173@gmail.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <c2e52f87-b2cf-ca36-7780-5e206f065d40@cogentembedded.com>
Date:   Wed, 15 Jul 2020 11:16:43 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200714123419.3390-2-aford173@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 14.07.2020 15:34, Adam Ford wrote:

> Beacon EmbeddedWorks in introducing a development kit based on the

    s/in/is/?

> Renesas RZ/G2M platform.  This patch adds the entry to the bindings
> list.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:	New to series
> 
> diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml b/Documentation/devicetree/bindings/arm/renesas.yaml
> index d8fd25bccbf5..0d4dabb4a164 100644
> --- a/Documentation/devicetree/bindings/arm/renesas.yaml
> +++ b/Documentation/devicetree/bindings/arm/renesas.yaml
> @@ -118,6 +118,7 @@ properties:
>           items:
>             - enum:
>                 - hoperun,hihope-rzg2m # HopeRun HiHope RZ/G2M platform
> +              - beacon,beacon-rzg2m # Beacon EmbeddedWorks RZ/G2M Kit

    Why the vendor-prefixes.yaml file calls it Compass Electronics Group?

[...]

MBR, Sergei
