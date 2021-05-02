Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01AC1370DBA
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231801AbhEBPxP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:53:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEBPxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:53:15 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02591C06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:52:24 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id s20so1488892plr.13
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gcybN6C1EN2YJlHcWZacdePmjngzFqLctydDKT/w04Y=;
        b=Z4ZkQAeWjZG0pkMTvvYtIF8Nj+fM7sbDcyrsw+Ii2ITC2Uk/uNhDDMXscruMqbs/cw
         Nia4eA22wkdxyDSXuJNO2W7IMot4pPZ0Zne1Wjh3JSO30I8ZGYYKFLEey0Wr/SxeY9VC
         FiGxLYVjv1Y9jJzrg0xcGuwnG/jOaaDtO8XtRsQlSLZ/64bOhRPGqH6JdF7h2WCOzMrP
         FqFWSlMzisDZ0deXNS6WtGGyvWRQC7Sg21LVl8Y9KevJiSE7VYg7xV3z23TuiRO685Oy
         cdiHgwRxfIoRMw1uzA7jhunUQxKOOkfm9civBjyopApKe+8F0j2kHtX3EISI+v0rAwVG
         zGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gcybN6C1EN2YJlHcWZacdePmjngzFqLctydDKT/w04Y=;
        b=GBZ+9KpmM1zOOHnAhlDNuk2dQflfjrIIggCdFEOSSxWbSbgQ5qPbnX2sBkckWWPuPJ
         8hly55eV0Of+lb2pLBAi6mjXury11WU+X2oZKS2ZcQ1VSiXWYuUkz+d6kGQ4rJQoG1+R
         c64NenhsZcCUye8AzMd04EevPqCNig6PNwaSfXcuGwb6yCJ9qW5Z7oOsJ8Gh3eZTvpbr
         9kccMkyZleK+0BXpj2GWKcShUGa6SsJZ6EY97nZ7aIAQM5JziXEsILzpNSJrWVKT/koi
         3mzLbi2oSBezdFgWSu8tVXIPWNHd8Bkxed9+eirby5USfI8TseHA9T95biu6j1+g93vM
         ebUg==
X-Gm-Message-State: AOAM531zXpQxulUO1C0lLanFWuoRnsl8blqWLexn/FMkRbiiT21HwqN9
        tj0g6JzvpeavRyRFMrBQWX4=
X-Google-Smtp-Source: ABdhPJyE7gGaIzLDBoqM+MNQGNq+1kCdO579WAQBFvDqHdgJghDgcuyIhi2nDFv43N18z/StpznbSQ==
X-Received: by 2002:a17:90a:f40f:: with SMTP id ch15mr16196838pjb.113.1619970743572;
        Sun, 02 May 2021 08:52:23 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id x23sm6727326pfc.170.2021.05.02.08.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:52:23 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux 5/6] ARM: dts: BCM63xx: Fix NAND nodes names
Date:   Sun,  2 May 2021 08:52:21 -0700
Message-Id: <20210502155221.945617-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210416133753.32756-5-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com> <20210416133753.32756-5-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 15:37:52 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
