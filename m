Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9475D3907BE
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 19:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230306AbhEYRe2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 13:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233922AbhEYReK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 13:34:10 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57735C061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 10:32:37 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id v22so31037010oic.2
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 10:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xhyQbxQiIDbXKL8bcaq+cdxjGQpKczxyo6wQp2aZBcw=;
        b=CLTda6dWa1UGW9Rl6A2/5lV5NXjgFZw25Cr1ZVCzPihAvyRfrnFEObTQh2aHR7HBZ3
         3nlxjfjikttkpTelUrmu6eEiChgGt0c+wN40+C2WZb4CGmFIJNZ2psRcyxjPzoVjC2Yy
         3DuBQWzb+XsdAxE4eOXSrseDyNHqbL4GZ+rHbuk7BcSEBNfCTahR8HpFzjWkDWsGPeAr
         /1KzfAKd220GP0Z3+KLNP09L2Mz2exIcUvyHzEA8hy4xHtienNwAuA1xO5ZOIITp11FL
         yjhVrN1v9s10Hij9+QxKsKxjsOqZ8KyYbWKXOfOISI14X5rZ3V1BOPqiD+2MW7R0DdT3
         TJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xhyQbxQiIDbXKL8bcaq+cdxjGQpKczxyo6wQp2aZBcw=;
        b=SYTHAYgcc5bDQN+YOf9j9NZx6jToSWr87R/LNPVTb1WQN/Mv94EB9qf9pSBnr75iK3
         mlhRtIPj26oqG+TC87c71tw6CawX/eLa7R0hTl4VqqOFAh2yCIgqXITYG9HVrl+TSw97
         X1UFW4aR+RGj0cvZHrYSdVlN0eJcPCx70kaJH+4pjCHjkYgUF4vo8Xl5hYyR8fw3NOCo
         gbN+dGZZNx7/aV8FhYYApJ+y9m9DTJ4fM95R+jfAut2G8yi8e0CZSTJQwcCjuO/86PQC
         Z0a6hQr76kthV5jL8Xb/FTr+jSedSdv6w82PYi1LKow/TygXkfyYfe//YFmy6mNEOWJC
         BbUw==
X-Gm-Message-State: AOAM532Q1D85BLcCLeIQqZQ6OkxA/CPFr0QxUw5UgsFG3NsJnaDgKWBW
        VYmvx3J2/5+y5juVwUwz7Hqv+A==
X-Google-Smtp-Source: ABdhPJxqoozHJJ7wjj4F9r2dlkRutJ2w2JsSMNksb6X/yS+btuBXBvfHz7L+Q6xWYdVSOrT1Tt7ZPA==
X-Received: by 2002:aca:c64a:: with SMTP id w71mr3777569oif.44.1621963956700;
        Tue, 25 May 2021 10:32:36 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id k7sm3666171ood.36.2021.05.25.10.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 10:32:36 -0700 (PDT)
Date:   Tue, 25 May 2021 12:32:34 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Felipe Balbi <balbi@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Felipe Balbi <felipe.balbi@microsoft.com>
Subject: Re: [PATCH] arm64: dts: qcom: add initial device-tree for Microsoft
 Surface Duo
Message-ID: <YK00sn1fvCrtVQaJ@builder.lan>
References: <20210510120547.1315536-1-balbi@kernel.org>
 <20210511044312.GK2484@yoga>
 <87wns5g0c6.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wns5g0c6.fsf@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 11 May 03:07 CDT 2021, Felipe Balbi wrote:
> Bjorn Andersson <bjorn.andersson@linaro.org> writes:
> >> diff --git a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
[..]
> >> +&remoteproc_adsp {
> >> +	status = "okay";
> >> +	firmware-name = "qcom/sm8150/adsp.mdt";
> >
> > For platforms where we have a Dragonboard or similar we push the
> > test-signed firmware to qcom/<platform>/. I presume that the Duo
> > wouldn't run on the test-signed firmware.
> >
> > So I think it's better to make this qcom/sm8150/ms-duo/adsp.mdt...from
> > the start.
> 
> ms-duo would look odd. How about qcom/sm8150/microsoft/adsp.mdt?
> 

Sounds good to me.

I do prefer using the non-split firmware package though (i.e. .mbn), if
you don't have it you can repack the .mdt + .bNN files using

https://github.com/andersson/pil-squasher

Regards,
Bjorn
