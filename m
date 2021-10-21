Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61EB4436123
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 14:13:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231497AbhJUMPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 08:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbhJUMPZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 08:15:25 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 406DDC06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 05:13:09 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id y16-20020a05600c17d000b0030db7a51ee2so7135607wmo.0
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 05:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=owYFM55aP56rDs5EWvgoXTHHvnZP3ih1QEcPV9bvrhs=;
        b=ldx+vWNYbkgie7M5aaF/195y7BkfcqHpNSlAHho9tOMXzsKxFshah8V9OjRxVzKvWA
         vBNn9W7oGV39i+NR9FsmME+88hdpmpKfRP3fq8qtf6BnhQ0zKN7ut5SmO9/ySmFY12r5
         yJyfaqbiwChqViLbch3/uWw2/vvHKxt/aoB1nVXjY4jD/Sj5fYvk8ne7nb6Ni/k9wolk
         EUkYZ9q1yArClmK9+RYdatWAP9JHUX3uZOgm6RybnLk4wacwgMGx9uHc7GoXmx7Nnh4m
         BMGGCvu2p7mP5iyhnOXOyI7TqtrbiNftNDIv5+n2GmAEoIoGzJr1/l5np5BkyoaL0yeg
         bE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=owYFM55aP56rDs5EWvgoXTHHvnZP3ih1QEcPV9bvrhs=;
        b=GaF1subDDnkTyf+pRjeCg0zsfakEqh5F6DKT+aOuJ55tOnBnb5KCyET1LfPaKQTwOW
         9mT49gnOrAWhW1cIXHbZxsULqfa/0s2iMjqGAFq9TT7K7RbB7DvJTBCd5cyrAAKxviXr
         e/xEp533DXfV8Reah7n/SferK3oJh32FOAf8i7hPsVkYBN92mpaAAofDKud000DNwVWB
         jdnn7pqdhuRVpKzX+fbmXQOcf1KWhIUELRRXURl68DrIUBowCdAk/G/aYKqpmaA3JTGv
         Lt0vvLP8a7VYkG1WMzQb1p/4+KgPQATJsbZV9JHijYRdJh9pDsXHEpmZuG2Dg2FnXoAj
         3wxQ==
X-Gm-Message-State: AOAM530lCnia5ojVUfk6xQtja4eqxkIrLfnfT4KRmiwrRRit8wXueaXB
        X10MK62+XJrqwgBu3h6j8a59/w==
X-Google-Smtp-Source: ABdhPJzL/H7g1S4PgfSqOGhhgqxYnCklysw/apV7GI7zZ1gsUA2IRIdf3lO7BsVrtf05AOuVQnsvIg==
X-Received: by 2002:a1c:f21a:: with SMTP id s26mr6253430wmc.117.1634818387845;
        Thu, 21 Oct 2021 05:13:07 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id k8sm7519770wms.41.2021.10.21.05.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 05:13:07 -0700 (PDT)
Date:   Thu, 21 Oct 2021 13:13:05 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <skakit@codeaurora.org>,
        ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: qcom: pm8xxx: add pm8018 compatible
Message-ID: <YXFZUcVFOg0uQRSv@google.com>
References: <20211020231646.278706-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211020231646.278706-1-david@ixit.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Oct 2021, David Heidelberg wrote:

> Add missing compatible for the PM8018 model.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
