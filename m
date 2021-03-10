Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF1233389A
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 10:22:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbhCJJVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 04:21:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232460AbhCJJVq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 04:21:46 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79A95C061763
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 01:21:45 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id j2so22439919wrx.9
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 01:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=1dMDsRJi6X7RFDQQQ96QgnONRBTG+sEDdR1IWXfZlxI=;
        b=W+DJoNj9bBYATgZUAqeGOcJC+D6Hm0fUTfpOX/nfrQorUYX0n4GMgTKiGPm9maOEGo
         jJEbPk9YxrksTMIUWEKLTMMPZUE3K3JD1uzy2/YgERbc+DtReqEclprcHzcXbUZkCtgK
         dofcYGgRLjspqQ02wswCtKFFlcgHYCG7pI64jxsoFj6wjEdDKRS1gt8ucvtPMr1+wiXH
         V/ZWINFeo54CPqxA/rG5FASsH7SuIr/xMoPbF+VsDdIRqKv/UxlwLwcteDBdVTSJWc0O
         mMDifDG6brOm+PToPYN85FgTl6AZyRU9xfUh9opj8fWJz2+IRQ0JWOsQc08QN5F0mrcp
         5KcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=1dMDsRJi6X7RFDQQQ96QgnONRBTG+sEDdR1IWXfZlxI=;
        b=RC9egkCu44Ewlcy7avR+mPszPH6W188YTD3w8bMUNfM3XEU6WimY0ZobYTQewvVZoz
         FGDTxu91jdQDUBv2cLyY8h+RLfk14DE2xOK9IWp4QRtkQ2wPk/iiQ4tlsPSzv8deA5lv
         9vBC1fcxgo94P51+Xv3ffC3qWaLeturmobPr3B/nmumdoIut/zneD6vdOWEmGFFYkc8L
         u9uk0ejE1VGY6/KGWtlf6JkNYfuGlpa/KTaDNS+yIOejNZBc3klF0Cm5O6Y+Jy85i0xn
         z/e0yv/fUJN0YwR/IIda4WYxZrl6Qhs9s5P9w9sCydCrwF+/TJ9p+FNOzpbkUsknR+VR
         i2TQ==
X-Gm-Message-State: AOAM531SEz9ILI0gmr0QFLsswGxqxwU6V2JzWCTo5ytO7u9uqNcV4utL
        UCUxLBsElrBwSUZ6NU85bS5fgA==
X-Google-Smtp-Source: ABdhPJxuPtNe3ElR6uJROL0vscwDtpq5CtKpwKbdJ63dZObdhgzH/OA+daBodljwBXleRgt+pFfpUg==
X-Received: by 2002:a5d:4485:: with SMTP id j5mr2393819wrq.339.1615368104145;
        Wed, 10 Mar 2021 01:21:44 -0800 (PST)
Received: from dell ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id a131sm8233043wmc.48.2021.03.10.01.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 01:21:43 -0800 (PST)
Date:   Wed, 10 Mar 2021 09:21:41 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: leds: backlight: qcom-wled: Add PMI8994
 compatible
Message-ID: <20210310092141.GO4931@dell>
References: <20210228124106.135812-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210228124106.135812-1-konrad.dybcio@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 28 Feb 2021, Konrad Dybcio wrote:

> Document the newly added PMI8994 compatible.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
