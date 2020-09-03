Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C45225C7ED
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 19:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727786AbgICRRS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 13:17:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728417AbgICRRN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 13:17:13 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F624C061245
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 10:17:13 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id gl3so707690pjb.1
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 10:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GcJIsnK88IUx1B61WKTmTuAeYWhCDjmtS5xMB35oYuE=;
        b=Js5qc839Y3FzIgtCD/uRo28WTGpFwIfb5AdKWX1KKOcQ0E/wNUtydqYvw1ua1HrJJe
         LLYa70ILIUbMMUmVCbTViR36bE1UNUQRqdu3niQ87S3g+QXeEXHP2aHRhAAwtY94OElu
         jpPK5a15AKuMH994MGM7Z6MeT8IO9uvDHcXiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GcJIsnK88IUx1B61WKTmTuAeYWhCDjmtS5xMB35oYuE=;
        b=Jn1GzLCT5KPiZOg+bgMbcNzHAcAfpyXhsHMx+HOzeKvHnsLG4EBDJJ2yOwT8maRC9x
         J3qsI+KmGx4TheiflUuE4wmG5DKGMGrA0h80FHGfrs56ZuojmdepNmGzmXX1LUShrKEA
         8QF9kxen0sd2+ZLPBPuTn+vanH9Iax7IjELHFfSlUavMPEhro2JOKTevQ6mNe7VpVXFQ
         0AjfbTZghX3PfjOIkVAB4qbOwW7uw+V3oDDBk+82KuqytParcWpuNhAETAGJEyloGbLe
         eahclL5TDDs1xsd5wWuU0x9bG1S8a3MfPAZKCPeU6UvxnE+IEwtdTuYWknWI3KXFOjN9
         E/Vw==
X-Gm-Message-State: AOAM530LMty3YsrxvVje3Dms3fstHCnyf2kHL3uUU3pDV/Mnrjtf+pXg
        +8N6RlZL/RZ7NwD+gOsOJnnrYg==
X-Google-Smtp-Source: ABdhPJz/dLdww+y6pBg8VrryrAW1gmW1DFrBsiMS6fj9gYpavoVd6+ioxihfCfTza+UPEP3M2Pz8oQ==
X-Received: by 2002:a17:90a:5216:: with SMTP id v22mr4080085pjh.97.1599153432782;
        Thu, 03 Sep 2020 10:17:12 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id i11sm3309891pjg.50.2020.09.03.10.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 10:17:12 -0700 (PDT)
Date:   Thu, 3 Sep 2020 10:17:11 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        gregkh@linuxfoundation.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, akashast@codeaurora.org,
        rojay@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: [PATCH V4 1/4] arm64: dts: sc7180: Add wakeup support over UART
 RX
Message-ID: <20200903171711.GL3419728@google.com>
References: <1599145498-20707-1-git-send-email-skakit@codeaurora.org>
 <1599145498-20707-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1599145498-20707-2-git-send-email-skakit@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 03, 2020 at 08:34:55PM +0530, satya priya wrote:
> Add the necessary pinctrl and interrupts to make UART wakeup capable.
> 
> If QUP function is selected in sleep state, UART RTS/RFR is pulled high
> during suspend and BT SoC not able to send wakeup bytes. So, configure
> GPIO mode in sleep state to keep it low during suspend.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Akash Asthana <akashast@codeaurora.org>

One more doubt: does it actually make sense/is it safe to add the
sleep config for all UARTs in the SoC file? I wonder if there could
be undesired behavior (like noise on TX or RTS looking active to the
other side) without the corresponding pinconf in the board file. If
the pinconf is needed to avoid unexpected behavior then it is better
to change the muxing in the board file to have a sane default
configuration in the SoC .dtsi.

From a quick grep it seems that most SoCs don't specify a sleep config
for their UART pins and some boards add it in their DT.
