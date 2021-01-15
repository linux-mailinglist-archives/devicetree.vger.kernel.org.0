Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 658CF2F7140
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 04:56:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731149AbhAODy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 22:54:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731142AbhAODyz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 22:54:55 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 083EFC0613CF
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 19:54:14 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id l207so8319067oib.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 19:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KilXjYXgOknxPMpyJrFa/IXBlfSwILUA268Eh87hM2k=;
        b=WY+GmoR5C4tCejAMKcYNEFtJsEPci4lS0os/Pow8I7WHHaodrxltpjg+M2ySQM65IQ
         M7VpFGKCO1Xe28pZJ07Ete7AF17vcyrm3Ok+UPmnojhT6uaVVtsW7fbjJ1xB3PLpxaeV
         8wtXq7T+tLM8GHD3LgzrRS5iiiKRVx76e7TWke2ex33YsoUdFsin2olon3DhKKMyj3ml
         BOSNepbAxIilUNQdMgP6vyqWl0IwZjCSlq7vU9EkbMDoB9xU2qUgmrhzICFcjBK1JBsi
         Gu5TFetNatiWUuIPYgHaHPr87UKI7QSNZH/e38/1WvahXSrYW6C8jktzmsRVN2JM5qbT
         9+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KilXjYXgOknxPMpyJrFa/IXBlfSwILUA268Eh87hM2k=;
        b=TFPeLI3qkvy2FfEGgpjBbpI9lh2Eyc27/gAPB4nDG7Nji8VFI4ozM8/eNpMP9vIdXY
         AdyDwBPcXUxUH4P0k3vEd/ac8fTpuP2WB71HMNhYLhcmhhrazzaNBjH7y0p6xOi49pfk
         c/9qvdHNO5HG6l6Pi5/+z8EQXisBRlwGb5SwCJX+8cYNP8LXpUjLDZ7rGIGpEKJvftAL
         7m2ucZ1AAMzJQ+EY3pkZB1haDlUQH0RY7meG04H//Ui4aDBvwZNUavSWhzt6WgxE31tu
         J/R5CpNbsZMzopJ45/fPvxPliGDAEblhf/nEf3/KbE2vqGWYh3EJqTXzr8risC+O7Q0L
         OVyg==
X-Gm-Message-State: AOAM531CnlrKfCW+/cYV6gahc6y+ctiniVqoW0IbXUyC/Ad9Az663oDe
        h8t0Cmyj2CmnWHbImVxma3cj+w==
X-Google-Smtp-Source: ABdhPJyCqlLx7gt3hFbyb3n/njPbfgC8H6Bn8X8UIe7UFehW4jaB7yn5kkxwPfNsyR42pmXmt1TN/w==
X-Received: by 2002:a05:6808:16:: with SMTP id u22mr4504901oic.1.1610682854286;
        Thu, 14 Jan 2021 19:54:14 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 73sm1546888otv.26.2021.01.14.19.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 19:54:13 -0800 (PST)
Date:   Thu, 14 Jan 2021 21:54:11 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Caleb Connolly <caleb@connolly.tech>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] arm64: dts: sdm845: add oneplus6/6t devices
Message-ID: <YAER4xpcq0Rn9UgD@builder.lan>
References: <20210114185227.25265-1-caleb@connolly.tech>
 <20210114185227.25265-2-caleb@connolly.tech>
 <17d49d19-7672-520c-12d3-c6ed8c12ae47@somainline.org>
 <4db0807e-c33e-5913-1818-1fc055e35acb@connolly.tech>
 <1b023774-d091-e7fd-8eaf-dedeff5feac2@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b023774-d091-e7fd-8eaf-dedeff5feac2@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 14 Jan 14:33 CST 2021, Konrad Dybcio wrote:

> 
> > The device definitely doesn't support USB3, although downstream does 
> > leave the USB3 phy enabled the hardware doesn't support it. So it made 
> > sense to disable it here.
> 
> 
> Sure.
> 
> 
> > OnePlus' bootloader doesn't seem to care about these values so I left 
> > them out for simplicity.
> 
> Sounds strange, but it's not the first time vendors surprise us.
> 

This particular requirement seems to be rather random. Some board loads
a single dtb without these properties, others require them even for the
single, appended, case.

Regards,
Bjorn
