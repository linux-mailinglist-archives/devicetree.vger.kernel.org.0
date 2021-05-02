Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25364370DBD
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232281AbhEBPxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:53:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232198AbhEBPxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:53:32 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB51AC06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:52:40 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id b15so2470376pfl.4
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s4xSaRVq05VHrQpVUqSjghVw8WQeY50t+aksX2AH5KA=;
        b=BuUcdvxeNJlh2Mu8G5WhOR3bn1Q1SGIR2OOFY34Iv45q0w7GGjVvVPHd2bvf3c3m0J
         sx0uZz6mv1V9wRinli33ZztEoDgUcO6TowwGLFqcFz2nPR5fzzSMakPIfcpzT7ZY3cAy
         vDArcg8M7uFPPS4lf1MzYc4NabdvwYSsKZhJphhkdtePQyYfomOK/ZPisBgRyHKTMI8R
         49bXbhnbbSPiyRkuAwux5PHiN8KCOe5lijmEtd7a7mpYrIV5nPmh30I5ENVA+k21ceD4
         WGhCXqy66s62Cvx3tMQ1F9NnzJUOgc9noQG3p0PMqRE3ST5l7grbvUyf0encwy+pQFup
         E/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s4xSaRVq05VHrQpVUqSjghVw8WQeY50t+aksX2AH5KA=;
        b=m1GDqcA6QuypWCocP08Hk0zDAeKuW6B8YQxUOotIdCqr0wU2Yt0T7Y/yMH6frRYsyG
         fy27gKgB6Bk9sp8lnUwGSyMw0HTpzorcnkg5yn3k1VJZGpPaMG8cvrVE5AHEKytVQDQC
         UuBeGn3eVr6HqB42XVHyYzgmSF9TL2z2koE5VGXIW9X5WYgB20yKG5SR6m1yU8nKDRui
         x6DM4wo6ePXjsSvWxWDLnklyXJIsGPwAhXp6qnHVFP8HX0uTv55OxrTX0SIL76lIyIHv
         NdQRw3oxcKg73IBUVO4bsfmtLlUKcMu0oomENGcmAN3qWHjSRpd88ObFlWSVF5Y5javt
         9P6w==
X-Gm-Message-State: AOAM532HRkXrPR0wn47VLh0Nn2aYO3nPYNOhQeZghJ7idl/n+o2wN7So
        kgY6Eo1/AKPHnORsfyryGyg=
X-Google-Smtp-Source: ABdhPJxf64qmDd48e2jtPWOBll0ny+IQ+t8o94A+s51IX+AaMgng1pDxpxKeV/dLjNwt25xOv4s3eg==
X-Received: by 2002:a62:16d2:0:b029:27f:3dbf:a466 with SMTP id 201-20020a6216d20000b029027f3dbfa466mr14441503pfw.11.1619970760425;
        Sun, 02 May 2021 08:52:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id z2sm6723394pfj.203.2021.05.02.08.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:52:39 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Fix pinmux subnodes names
Date:   Sun,  2 May 2021 08:52:38 -0700
Message-Id: <20210502155238.945844-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421090006.28228-1-zajec5@gmail.com>
References: <20210421090006.28228-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Apr 2021 11:00:06 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches pinmux-node.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
