Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C781537A6DD
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 14:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231340AbhEKMjH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 08:39:07 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:51165 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231641AbhEKMjG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 08:39:06 -0400
Received: from mail-vs1-f69.google.com ([209.85.217.69])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lgReB-0002ku-7U
        for devicetree@vger.kernel.org; Tue, 11 May 2021 12:37:59 +0000
Received: by mail-vs1-f69.google.com with SMTP id q16-20020a67d7900000b0290228198e77b6so9592105vsj.23
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 05:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YhaXTvaayEOzoq0QjzmBPdXnRVsB0DBQyw7HOMA/2VM=;
        b=bAblJfRMqMbCbiS2zXhAsP6iPsYBzrwJynd99hiAZQAGAd4q7Oh63e+b/HXAC20/Of
         2qqphzE9ccfLEid5PhlPThPeCxdP37YetqGoT0ErTrMhTj7lCwmv7fdzlBqQPucMB30c
         emNBQqQ2mz1mhn1V5AppTREetXuSq2iYrk3y/R43ohwFfsP46ZCTx7IcVcSWFhu+PJRQ
         EWGNOTzXAAtxKWfUXYgzGl1tCgTU9N84zBhZRf+ZHMI6m8ScrEwo7xnOBOZjqQvARhmA
         7GzbSbmztZ3MWX1c3s6RinvSEolCz5P9qPiF48vjIYuWvhQiQ0o709yDZQM3stUuE3uO
         3SUA==
X-Gm-Message-State: AOAM530kbXw8Jfx+py5RqS5hvRcmzPlRxabYi/6+o2bW3DLkPWMF7vcs
        /4KrlzmcTBnTpSkdnRhko2ayeBxXLNB/j9I1zvFopQbpUeDY4n6Z1a2vaytqCOsGAaojqsJyLN4
        QamAKMHEPNgMECBHiqLGGTXjHfNK41lDNaNWFfGY=
X-Received: by 2002:ab0:596f:: with SMTP id o44mr25517829uad.8.1620736675842;
        Tue, 11 May 2021 05:37:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXNWN45OqkMAHJDZh/zGUfEUXLkG+LvL4VP0sEIb56QoNjxAOq9rxkqZYo4mO9Z+Y5kcvoUA==
X-Received: by 2002:ab0:596f:: with SMTP id o44mr25517783uad.8.1620736675545;
        Tue, 11 May 2021 05:37:55 -0700 (PDT)
Received: from localhost.localdomain ([45.237.48.2])
        by smtp.gmail.com with ESMTPSA id c69sm823434vke.48.2021.05.11.05.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 05:37:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: s5pv210: remove unused Atmel touchscreen properties in Goni
Date:   Tue, 11 May 2021 08:37:42 -0400
Message-Id: <162073661213.12308.11074899946393736120.b4-ty@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506152044.37579-1-krzysztof.kozlowski@canonical.com>
References: <20210506152044.37579-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 6 May 2021 11:20:44 -0400, Krzysztof Kozlowski wrote:
> The Atmel bindings and driver do not use custom properties like
> x/y-size, burst length, threshold and so on.  The driver gets necessary
> data from the device directly.  Remove unused properties to fix
> dtbs_check warning:
> 
>   arch/arm/boot/dts/s5pv210-goni.dt.yaml: touchscreen@4a:
>     'atmel,burst-length', 'atmel,orientation', 'atmel,threshold', 'atmel,x-line', 'atmel,x-size',
>     'atmel,y-line', 'atmel,y-size' do not match any of the regexes

Applied, thanks!

[1/1] ARM: dts: s5pv210: remove unused Atmel touchscreen properties in Goni
      commit: 8b7e0f72ef7123460b31fbe0652e1871603d2b70

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
