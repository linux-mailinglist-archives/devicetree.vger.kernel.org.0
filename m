Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80C7D42A2FA
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 13:17:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236137AbhJLLTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 07:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236161AbhJLLTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 07:19:15 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D794C061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 04:17:14 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id r7so65892811wrc.10
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 04:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=lL1m8ubOE4rJ9x4Cnwu+s3E9xFxm3dGNjo3CZSr7LdI=;
        b=snB8vHN4P3c/+1If++iQbj27PlHrmOwweXgC6HkVm3Yb8os74JgB8kB/1HbieZiyON
         UtO/6l3zjWtO/Btya7tN0aemUEsauX0+4hlrT2ByaBl3YZSeo2HJY3KF888KNmfbCNby
         2vTVEEZlnsQ1FAfa+qEivWj3wP7JT+XMl5e+4XIyStq/5TgI/yJay0TB7GS+G/dHhlwR
         whjPEHdrYS+UNu26JQkoKPmK6DCVf2Wae706XLa2gBYgt3Myjzec7/BSZYogmbAzJ/5A
         +hBMf16fY6lufyaOJYS06XbWz7ug4WK++sTYD+3hGQr1e9SrwPgiy9vjiqqKSPg8yFXl
         ZwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=lL1m8ubOE4rJ9x4Cnwu+s3E9xFxm3dGNjo3CZSr7LdI=;
        b=L6fWBrSMzwcIj3Rp2RbT9zJ+BVY4XqZq/6CdX19mhioTAcz5UhXpDXSNmJrJtOXjps
         sDSCkinNYXwGC3cuICLXlZll67qNjJn06PrQ+jNAxd+CWm9GmLe1KNB/O1/20wxZ+V8R
         SO0KhIIZZDG0eJpswc8IKLH93Sy2s6ajDOoqu9vsvRGUVAgoLv0hSzmrSlH2dU1qMvkV
         LilRwi6d6CZkmLkHtV1nvPRe8BoEa76txSUEVObizUUk165nfMdZOf+lGtPD9gEEcoc0
         qR4PFYPegMUrqelA6d6y/vrROtjej6yqp9BAQSpXR2ZF92bTaxzadkUzyLItNS29Td1s
         5W/g==
X-Gm-Message-State: AOAM533hrqhUU75KIO5XDEGxBD8KHQEO+L6BIhxUp/S9iyyDq7SFNW0N
        THyKydmIZ9mf3P9p+rAJAGcEiQ==
X-Google-Smtp-Source: ABdhPJwwgGCTLSD2FwWK23w/DgmWmq2KbPBQiBQLf7DRHtZSbPuxVoje3euWrasIyd3G8poK6PSQEw==
X-Received: by 2002:adf:a745:: with SMTP id e5mr30974809wrd.406.1634037432625;
        Tue, 12 Oct 2021 04:17:12 -0700 (PDT)
Received: from google.com ([95.148.6.175])
        by smtp.gmail.com with ESMTPSA id v10sm10955743wri.29.2021.10.12.04.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 04:17:11 -0700 (PDT)
Date:   Tue, 12 Oct 2021 12:17:10 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: syscon: Add rk3368 QoS register
 compatible
Message-ID: <YWVutkR1lHe7DEy9@google.com>
References: <20210925090405.2601792-1-heiko@sntech.de>
 <20210925090405.2601792-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210925090405.2601792-2-heiko@sntech.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 Sep 2021, Heiko Stuebner wrote:

> Document rk3368 compatible for QoS registers.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> changes in v2:
> - new patch
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
