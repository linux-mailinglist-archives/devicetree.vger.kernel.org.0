Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF5B3384B2
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 05:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232167AbhCLEcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 23:32:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232191AbhCLEcu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 23:32:50 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE739C061762
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 20:32:50 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id d8so11315081plg.10
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 20:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1mFHOVeuKCRMrc3iU8woR04+cjQl/74sfn0DRBxt+Jo=;
        b=Pysh2zVl+Q9zYfusN+dqFzzXXDimiy8Nolsqh8uvtJbTRDzkNhuX5t34QNWR0OfeKh
         aCz1d0X8LqsCw/oJ/SXAh0OcjfOqgnKamwjMhSKJIbTcPc//OhB+kz+IOg7DZXYjGOKo
         2verPsk4gpzYnInACFwutAY8/iDxkAsz1jPuwPi9GgyYqNPABVNvitqO0Noi5tR7Ayv6
         WRV5lPtaTTE8/1d7/aiPaRXyNaHTqUTcACDij1oa4i8JCFwYv/luUbbH/5GOn8g5FWk+
         lUimXFu8E3JPD5DQaogBSFy/WPRg7P5zU7wflVztnZ8AgHb8lgOTV02LcmCROGG4wYxE
         u+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1mFHOVeuKCRMrc3iU8woR04+cjQl/74sfn0DRBxt+Jo=;
        b=l8SXrf4TDLN0q2HR9IsCS7Qp2PtIeB6OVKJEUAapDR3VHtj7A3bAknYkZgqJPPpmNd
         WjJ8P0kbngRN6+mBHD59vXJCnVYNSJEe+bTwtAkHi4b57Hf00nAS0oPl+duo/xeAJR3l
         QNw7Xzewvn6hmyja2rzqbf+eHea2Ywa165mHukqM2i7tgNBVBIhPoidclWU8OVX3EDvw
         x2dJqR283QmmqaFfNWAC+HimH2EG8UBXvfUWbSIcmhiOTTjkhKgF2AmmUrbxP2Q3J44f
         ymFfYBEZlMVpfpbm9GOc1DOreKvNIz3srxq+0XV1tl/HZI6PKGuHZ3dKfotQdjYKdQQH
         ULNw==
X-Gm-Message-State: AOAM5333Sp1a5M8imaIWpQ8xKkAz9h9awWVbXQSXf1gmweNHZ8C6rDxg
        bcPKJBcXVqnKpEcyL2gXrMT4hw==
X-Google-Smtp-Source: ABdhPJyg94GzjtkfPAy8aTycEstHPyh1851Sz/1/XP/1sr0UYHfx8sVSUmyQ8lQ2sLYmdUqBz0pLMQ==
X-Received: by 2002:a17:90b:609:: with SMTP id gb9mr11971276pjb.209.1615523570318;
        Thu, 11 Mar 2021 20:32:50 -0800 (PST)
Received: from localhost ([122.171.124.15])
        by smtp.gmail.com with ESMTPSA id l19sm600580pjt.16.2021.03.11.20.32.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 20:32:49 -0800 (PST)
Date:   Fri, 12 Mar 2021 10:02:47 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Masahiro Yamada <masahiroy@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        Michal Simek <michal.simek@xilinx.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        anmar.oueja@linaro.org, Bill Mills <bill.mills@linaro.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V11 0/5] dt: Add fdtoverlay rule and statically build
 unittest
Message-ID: <20210312043247.o3i4xn4n6no3d6be@vireshk-i7>
References: <cover.1615354376.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1615354376.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10-03-21, 11:05, Viresh Kumar wrote:
> Hi,
> 
> This patchset adds a generic rule for applying overlays using fdtoverlay
> tool and then updates unittests to get built statically using the same.
> 
> V10->V11:
> - Update patch 4/5 to fix checkpatch warning on spaces and tabs.
> - Added Acked-by from Masahiro for patch 2/5.
> 
> 
> Rob Herring (1):
>   kbuild: Add generic rule to apply fdtoverlay
> 
> Viresh Kumar (4):
>   kbuild: Simplify builds with CONFIG_OF_ALL_DTBS
>   kbuild: Allow .dtso format for overlay source files
>   of: unittest: Create overlay_common.dtsi and testcases_common.dtsi
>   of: unittest: Statically apply overlays using fdtoverlay

Rob, can you please apply patch 1-2,4-5 from this series ? I will send
a new version of the patch 3/5 (related to .dtso) separately.

-- 
viresh
