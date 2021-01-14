Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 770182F61FE
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 14:31:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727255AbhANN2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 08:28:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727059AbhANN2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 08:28:51 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE8F0C061575
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 05:28:10 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d13so5738410wrc.13
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 05:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=dlcz7oRn2yaQTqvuHBDSXrktv8ILXcA2nR44UFm0ZcI=;
        b=rsh00TpiE4oLzBqWSh7ccwDvLeX0X61gVe+od40kGrmW6UG3ZLM8GGXAIqphpNhiRS
         8wTDbLz7QVdCu1p9Md642s7HT3LOMf9tkkKTrD9Sm5IX6RrnoT6/dR18nEO4+/glrsD6
         qJbx+woz5zMoB/gAFsxvHfVa79sb+V8H0wnuMiqyrzvaSrhoBfg6gXCPrFRPvW4124rc
         ZWDGdmFpZ1nMCnHJQzt2xSdfDUtNkT6Pa6ov+ivsq73tj5NUE/BIDz7+0jeVr1Dm7rwo
         yX28gukG73v9nAaQpTqdfsVgWuDpb1yw3gtrAqYZJPMkVBueQlwruB7kd4/QekKm8Akm
         jVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dlcz7oRn2yaQTqvuHBDSXrktv8ILXcA2nR44UFm0ZcI=;
        b=EMj5qmnejWMRTU4fbRg9zO5SsK+bY49a8evJ6NIAiwlznz3PKmqfjb0XW75Epz/RlP
         6YqBVy0efoizeraGrl5KQJNcOQEmlUZZ/1kM1kbhHp/TT22VwyLf51Z12oeu4+nNPLJC
         tt2FLPdUHN31oMXQGc2HlVz1Op5dN5FBixqwtUX8mFdA5TAx0/cJuah8dJMSghyYwsQF
         bH6MgjfHU0e//BpW5lBBflmA3b1EBTPbnfOQBaK/JgEITD/1T9YrYDpII3e+EGHagnFg
         +DP34qQfIkqYdhlDcQ6UIBOJdF14EMCXU4DTrsmQrCDvvOIm53vJeoGp/G+CxSXKUV1L
         yUmQ==
X-Gm-Message-State: AOAM5303hxwuABP5rPmXgFohc5PAHhDBLcOupOA9KLu49gBt+nbnPh0A
        +BkrP9o982W5TyrxxUriL1Ul0hyQ+piNtHUq
X-Google-Smtp-Source: ABdhPJxlj7+hO1id7PH/koLlxYaZ/bWvUGu5JPGMcwurs3OkFnOErAadchHhsBTj64KFJq5paFBVpQ==
X-Received: by 2002:adf:b343:: with SMTP id k3mr7844050wrd.202.1610630889619;
        Thu, 14 Jan 2021 05:28:09 -0800 (PST)
Received: from dell ([91.110.221.178])
        by smtp.gmail.com with ESMTPSA id b19sm8116213wmj.37.2021.01.14.05.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 05:28:09 -0800 (PST)
Date:   Thu, 14 Jan 2021 13:28:07 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: gateworks-gsc: Add fan-tach mode
Message-ID: <20210114132807.GW3975472@dell>
References: <1609183716-26529-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1609183716-26529-1-git-send-email-tharvey@gateworks.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Dec 2020, Tim Harvey wrote:

> In 7497d4a66c59 ("hwmon: (gsc-hwmon) add fan sensor") a mode
> was added to report RPM's from a fan tach input.
> 
> Add this mode to the dt-bindings for the Gateworks System Controller.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
