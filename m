Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 185724510BC
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 19:52:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238305AbhKOSyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 13:54:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243169AbhKOSwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 13:52:45 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3445C0A3BCC
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:52:30 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id p18-20020a17090ad31200b001a78bb52876so13654540pju.3
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yuhLOOh/GxdAE0tq/zYDKkR2h44hIG3AvVNvz+MMmcE=;
        b=ANwHJZrlo0uDnppdxaEmnJaSkvFJBtIEnRtyaNeKcbZRwAwO9zv84iAJiVffSejriS
         Dt+iq0rOnVPhOPM+BStxcVKNduqtOOeLqlSqTl1S8z4Ivkzs+Hw9P0RwitR9vc7m7zPj
         +VFv8Smvp/paxETXoV28c7s8AMRrCnK8/kPdWHsKbZz7Mr8JU0w4NCftzkqXpQk8ViGo
         O7v8TFA8fsI/GmJ4gpBH2LlwK3nHHNyaBwA/v0HDBSeofI6b5tgWEFokxurTuVHl4ZbN
         8pJl6Lt6CjtF0tQ5eYGIwMOAoSFiXSXZqU01xJ2AEIla1r0FDQt4fNMa6QtU754uyxD8
         19/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yuhLOOh/GxdAE0tq/zYDKkR2h44hIG3AvVNvz+MMmcE=;
        b=pUZXaFZHQ9AWi7aEUnisUV7tmmZz+x6oIhkR9Q+uGij8E00VVTqYv8sJza5LjiYGDp
         TfiPu9Bh6XisL74j2CUjzRLaZVJwVjbJXMeZKtFhgtdnFtnHoAXLYPB9I0v55SDqftHS
         XH3whSn7yG/uzrb67/PvYN1tpnLQDsIrPjgUxy5s+k7QCNdD8REpJTW2E4oSr+/of3DW
         te4OgwqczTZnWsAtFDN/ymQ3FeBSYTVg8BVtdAmIdYlE9wOg4M5yC7lBW63a72Ad1kbr
         rLG7fKYdPc0KCuNzBnI+yMcg2TO0LQPNU1hAvpJIrEH4AuO34+Ze8qFmWJvkXR8NWDUq
         dqiA==
X-Gm-Message-State: AOAM533CGKKdRtCv0WtEw8TESjTTSUQIwuhI2nqO/EE5Ri8yWPZRMODi
        BM0nGpOx51OnAfyURYJmqa8=
X-Google-Smtp-Source: ABdhPJz/nYlZD5Ob+0TK+9M/OF+T1xyInaLsWO28hKbe2uYW3/4g2QzIA59Lzgy/YZatvzBPJfi9dA==
X-Received: by 2002:a17:90b:4b41:: with SMTP id mi1mr42862027pjb.2.1636998748802;
        Mon, 15 Nov 2021 09:52:28 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id h3sm17843514pfi.207.2021.11.15.09.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 09:52:28 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: bcm4908: add DT for Netgear RAXE500
Date:   Mon, 15 Nov 2021 09:52:27 -0800
Message-Id: <20211115175227.491032-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211105101413.14926-2-zajec5@gmail.com>
References: <20211105101413.14926-1-zajec5@gmail.com> <20211105101413.14926-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  5 Nov 2021 11:14:13 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a home router based on BCM4908 SoC. It has: 1 GiB of RAM, 512 MiB
> NAND flash, 6 Ethernet ports and 3 x BCM43684 (WiFi). One of Ethernet
> ports is "2.5 G Multi-Gig port" that isn't described yet (it isn't known
> how it's wired up).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
