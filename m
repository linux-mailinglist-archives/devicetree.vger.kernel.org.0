Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDB7F468E60
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 01:44:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241666AbhLFAsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Dec 2021 19:48:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241860AbhLFAsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Dec 2021 19:48:08 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEFC4C061751
        for <devicetree@vger.kernel.org>; Sun,  5 Dec 2021 16:44:40 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id t23so18520215oiw.3
        for <devicetree@vger.kernel.org>; Sun, 05 Dec 2021 16:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rc6YPEkCa6fMfUKdF76C/hoz+bnXUK66vzkGToUFvJk=;
        b=BOGCiBqsrgof4NTzqTUxF4CryrcKRyXWBmDlKPh4qH2Xmvp3z/sCzvMpGzXL/FVS9n
         +GmZbwb7CzqJqe/l9JL6TRD4xXAVaMkdRatxkDYGzOAkcxpeRjhBAdQo6pAsR46QANps
         V4lgaq8qMbb3hIewuj8uSv/nA6rXLdazeQyCkvHqOcA/iginktQpjrPfiMEWsy81/GHR
         fva+iHz15mM7Lp1pX0nuIWC7TdB+Vgcft5iiTsTeN77d3X1bI1jdAtae7Vfi6w1vVGQ0
         BLr3xzyl5PkO3vELYyfCYGjLxfgUjmpq/E3lUYNL7HJWfqa3kIC/IrKVDewaIy+8A6aV
         ZTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rc6YPEkCa6fMfUKdF76C/hoz+bnXUK66vzkGToUFvJk=;
        b=glAaXL0O8QMtmPQh406JSrNuwBWYvJmP7n+Tx7vxli4jVWiLwuRRC9GAibmDvP+UIL
         4ei2nCDCrlcPytqi3KI2j8fyFcq4joYEfj2BvHZAJ9LTSBqP7HowJ8QBBGt5h4sBSLbK
         8ypBz/HQYowFEXSe0gzhCGkth627jt9/tKJhtDa6bVjGZv/ZBFwnGOzRHZv5Gk50hdxc
         pmM89qw3mtJcWUGMO+02gBtv5P9Iz551Jm3BdZOQgdsIj0fODD1zZoeu5mf3ggaUEJii
         g9qW61Kd4CO40cOkYB1OZTCYVRJuC0h6Q4bmzlyyKNgcfL6TKSiPp7u0E9c8MI7OETN4
         /hwg==
X-Gm-Message-State: AOAM531ZJM1PHvngT8oRhv+61WISuJZ68OBtnXBGZZnyW9H8fUTaZrG1
        EAYT0muOdvtfDLfb+kcKdkVyGKg2jdd+OBhs4Ig+Vw==
X-Google-Smtp-Source: ABdhPJxz9vfBcwyRqiaqExsnTTZRsXq0ytDkDcn0dfWElvj5+75aUGG0JtetXi0TCpnBFv65rUC31E+rpHtMsSXvmEw=
X-Received: by 2002:a54:4791:: with SMTP id o17mr21802609oic.114.1638751480203;
 Sun, 05 Dec 2021 16:44:40 -0800 (PST)
MIME-Version: 1.0
References: <20211201125703.52935-1-chunkeey@gmail.com>
In-Reply-To: <20211201125703.52935-1-chunkeey@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Dec 2021 01:44:28 +0100
Message-ID: <CACRpkdbg9LX=DeEp7b2bRB3SV2GFvBSYJAVggRSR2RygjwR42w@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: dts: gemini: NAS4220-B: fis-index-block with 128
 KiB sectors
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Steven Maddox <s.maddox@lantizia.me.uk>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 1, 2021 at 1:57 PM Christian Lamparter <chunkeey@gmail.com> wrote:

> Steven Maddox reported in the OpenWrt bugzilla, that his
> RaidSonic IB-NAS4220-B was no longer booting with the new
> OpenWrt 21.02 (uses linux 5.10's device-tree). However, it was
> working with the previous OpenWrt 19.07 series (uses 4.14).
>
> |[    5.548038] No RedBoot partition table detected in 30000000.flash
> |[    5.618553] Searching for RedBoot partition table in 30000000.flash at offset 0x0
> |[    5.739093] No RedBoot partition table detected in 30000000.flash
> |...
> |[    7.039504] Waiting for root device /dev/mtdblock3...
>
> The provided bootlog shows that the RedBoot partition parser was
> looking for the partition table "at offset 0x0". Which is strange
> since the comment in the device-tree says it should be at 0xfe0000.
>
> Further digging on the internet led to a review site that took
> some useful PCB pictures of their review unit back in February 2009.
> Their picture shows a Spansion S29GL128N11TFI01 flash chip.
>
> From Spansion's Datasheet:
> "S29GL128N: One hundred twenty-eight 64 Kword (128 Kbyte) sectors"
> Steven also provided a "cat /sys/class/mtd/mtd0/erasesize" from his
> unit: "131072".
>
> With the 128 KiB Sector/Erasesize in mind. This patch changes the
> fis-index-block property to (0xfe0000 / 0x20000) = 0x7f.
>
> Fixes: b5a923f8c739 ("ARM: dts: gemini: Switch to redboot partition parsing")
> Bugzilla: https://bugs.openwrt.org/index.php?do=details&task_id=4137
> Reported-by: Steven Maddox <s.maddox@lantizia.me.uk>
> Tested-by: Steven Maddox <s.maddox@lantizia.me.uk>
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>

Thanks a lot Christian excellent rootcausing!

I have relayed this patch directly to the SoC tree for fixes.

Yours,
Linus Walleij
