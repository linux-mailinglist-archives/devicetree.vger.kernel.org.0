Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0924E397679
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234258AbhFAPZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:25:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234427AbhFAPZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:25:05 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B372C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:23:23 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n2so14832836wrm.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=b0fE9va94BFFWyKK2gT1+m7IkXiCmNVJvTnKGugaziM=;
        b=nBesCJM5z5vGOUPzSHaxUNMLY5OtxAoKwuVYXaBFUlmkCN1In1rJxBpdVZHj1vhYNr
         NF014iltRLnm9Su+sY0xZxemgiaLbri7+gJsSfReBNxhZGDYmjWeyg744+GEYoYwkrx/
         LjVGJhaf7ISP4WQD+5ULyoBKRdx7eEb4EjAEzHzWxQ/7m20usoxam/JC7a9fl2xrW/ko
         /AmN4le3coLM/slFg/Os48ry8fHWqLFspzT7UNQYACfRiglSWPd5BIzooDxeXosNRDBd
         MfWEFpVIz5K7wGrIXDv5iR4GJ8mTV2KzAN1Ksevr+KQtpdXvXub5FRpYrwB7Xfukywwd
         UcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=b0fE9va94BFFWyKK2gT1+m7IkXiCmNVJvTnKGugaziM=;
        b=pCL98X1jALVCfbucUwknpVJ7kaHUU2L/1WT9KGVVLTY7jweFJAQSFYrW4a1RGRyXtf
         v8goCreLRxmNaXiGDHYQrYlMd5yIAmDEMxAxvJGDrRcVgwchK8ddQriwH3J4TumTF4VZ
         koBazoIKtRP6b8XNmql/5sjyJap/EwNJc4Cga178g4FtnaSe1OWxM9kWc965P6sGli5l
         ywjcIrYHPbDx9xBrYNq+OCezDOM/w+3UIg+4AbzWry3JxUoSOGePNbL/FwOVr2dDa6lg
         hajXcI7VeFu1sILwdVyG2ITjO/KWanJ8SoMMf9nd7piEJyGjqfu5xJkq+wlg4MRooq4X
         KEjA==
X-Gm-Message-State: AOAM5311bZFbdzxg0OUn0bSKekUp+RB3uI9e4dQomkd1/t3TGCJh0bvA
        AX7NIGQZF7Q/8VbMTjkTwVDcJA==
X-Google-Smtp-Source: ABdhPJwtA40wuHMZqhRpn/lVKDHfaCv3GFb2/w0KOiHQu/85hR9XPnd7yNszSwQTX7vTnJHr7gwnzA==
X-Received: by 2002:a05:6000:11d2:: with SMTP id i18mr8476362wrx.421.1622561001908;
        Tue, 01 Jun 2021 08:23:21 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id r7sm2814572wmq.3.2021.06.01.08.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:23:21 -0700 (PDT)
Date:   Tue, 1 Jun 2021 16:23:19 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, mka@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V5 11/11] mfd: qcom-spmi-pmic: Add support for four
 variants
Message-ID: <20210601152319.GA2159518@dell>
References: <1621937466-1502-1-git-send-email-skakit@codeaurora.org>
 <1621937466-1502-12-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1621937466-1502-12-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 May 2021, satya priya wrote:

> Add support for pm8350c, pmk8350, pm7325 and pmr735a PMICS.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
> Changes in V5:
>  - Newly added in V5 to add documentation support for pmics of this series.
> 
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
