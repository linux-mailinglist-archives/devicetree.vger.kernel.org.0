Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBFCE2B48
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2019 09:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407152AbfJXHpK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Oct 2019 03:45:10 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34121 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407146AbfJXHpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Oct 2019 03:45:10 -0400
Received: by mail-wr1-f67.google.com with SMTP id t16so19717556wrr.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2019 00:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=8MK2RiHGp9pfjrS4QwXeKc1hTbmxkxbMcmyOE1JRjPo=;
        b=BS4uHZj02H9pHROzkNytyfGEeihxtX3ez8mKCnBn1j0Nwm7cdKvjQx3zCwpnFPYQCh
         uDhK5AxafL4DhOSthXh482PXDCYOzesxOibOlgdHGRGC7an+353zMO8CwjKXOz4y4KqL
         YjyHUzuHhxMl4CmS+z3OT1O9nSXOVSNeBBWbHJVbDBtZ8TgKAc3q9LZgLmvhH/yH2+WJ
         Y3Df7LCFlmT/9tgP536xkEbGu/8t6d6hDiatl3cZCJH1NQVykAR8HvEE5c2MIBuHQ4bH
         s0CAK/QHX39U9muY1Zzg7SRnECp7J7KFyf7WxY9yrq8J6zHtsH5tJsl2/KD6InNdRv+Q
         02Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=8MK2RiHGp9pfjrS4QwXeKc1hTbmxkxbMcmyOE1JRjPo=;
        b=SJzwgtEB7KQm0FkQhTrJICt5+vt5+WuJpoe/cqkZk27uPqtVNAFHO+jh8z//i8DiY5
         c0KnNdRZ1LPYP513VSlPFjbGpeBdQC/cT1Yit3wjG7dzcJCERcCWH2hAE1quplBDRqrB
         6LXWHVBwGEYyOvR1Irzxgr/IKdlr8GhOYfAMNw+xXN7Ej0wJR+MiC3v9mMSj2f+GUfRo
         Y/R5Rxur+znFH9lCEJ3y6aTndhYyY5vsHQ37ae4ULTi9Ma/ODuGvbF2oT97FBMax/NKx
         P7pjavj75bx0rWh7/a3pACd5vKODGAWBHXLnwRKNFhKJWkomoMhwIOjIahr8b7Q9Jzbq
         4Ciw==
X-Gm-Message-State: APjAAAW3i+smTMP7lD1OBa/x4rpwdgvjJjoDpbFNqbErV6qd5L9LW9hn
        y/gm8lZ8O3u74JvPaueF/GyCv42dmm0=
X-Google-Smtp-Source: APXvYqyEr3q0Nm2hhAwoaokgMxptO8L61VsET/ldJA9eV2a+9od8LMt+6olKH8GD8q4y6CF45PZ9VQ==
X-Received: by 2002:adf:e64f:: with SMTP id b15mr2329545wrn.372.1571903108303;
        Thu, 24 Oct 2019 00:45:08 -0700 (PDT)
Received: from dell ([95.149.164.99])
        by smtp.gmail.com with ESMTPSA id x8sm24352249wrr.43.2019.10.24.00.45.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Oct 2019 00:45:07 -0700 (PDT)
Date:   Thu, 24 Oct 2019 08:45:06 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        patches@opensource.cirrus.com
Subject: Re: [PATCH RESEND v4 1/3] mfd: wm8998: Remove some unused registers
Message-ID: <20191024074506.GE15843@dell>
References: <20191021135813.13571-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191021135813.13571-1-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Oct 2019, Charles Keepax wrote:

> Save a few bytes by removing some registers from the driver that are not
> currently used and not intended to be used at any point in the future.
> 
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
>  drivers/mfd/wm8998-tables.c           | 12 ------------
>  include/linux/mfd/arizona/registers.h |  7 -------
>  2 files changed, 19 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
