Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B92F2A2C19
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 14:52:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726061AbgKBNvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 08:51:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbgKBNvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 08:51:35 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7CFCC061A04
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 05:51:34 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id n18so14683603wrs.5
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 05:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RRGtZ+ldHh215Tg4pikME8cERQKkPWSxRhHrWuaGqTM=;
        b=j4jcRG9GIsPic5QtNLfiguS60+zJTyfEFr+iiKo8yHMrJBgguaatXO3I913opTRfce
         9YRmMYfQ8jKRXmyz/Q9otp80BG++sA6sl5m8QVGjcqWUy/097KN48z7bSIItlCvcW38w
         jd/WnLJG8LVKDBFvN91IVitrEij7qzS+sUhVLWA938/10lu9t34EjoiklA93Wh6/2dj0
         xgvtZQrB6o8lzcv/bfSLrEXJXh3MFmaJ62kxek0Tu70k8OW0CQnZck6tN85TCA5ljZym
         aJBwlrwGWB4tizGNjl5+v61ywkvy8XPTtdloZAV5N3uqlTm3BxXAPkjt9uLAfn3Ggf9L
         nP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RRGtZ+ldHh215Tg4pikME8cERQKkPWSxRhHrWuaGqTM=;
        b=Es5eXboa6IUaYiJ8R51BN6m4df2wEUJ13fzWTM1POD16ZldoD6Lfq1H6R6Frxy8QLH
         R5qlYNBsQOf9xju/t0V+fceaYKnHgsMlSPV65gikq9JlIpgu/zC3RSAE6IgJALDE9c8k
         DOMA7GocRtXILOt4tix1Svxy8L5XR7qHz8DIUrrw+TADIJ+fZN92NPxVYblGtws3tFZ1
         nsrou9R20etnk9yB9n9lA2g457BXwOTvKVmCTLUQKLLrvqgIG2qUklo5PHE3ZcasEKfI
         BW6YcGhbHKMhfUiM5SoSG+C2PjlyP0TMFtCrlbHq+CSqd9UlPN1yRpFKk/pGIk+ROSb0
         z54A==
X-Gm-Message-State: AOAM530zhdIGR5gVVpfc00zGPCGAGTziElO3Gt6GE/czsW9/Zo4fpGJj
        A6GNftcwI/XX90J/LvXwAEcgYVIGLIPhPTuc
X-Google-Smtp-Source: ABdhPJybi5bHjDdIxQjPD1+62vLcJE+5DYmEix/kJMd5ZE6D7rqwTgjS1pA0lsKK+itNnlXT3/cVEg==
X-Received: by 2002:a5d:55c8:: with SMTP id i8mr19869994wrw.194.1604325093403;
        Mon, 02 Nov 2020 05:51:33 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id y187sm3744456wmg.33.2020.11.02.05.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 05:51:32 -0800 (PST)
Date:   Mon, 2 Nov 2020 13:51:29 +0000
From:   Quentin Perret <qperret@google.com>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        amitk@kernel.org, corbet@lwn.net, daniel.lezcano@linaro.org,
        Dietmar.Eggemann@arm.com, morten.rasmussen@arm.com,
        dianders@chromium.org, mka@chromium.org, rnayak@codeaurora.org,
        rafael@kernel.org, sudeep.holla@arm.com, viresh.kumar@linaro.org,
        sboyd@kernel.org, nm@ti.com
Subject: Re: [PATCH v3 4/4] docs: power: Update Energy Model with new flag
 indicating power scale
Message-ID: <20201102135129.GD2221764@google.com>
References: <20201019140601.3047-1-lukasz.luba@arm.com>
 <20201019140601.3047-5-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019140601.3047-5-lukasz.luba@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 19 Oct 2020 at 15:06:01 (+0100), Lukasz Luba wrote:
> Update description and meaning of a new flag, which indicates the type of
> power scale used for a registered Energy Model (EM) device.

Reviewed-by: Quentin Perret <qperret@google.com>

> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Thanks,
Quentin
