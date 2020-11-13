Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 142522B28FC
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 00:12:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726270AbgKMXMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 18:12:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726255AbgKMXMc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 18:12:32 -0500
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C9CC0613D1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 15:12:31 -0800 (PST)
Received: by mail-pl1-x641.google.com with SMTP id d3so5272204plo.4
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 15:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b8u2rZBJLVFGDdqhiQ27OgGl94/Wf0c3bSX6/jH9Uyo=;
        b=PdQArG4LYAiPQhcxidVvOXp4Pw14noMM9JLV7GPBoDyX3gpB1IV6PF24+moffRGib1
         +fML86LTUYSlqxbHEcBQGH/bIswVC7ChhQU76POIl4AbdwAtXyqEDeA1Rm8GJkfxFwlV
         +15pR407Brwx8BqCzO2HyFDZV1apjjqrAxNFqfrwnp+SEluOBF0h58k+koXI88y4NHAG
         r56Us2S5+6cVqdWKtFE9fGm1j5A0SNSiqMxuG0Nc4K6id5D9djH/AazsYbnuMIwLhgKC
         9dd4Ltkwx6aNfRr521ZhhZrHO3c4P6itBv+0bPJC9gpHOSo0ZM6GTu/QvKUYBklFdont
         v20Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b8u2rZBJLVFGDdqhiQ27OgGl94/Wf0c3bSX6/jH9Uyo=;
        b=EGwWdNPAHV2SH/i9IryQGcj1FZH4QKapu1zB1CYkqVmRBgqiplDpoUvblc5g7XaFWb
         Pnfyuepd1JlPu7v4zpqNr2BXmvtGZGF1Kx7p/qwwgHNs2k8sdZDPm1ZvivozlASTiQ0L
         VQFjchtrsF9q0rL6LIwUW4lb1dNTJ4LCHmdH2GsBSrhyzRLvC6aVqsMpg/JS8Vzipv0X
         psXe4qq43CaI4lU4MAKHbmgIp5U3tRnuzn7St/lANCC287V1+zgJa7ovciQueJESjNo+
         R2QZzmsqOnQH+jo+bDLlepxl9eqh2ctiifc3hXUJ62p5OP9G4bxc7fyf/7eLslCTiEhp
         jE4Q==
X-Gm-Message-State: AOAM533B6qtyku0yvkwN9AU9pm45tTNJbUHXPQex4nAe68wN1w52QXpp
        ygKiylkdT/2qsZGbLIHF3DXQgel1J7c=
X-Google-Smtp-Source: ABdhPJw/G3zYJNKN/pXLpGl93Q/sLsVlrmOb0mz6RICR80zt0WX9BOKAnecMH8WPgD2ZxhshQwyJPA==
X-Received: by 2002:a17:902:a40c:b029:d6:e361:7e4f with SMTP id p12-20020a170902a40cb02900d6e3617e4fmr3716046plq.58.1605309151007;
        Fri, 13 Nov 2020 15:12:31 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id v7sm10480553pfu.39.2020.11.13.15.12.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 15:12:30 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Enable USB 3 PHY on Luxul XWR-3150
Date:   Fri, 13 Nov 2020 15:12:29 -0800
Message-Id: <20201113231229.1632656-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113095012.22422-1-zajec5@gmail.com>
References: <20201113095012.22422-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Nov 2020 10:50:12 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This device has a functional USB 3 port so PHY is required.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
