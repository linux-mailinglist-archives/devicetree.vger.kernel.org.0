Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B73C2E882E
	for <lists+devicetree@lfdr.de>; Sat,  2 Jan 2021 19:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726619AbhABSEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jan 2021 13:04:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726567AbhABSEm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jan 2021 13:04:42 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5EA2C0613C1
        for <devicetree@vger.kernel.org>; Sat,  2 Jan 2021 10:04:01 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id r3so26872157wrt.2
        for <devicetree@vger.kernel.org>; Sat, 02 Jan 2021 10:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jamieiles-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PWNWWtqjXuhRBofwhd880gtdlxvyGF0Fap+WwqM+hHI=;
        b=eLkwmntFIPeqPFQewS/PKJ6gDMz4HGYh3W6ZYAGXhokmV6sf5ibtMWI5E+2XB+4idI
         uNCCrtDY6C/B8YgiUE/W5pBcfP8N+NIugHE2bpXA6L4YU4RLE+YeF9bfrFH++ywUHreB
         bL44ihJrCPs3Tdmt9c2y0bn+0+kCQ8qz13085qwaN6P2rua1wopu+dK7zcEf/Ybny58R
         oXD962oNTItAx9o+gO++axdhJ9NL3MukKK84laW+nctEdWIW47S5+rTJ4Wpy0A2RdMTq
         f3S2Y7vnDpWljJltpWBs8tekICKFtP5hfYhgqmfjdpjGM6AZrom3HkWnD5HyRkC7mhA0
         eE+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PWNWWtqjXuhRBofwhd880gtdlxvyGF0Fap+WwqM+hHI=;
        b=p6Rx9PkNWTrI1wvV3kePfuDGhJJ8NXM4CrN5JqBkzb32LWdJbUV3xdU46OOOGNv9od
         wa6n4rOMbfgO4jPQXi5SuRDzonfqaGktxyui0b+CqjBFpJ8Awm/gvcbBFYMDUs7ih5ir
         HlhYLGB/WqQo9LQIlFlD0TedzZ8gmoR0X/74qsaWUYIJhxr2x4RWA4uUy0cGM8r9DAGZ
         TLyDV49coLW1bFhODN7pmQykDF4I1jPFN5EyLz2N+O1MznkxEm2YpsZJIjQB1grUYMof
         BESQuJkZMJRSkQ0yHsODwpQ6CRq+fKOf2DYEEPSa5//UWkXrc0u5VQ1zIvzw8YSopmOT
         gFFA==
X-Gm-Message-State: AOAM533r2L2eR6MZEvkb7h1jsQO393B/KZU5PPRX4c2opAjyboNsmug7
        u77e8i33Rl42gemaP+F/iuYa/A==
X-Google-Smtp-Source: ABdhPJwRL5VBumv1xxr0bh6v+UMGz68EkeaPJuNuO19pyYUeH9obAVZlMtLxE2oY/yePO+FrdyRXsQ==
X-Received: by 2002:a5d:6909:: with SMTP id t9mr71553849wru.327.1609610640397;
        Sat, 02 Jan 2021 10:04:00 -0800 (PST)
Received: from localhost ([82.44.17.50])
        by smtp.gmail.com with ESMTPSA id b7sm75991272wrv.47.2021.01.02.10.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jan 2021 10:03:59 -0800 (PST)
Date:   Sat, 2 Jan 2021 18:03:58 +0000
From:   Jamie Iles <jamie@jamieiles.com>
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     Jamie Iles <jamie@jamieiles.com>, Rob Herring <robh+dt@kernel.org>,
        soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: picoxcell: fix missing interrupt-parent properties
Message-ID: <20210102180358.GA4063852@willow>
References: <20201230152010.3914962-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201230152010.3914962-1-arnd@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 30, 2020 at 04:20:05PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> dtc points out that the interrupts for some devices are not parsable:
> 
> picoxcell-pc3x2.dtsi:45.19-49.5: Warning (interrupts_property): /paxi/gem@30000: Missing interrupt-parent
> picoxcell-pc3x2.dtsi:51.21-55.5: Warning (interrupts_property): /paxi/dmac@40000: Missing interrupt-parent
> picoxcell-pc3x2.dtsi:57.21-61.5: Warning (interrupts_property): /paxi/dmac@50000: Missing interrupt-parent
> picoxcell-pc3x2.dtsi:233.21-237.5: Warning (interrupts_property): /rwid-axi/axi2pico@c0000000: Missing interrupt-parent
> 
> There are two VIC instances, so it's not clear which one needs to be
> used. I found the BSP sources that reference VIC0, so use that:
> 
> https://github.com/r1mikey/meta-picoxcell/blob/master/recipes-kernel/linux/linux-picochip-3.0/0001-picoxcell-support-for-Picochip-picoXcell-SoC.patch
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Jamie Iles <jamie@jamieiles.com>

Thanks Arnd!

Jamie
