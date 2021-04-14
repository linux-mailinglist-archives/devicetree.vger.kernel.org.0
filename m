Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9955535F470
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 15:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345898AbhDNNCC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 09:02:02 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:36406 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346952AbhDNNCA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 09:02:00 -0400
Received: from mail-ej1-f69.google.com ([209.85.218.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lWf9F-0001Fn-Jt
        for devicetree@vger.kernel.org; Wed, 14 Apr 2021 13:01:37 +0000
Received: by mail-ej1-f69.google.com with SMTP id p13so378827ejf.18
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 06:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q4rX3IUnG7PDVdoG/GXhqgIqrINra94M/50DgG0u7YQ=;
        b=OV7FSBaRUXIZ4tn3ZJShZbwBArZWQro3WO+tB9f1N73J4FOhv36WjCEdKC/tqWHy+W
         N3yMJqzPKA0AelJH0eAmSMQmtQKACQv+AsUw5CbjmSJUcCBQsUJ5vUEIzqcnAl+zSnQ/
         iSLK3JAV3AMMa9ctB5vgQTmvIn8JUYX0fBSGJ3rxFn2Ost/1O7KFI0id4d2NvaeCdgGk
         D2kLspL4gp0G8DjhnkYy+0TLFVkVjDlWYTJaVWedHeVgLH8lGCN+P3IEyOB0n+IJYh6E
         ZQxzfYAc0KaR/N28QRfEgVYooxqHya7d73h+TyEBr+bIFrqLCR6r0PSu0B1ib6D6zyBT
         MoLg==
X-Gm-Message-State: AOAM531nitWVz6ttOQEnY0i9FcCmQbsI4UoOLYU9Dh7N6sooj1yZ8vjV
        tSmgAgI6huPEjJY9Er7iJFKCkfq5iuOHahN+44gXl/q1/x9Non1wgzx9GbY4dVIrk+gWajlLaLA
        W89KTAnD9z4IQMKWL5RFYsEEaMF/hy428BQyv3+w=
X-Received: by 2002:a50:fe01:: with SMTP id f1mr5610410edt.272.1618405297241;
        Wed, 14 Apr 2021 06:01:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxc0DBAbMPqZcpnFL7rzAUquSu6gHeyD4yLbpaF9ZYIdFiPctrgkIFDO++3hadTl04rEq6ylg==
X-Received: by 2002:a50:fe01:: with SMTP id f1mr5610367edt.272.1618405297033;
        Wed, 14 Apr 2021 06:01:37 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id gs20sm1106742ejc.83.2021.04.14.06.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:01:36 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] dt-bindings: add dasheng vendor prefix
To:     dillon.minfei@gmail.com, robh+dt@kernel.org, shawnguo@kernel.org,
        krzk@kernel.org, linux@rempel-privat.de, s.riedmueller@phytec.de,
        matthias.schiffer@ew.tq-group.com, leoyang.li@nxp.com,
        arnd@arndb.de, olof@lixom.net, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com,
        prabhakar.csengg@gmail.com, mchehab@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        linux-media@vger.kernel.org
References: <1618383117-17179-1-git-send-email-dillon.minfei@gmail.com>
 <1618383117-17179-5-git-send-email-dillon.minfei@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <9f8f3d55-b3f3-54d6-9143-5d676a21c901@canonical.com>
Date:   Wed, 14 Apr 2021 15:01:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1618383117-17179-5-git-send-email-dillon.minfei@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2021 08:51, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Add vendor prefix for DaSheng, Inc.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
> v2: new add
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

This should be the first patch in the series.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
