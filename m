Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E038D03C1
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 01:02:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726068AbfJHXCg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Oct 2019 19:02:36 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:38313 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726336AbfJHXCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Oct 2019 19:02:36 -0400
Received: by mail-qk1-f196.google.com with SMTP id u186so462697qkc.5
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2019 16:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=FMMLRXtAe40zCMcCtxvdP8i9kT/PLF62chlFdNDSpa8=;
        b=ZFzM3Avgh1nIZ9kRcYhwKQbctGHGKBEN6jhP8dxhduJ+4EPcJfdb2kEs36EGwPKTgY
         GDu8aQ/hL/5/0pTwv3fuQIb7NEH80mv1qvtHUPcsc7IUlxs5BVnnMg1tTykwNYvNgV8e
         U6cvjWUrJCi32I4kQ9et1ar15nltNXj7yQLsGBAHP5fONJlcWrRWecoAIR0PCwqx/fah
         AohsRSAmEUBkgvOT6hpYM+z0EAqfUnvZowytJBkjh18ZY1GnBTSZJ5Jm4uRphbNrAzgv
         0249cyY1Six4SoTA371Mti6zSmwExvlG7oCD2Xv9qNzjaPKZVK7C7/2o2RoBWuVuYZO7
         CgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=FMMLRXtAe40zCMcCtxvdP8i9kT/PLF62chlFdNDSpa8=;
        b=f9a4pFAotI2Ki2tVYuiZ1gE8l0pzpaNuifWngqOUgJpzjr5MaiKKKAKhwbtG8sAXve
         ayRZU4Lv77mUmp7rXa0b3KhZeOWKacClbXdW9GKqIa93t89T8/kZNMSEvDj/gBu9tK76
         OF2LBozql5X70+L4nNnWPKRSgmgHyM1RGd+9Ezpb09hO0iBvk3vBMC6xEX/uo/JpXl7s
         fQfIt6mZxMMgOeBKCqbYpIq3Rymz8+8+LgaNkHYaSPFD5R2rrfSSLCVyeLlq/mgyM5aF
         yD2urDlETzdpeNuEAGES0gN8x4tUAj+WE3O+UJiar/snZM+xVqBzZlZMYVX9Z7+TdPBM
         oKlg==
X-Gm-Message-State: APjAAAXSwJLFpvMi9rdAmoDIVoNTpjSSNNFer/wUyqit8dybR3avq3Ns
        b23vdBh198AcqTAF0Pvm6p1YPA==
X-Google-Smtp-Source: APXvYqxvRqb+z5HpoQj48byKYFHJWFucwPuLS22/dDgDrpAZfGfXzGsk3d6nAPeBA6lls6A278C1Zg==
X-Received: by 2002:a37:a646:: with SMTP id p67mr569346qke.489.1570575754654;
        Tue, 08 Oct 2019 16:02:34 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
        by smtp.gmail.com with ESMTPSA id a19sm204875qtc.58.2019.10.08.16.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 16:02:34 -0700 (PDT)
Date:   Tue, 8 Oct 2019 16:02:22 -0700
From:   Jakub Kicinski <jakub.kicinski@netronome.com>
To:     MarkLee <Mark-MC.Lee@mediatek.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Sean Wang <sean.wang@mediatek.com>,
        John Crispin <john@phrozen.org>,
        Nelson Chang <nelson.chang@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rene van Dorst <opensource@vdorst.com>,
        <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-mediatek@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH net,v2 0/2] Update MT7629 to support PHYLINK API
Message-ID: <20191008160222.0bdb7f47@cakuba.netronome.com>
In-Reply-To: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 7 Oct 2019 15:08:42 +0800, MarkLee wrote:
> This patch target to update mt7629 eth driver and dts to support PHYLINK

Thanks for the patches Mark. The description of the set should probably
say that it _fixes_ some issues. Right now it sounds a little bit like
you were adding a new feature. Could you rewrite the cover letter to
give us a better idea what issues this patch set is fixing and why
those issues occur?
