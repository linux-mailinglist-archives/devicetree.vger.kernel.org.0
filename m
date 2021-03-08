Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7531D331A08
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 23:12:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbhCHWLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 17:11:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230156AbhCHWLj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 17:11:39 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F52FC06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 14:11:39 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so3974794pjb.2
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 14:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3oGzw5IpYWbiE38gt/cAO9LY4lwfge+s3sY1Ctn/eRU=;
        b=Qsjxz4cE8hZTZQJPjzapsyDPlCwuIDWTlEywlk+0Fby6HI5v/+3EZPmn/IdWMXI6hl
         SZD9ALgDvjWp9YHrYr2wcBU0/LDxSu4xGwdkfnFuc4qF+hxsawl/JpbdGvOcu35RQpII
         P6GDQ2QIfT0RZUV/EAlLkrkkh0afIR5BioZRwIZYMZCbpUo2og4WENTmQadqRiacQQFv
         o7VKfLsCzeIMtE9TobPxm0PLtURNMwifnhP2GrtinTeHlsxIfzdyaE6+4Q4gRUor7VDT
         GXE+OyuRptKtZaNFQZ9+sUrKAiecU3qpHBFrNiYipQC5Ftg2c5BNm8tMUb6PxyZqMIAU
         GdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3oGzw5IpYWbiE38gt/cAO9LY4lwfge+s3sY1Ctn/eRU=;
        b=nPGAe6VItAkrhxDH0OnT1e72r5IVB9xanFJCzvpOuIbb0i53xXAGBR0TKBfKVZU4sl
         iUD6Du/SR+dGuWarkYzQY1eDt5twMrX7Ub1/DxNTOKOk27Z7imidkgvIdVBpv/lW0vwj
         FxVkhu31bac+AUXiUq57JSrCUjNUE/iZN+xpQdLxGgMvN3DBg/ewQGSGIfrQNudXikKf
         tWq92odwg1pZf3JhK7jMJDOKcQExLB1DLlccLIt8VGo0PvzKbXONVm9t0JuNvixxP5/u
         2u3yIaLEz8v7uCf1IvmZeK03TDCMv+FldRnZBJLbCmAPvsf2IxQwzhOC7DUV7snaA07Q
         yaDg==
X-Gm-Message-State: AOAM531mlXwrDhZoPyRV/wjVqoB4oqbDAAYzhIZJxh7m/yo/cwmin3AF
        zn43GJzlQAuD9lf5kT4PLSk=
X-Google-Smtp-Source: ABdhPJxiYzHwTmE4kbU60f4VGK+dYczPQ4/LqWTmqIzgVBrPV29jeKuQ2bsJdoYZ2tyOgPah7ayvAw==
X-Received: by 2002:a17:902:34a:b029:e4:8b7f:14b8 with SMTP id 68-20020a170902034ab02900e48b7f14b8mr23068995pld.29.1615241499004;
        Mon, 08 Mar 2021 14:11:39 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id u129sm11315581pfu.219.2021.03.08.14.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 14:11:38 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 1/5] arm64: dts: broadcom: bcm4908: describe USB PHY
Date:   Mon,  8 Mar 2021 14:11:37 -0800
Message-Id: <20210308221137.394336-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210219055030.3997-1-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Feb 2021 06:50:26 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 uses slightly modified STB family USB PHY. It handles OHCI/EHCI
> and XHCI. It requires powering up using the PMB.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
