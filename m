Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0C7436085
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 13:45:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbhJULrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 07:47:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230376AbhJULrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 07:47:15 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090FAC06174E
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 04:45:00 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id o20so378126wro.3
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 04:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=dteX7Udky210C1uJN9TZjZHJ0r1DpwiGQbtPMzNRXJI=;
        b=ouHEQbp00GcbkGEog7GOACdoNBTBcPaIhjoIQDg2CFd7YUfb1hRI739fvXSwWgIGJv
         dBC/m7+bYDz3oaZXBHev59I1pTKvAP32THapLE2XlJ01vuMRVTezMqtD2kZae+VJOfHm
         HQ9vuDP7/gT7/eNwd32XfINF8qcEAYl0PbbMEeJnAV1afIjRsBv8/EOF9DW/IvFXrKb/
         cyYO/UJHs4q18vH2X1OR9jD39J1099HGiOrLGGCzFFG1tJMPk9bdNZhdGxQXRVptfB0W
         DOt4QPvJ9fQSLHX3Z71NKFQJweeJ0RlbCwAi60jXncutDfC7HtpjXM+yAm2Ox3GIqHzG
         jjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dteX7Udky210C1uJN9TZjZHJ0r1DpwiGQbtPMzNRXJI=;
        b=WUngxgPc/ORHFHEyVmr3z+TzG4LFMVxdH5wd2EBCvbV17ItXb10+3s8XKaBytR6bb8
         WxY49ldrTNTxkGO5UE1u9EuoFcJqZu/lRNpC4q06ThFrmpDVB2v/wBFV1VyMSAaX9PM9
         arc7m3yzqls4qybRLVPBs/Qjip2PaKPT4I5cTo0SFqNy6DmLFMS/XcNwn36utq1vE8XR
         PzdvP0NOq9Q3sBNvCYKbAww2raCiXMutpFhv+oohMQinpTTuYT3TprrGYxSYZ7Mf2xdu
         aqWi3ir1ferqje2mzzgrQ6mtVimzHvRD2wQAHPQxtofUQN9qzcs4uZsnO9mPL5JnZm1i
         NELw==
X-Gm-Message-State: AOAM533s26JgXE6I6+wlwsIYV4z6APagm4Tbn+eKgPu1TzdX6hGKZGKY
        A+5whokbGkjyAKnUEF6Nfuc1zg==
X-Google-Smtp-Source: ABdhPJzEmsyL41Fb+BLSvJL3qnQZ80pF/anNTRh79zW7EWX9wEXCCHnm0e+1qquyUTiy2JcDm3ZEzw==
X-Received: by 2002:a5d:47c6:: with SMTP id o6mr6713093wrc.416.1634816698668;
        Thu, 21 Oct 2021 04:44:58 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id j1sm5321059wrd.28.2021.10.21.04.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 04:44:58 -0700 (PDT)
Date:   Thu, 21 Oct 2021 12:44:56 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] mfd: qcom-spmi-pmic: Sort compatibles in the
 driver
Message-ID: <YXFSuIaiVgPMj7FJ@google.com>
References: <20211017161218.2378176-1-bjorn.andersson@linaro.org>
 <20211017161218.2378176-2-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211017161218.2378176-2-bjorn.andersson@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Oct 2021, Bjorn Andersson wrote:

> Sort the compatibles in the driver, to make it easier to validate that
> the DT binding and driver are in sync.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v1:
> - New patch
> 
>  drivers/mfd/qcom-spmi-pmic.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
