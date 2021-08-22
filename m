Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B34C33F4122
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 21:14:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232540AbhHVTPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 15:15:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhHVTPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 15:15:37 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2626DC061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:14:56 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id k14so14570884pga.13
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8BSndEZH67a39pGrI8p7ILwf7qth7NO8L9+TMSBLTKg=;
        b=mkmBtbBI+stoPBtacB8KWvs2hQVzUTebn45/yDX+Sm83H1kh0fQeS/clrnExCVBbsw
         cEeN5jRKlklLJSGxpLKsZl92WLU7rviY2D1dq3ebgsR1zAra4ryz0E6KyfGdfK2oRsvD
         lQDQDBn/AwJJOp+qu0kDREoWm8zgJdVgyXUhXsptahV5eXrMYiVBx2HgXiO1GZzbGl1R
         6w4tHGgVuF/r8+z2Y4Ludtz7TDSS/w+5+fOqux9PjOvUlO2mmVLgIzWd4S3tY5KinSIX
         GzpaEQPhB9dQ3PNdPxzJRFb5uZvHjiCiFNVvHuJHUfxlW6Z5pvF7E2hbXCwO5t2eZKnG
         WwxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8BSndEZH67a39pGrI8p7ILwf7qth7NO8L9+TMSBLTKg=;
        b=Z5aSETAFGsgr+ii8dp+3j+4dqMB4+vOUeRQaHbHN0cpkbC2i07ajcVlSQ0HbXNiioX
         JOzc4iawE622wG4KDk1rmQgVf5jvBsbeEtXKfNAKsS3QM549fZ+kNmOLeK9rONZ5hvNz
         icI7SqtDoS87A8yLuan2cuV8L1jmocRZbHHWalz5ZTBvo/nEYtxY8Ru8ywerFMtC799o
         NOHRA+LoBpfO9Rie2rOOmWbddOt4EJACSzdqoR61CWMrbTtfil0+eqsVg3laan3xZPTS
         vdE76uxhlzGhtLcURvuVYhagvArnUNWUFTjPjVPxTsVvHuCQuKADQ1Oye1IpuT72kbzJ
         7Vtg==
X-Gm-Message-State: AOAM533ScLLITNmODW3zmJ+WKeKDx4MhJEJ8cfOjVWC//GXSG1YssFld
        mNJZ5m2qhqEdSLnRDDinS/8=
X-Google-Smtp-Source: ABdhPJw5Kya/aktn7hsYn9NQbybfBv3Va8pVO5HR2nfoDDRHy9PT8XkFtzR3X7VJSp0Rq+F2SvESMA==
X-Received: by 2002:a63:5f15:: with SMTP id t21mr28857053pgb.391.1629659695673;
        Sun, 22 Aug 2021 12:14:55 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id h9sm10342613pjg.9.2021.08.22.12.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 12:14:55 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: Move reboot syscon out of bus
Date:   Sun, 22 Aug 2021 12:14:48 -0700
Message-Id: <20210822191448.3715549-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819122606.15682-1-zajec5@gmail.com>
References: <20210819122606.15682-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 14:26:06 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes following error for every bcm4908 DTS file:
> bus@ff800000: reboot: {'type': 'object'} is not allowed for {'compatible': ['syscon-reboot'], 'regmap': [[15]], 'offset': [[52]], 'mask': [[1]]}
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
