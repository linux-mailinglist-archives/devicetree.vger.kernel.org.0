Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00D624A540C
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbiBAA3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:29:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230387AbiBAA3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:29:43 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BA7C061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:29:42 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id d18so14026264plg.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fUiEyLSNC6XcZr3ogWGG4JeevRxf/6Z+zhwMWg+FhsE=;
        b=giuPojpckPWdJqVWPqQ6mN3E0814gEEgGvlJiG8FCpjMnDFjqaVeeeQHyRWanKRb/4
         lm6OgpN5WLZL4g5X45DawRO1zEwbpljajE2sPMzeqRXFfKPR2eSr0te7ASiT90mmyUZV
         pXlKsooirYd5bnTvH3H2vtgjy9fbKZezw+NumXDKtes0IJaMSB4nwrB494BklRYkYX3M
         lb9f6DMIhXbYUZO5nVcyzQQUdFkjpltFsQjGf/Kby/NOA+FDJFNTNQ7+fLJekZgmWOax
         QjPg98Vn32b4q693U5HNPTgiPRADq6NyZSRyaWg0/av9pFPiN/UbW+OEupu0gz0J0iA7
         AFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fUiEyLSNC6XcZr3ogWGG4JeevRxf/6Z+zhwMWg+FhsE=;
        b=z+XdG8ECPDJu1CkUCZ6+7lShuEzFLmOk+hyAtwHsYHKsCUP2G6lOX9IRmXuUqdzaXK
         fPqyUztWGuRzjQEsHtuirhYJOzccidWFnhQb77yQ0UHWj7+YM1xGwipyrJHwgokFkVIu
         +hwowfbO4oEWOiC4LaRicBAriD5j36s6ubGR/i3TS/eGt3+B4diBzCDDPdomX02jGuYr
         kiRn2T1lXNUMZfmnd3G60WpT0qSvej/aCU100t3xt/z5QV5y5yezqxxOAo7jYW1X7QmS
         rH9j332uHa+Byx289BHzvr5nWwc1YhIbIlfoG60V4UDqOAIqfTG/WsWCc4E/mXZtzTWr
         MFcg==
X-Gm-Message-State: AOAM531+8CRfNDt/u1dAr6EEG+e5oJmxT+LWm3QjXs4CG2AJ2CoA3DJI
        wrksnMNCs4O3uhehMoUmteM=
X-Google-Smtp-Source: ABdhPJwj3puh0IVgN0Qt0V03yjG+k5cJsnef8Mb8pvoj/Yt9wMNaeXMRmOjByPgqA945dqBVwZeR9A==
X-Received: by 2002:a17:90b:33ca:: with SMTP id lk10mr27050518pjb.45.1643675382329;
        Mon, 31 Jan 2022 16:29:42 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s2sm20741829pgq.38.2022.01.31.16.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 16:29:41 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: use proper TWD binding
Date:   Mon, 31 Jan 2022 16:29:40 -0800
Message-Id: <20220201002940.428113-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211229102314.5423-1-zajec5@gmail.com>
References: <20211229102314.5423-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 29 Dec 2021 11:23:14 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Block at <ff800400 0x4c> is a TWD that contains timers, watchdog and
> reset. Actual timers happen to be at block beginning but they only span
> across the first 0x28 registers. It means the old block description was
> incorrect (size 0x3c).
> 
> Drop timers binding for now and use documented TWD binding. Timers
> should be properly documented and defined as TWD subnode.
> 
> Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
