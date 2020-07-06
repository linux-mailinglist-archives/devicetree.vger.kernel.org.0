Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E797B215B49
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2020 17:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729449AbgGFP4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jul 2020 11:56:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729348AbgGFP4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jul 2020 11:56:10 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FA13C061794
        for <devicetree@vger.kernel.org>; Mon,  6 Jul 2020 08:56:10 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id w2so17773228pgg.10
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2020 08:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pVmdFcPnDIN4VmYOV1khBeXkMu+a6j7sOe2sgMGHfsU=;
        b=TO55GR5G2jDWam4n1xIVmo92hKZldcYsVJfkPHpZ0r3rpphNQip1UwI85GwNw4yLMI
         tqKVbaIJx8/wxKOjPQUzD7ckrhaz4ZwuYLpWjF9QpBE+SpgHU0l9lSgbSQJOYnxB40r0
         9EQ0zQonk/g9xidXOeU/ZhbkWCEnt9EysCyko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pVmdFcPnDIN4VmYOV1khBeXkMu+a6j7sOe2sgMGHfsU=;
        b=Tg4Ld6SkByNyy48JOfcrcqXan//RsoJOmilt09E4ZPNA53WMrYiBBHAot+zE4Aoq7X
         amYPYv/2YNF6ib6OBoMb9I+HkAzAM+dUW09jkZgG5uIP2qjPTxHZdCLuFXTRcZTwNVEr
         bVl6gOtoILGwOySixMU/eoxTrDDIkLyF9nhrKrbXP/D9fnp9ZEsNlATuTsx/amRt+weQ
         ASlnco6ZltXRzJ2Ha8zvtolPQH/epWT42Rj80t2b9oEE4wSbvUcj3OIwOrhWCGBKspxB
         rA3S4eteT+c9BLXmj9K2rPgIHVCEUYWukUryfd42XgbB8B3vBn+Gh+pwfvqRV1I+Pl64
         e+yg==
X-Gm-Message-State: AOAM533wuRdagKWr9nw7NxlwAUnL3hVquZwy5DPdJeQVQCNk+CYrUG+i
        R0BnWy8nNLAfqefxIMnJGMjkcQ==
X-Google-Smtp-Source: ABdhPJyvHVpu4bXYVN+N+KScd3VX4nB79IkZJ5AQZJY2cTj7GHiR7QWpLWJVIgHkuOqC+Bxec777+w==
X-Received: by 2002:a62:2546:: with SMTP id l67mr5919215pfl.154.1594050970085;
        Mon, 06 Jul 2020 08:56:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id c23sm18976405pfo.32.2020.07.06.08.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 08:56:09 -0700 (PDT)
Date:   Mon, 6 Jul 2020 08:56:07 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, agross@kernel.org, broonie@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: sdm845: Add qspi opps and power-domains
Message-ID: <20200706155607.GE3191083@google.com>
References: <1593769293-6354-1-git-send-email-rnayak@codeaurora.org>
 <1593769293-6354-3-git-send-email-rnayak@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1593769293-6354-3-git-send-email-rnayak@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 03, 2020 at 03:11:32PM +0530, Rajendra Nayak wrote:
> Add the power domain supporting performance state and the corresponding
> OPP tables for the qspi device on sdm845
> 
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
