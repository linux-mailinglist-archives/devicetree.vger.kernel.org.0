Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0335136EAC8
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 14:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233668AbhD2MrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 08:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233731AbhD2MrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 08:47:17 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56158C06138D
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 05:46:31 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id lr7so16404408pjb.2
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 05:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=lKZ23VCFKvQ6/HOWqxM0itn4uKSnl0X45UL4mdVA5Go=;
        b=D5CVSQtuJsCpJyyjaftW2XzPxBy5MXHYMRgNjfQDwY9QXVfrAfcdo9QCubnhmlILWG
         BDqoGSYRPlkC4YCLuZUhqUVsLom6f+2VmmRev8QqueILLXv0GVL26ZukWh5hRm0gfApH
         jejUdK+dpQP6Z+sJIfhTWD/EohSIvEMxcBWXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lKZ23VCFKvQ6/HOWqxM0itn4uKSnl0X45UL4mdVA5Go=;
        b=cOg0E85XGVKDrnIRBz6K5J9WopMEL+9kj1+q+lIpOoxbH7C1GByY7uakF+InEG+xKv
         wDtMq/JsUmYcMdaSf50GOirdGYVO/GPgmO6d5yF1U3lJYP+fRX484soxnu1PQEyzMsPc
         WE46VZUVTWcIO9kyvFCLklIEf9pxHCDRmFcFNfxlbHSMk1DrUwBUjzp1evo2oVpLfyat
         2VQoOENtBM1m1JFu8l3Zf6ABweaGL6m/5qb9R7smVBayzBcnb8080jjhli0jl+chX+A+
         I9tFkIW4IE+iOUWqa20REIoDRtZTU4R3DBU8JU+xCl6zZh6F+jINnqJwq8YTE5x4mg38
         hzBw==
X-Gm-Message-State: AOAM5331C+DbUW0q1Ac1EtUo88goFkrtYlX3PysOGwvE9b5ohaT0LRsk
        ldfAVUcyxDXGKA9F++3D6fdHvg==
X-Google-Smtp-Source: ABdhPJwZxlKLO2k//JvjEuPGXSJZ7VfquSt1xd1A1fTwDzseyQ/mWuetZvfMNzxY2mqjjBV8HfjXcg==
X-Received: by 2002:a17:903:185:b029:ed:10bf:6c8a with SMTP id z5-20020a1709030185b02900ed10bf6c8amr25315750plg.8.1619700390887;
        Thu, 29 Apr 2021 05:46:30 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:59f:ddfb:1a03:fe23])
        by smtp.gmail.com with UTF8SMTPSA id v2sm2242834pgs.19.2021.04.29.05.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 05:46:30 -0700 (PDT)
Date:   Thu, 29 Apr 2021 05:46:29 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add "google,senor" to the
 compatible
Message-ID: <YIqqpUK3wRiq6WT0@google.com>
References: <1619674827-26650-1-git-send-email-rnayak@codeaurora.org>
 <1619674827-26650-2-git-send-email-rnayak@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1619674827-26650-2-git-send-email-rnayak@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 29, 2021 at 11:10:27AM +0530, Rajendra Nayak wrote:
> The sc7280 IDP board is also called senor in the Chrome OS builds.
> Add the "google,senor" compatible so coreboot/depthcharge knows what
> device tree blob to pick
> 
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
