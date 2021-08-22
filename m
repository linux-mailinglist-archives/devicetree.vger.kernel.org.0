Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF733F411E
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 21:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232340AbhHVTO5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 15:14:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhHVTO4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 15:14:56 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6075BC061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:14:15 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id qe12-20020a17090b4f8c00b00179321cbae7so10673715pjb.2
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fwRvPeuNG4XUteqeJ+Fz6W9KX8Abe+JSPq/YacArhGc=;
        b=AORExNzVBF0kjSeEDulSVM2VwzRbuW4HTdTnCwpIyDctVzDPUaO8b3xt5Hwt4f96A1
         6fRY1r/l8rTUufU+V3qq/Rb/jLv3pTqo2f1chECuwD+GFRgBwszSTokYYmtMBxtxBV4b
         opt5djJVYTUojXctAEGHwkwJ4BZpSOtkcfnFVKcKr/veiiwdOaZ96sib6cZVCpp4FYt0
         TsIe4eGyzzKriiKZxIYidJSEj0qKLnJCys/u/rupTH07oH+nxGUENEagccwZWr+LVfc2
         Xbnh2Dx5YlqtcB4L+pVKU/3+VUvdBrMs9jr5E2gQCUNdxWiO6bNa5zbFiU57py1iRbWI
         74iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fwRvPeuNG4XUteqeJ+Fz6W9KX8Abe+JSPq/YacArhGc=;
        b=ov3lrac8S6VwW0OBrl8PGzxN+TwpDYOwmJDNjuejPltkqJaGXRdjGq1oIjipVv/Hzm
         98G5FVWKE+wgLbw8unNsPKBlUNZiBdMHZ2pZ6SKfkQO/SGD03aAZX1qGit0dgJ96984B
         Msgebx2i4/k79BLVMgDwA22a04f9bH+cMXgt9cEx3BnEdMpsfptSCEHxtq2AJG6djZrB
         TEiJaGle9enmHzOTleSOXVVBsskR0GYdIklpsipelThsrfMjz4QA3oHcWjkQqSxVmb7q
         GI5YpiBlTR5otypHOFwYcU4e1RjY+pCD9yOwq7J9UEbcUMUlb34XEC96XX3Cc4Ml4gD+
         vn4g==
X-Gm-Message-State: AOAM531kjfabcBkHfDy3Ke8jcrpZLBawoBrGdo31Oqam8D3TQ2vLEv2z
        lCAhHSPYqqP0fbLhU8BQPYs=
X-Google-Smtp-Source: ABdhPJy49chaR2otOh2MDxLOSm7e2lXwQkyd8B5lAOUA2EvAUPZNi2Oj7/76FLR2F/Ma/NEi4ds/Vg==
X-Received: by 2002:a17:90a:2f43:: with SMTP id s61mr16641177pjd.140.1629659654902;
        Sun, 22 Aug 2021 12:14:14 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id m5sm16524786pgn.70.2021.08.22.12.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 12:14:14 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: Fix NAND node name
Date:   Sun, 22 Aug 2021 12:14:08 -0700
Message-Id: <20210822191408.3715427-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819121108.13979-1-zajec5@gmail.com>
References: <20210819121108.13979-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 14:11:08 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
