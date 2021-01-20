Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA3942FD8F5
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 20:02:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392334AbhATS7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 13:59:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392252AbhATS7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 13:59:06 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD9F1C061575
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 10:58:26 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id i7so15810373pgc.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 10:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2TW7ifRKDfEDvvEw4spNHymg8idK6QSjJuBq5f4pnr4=;
        b=RDu7A22Ytc8Zf0vOpovRip1Tq3KL3PyuKMsU1yk+I913V5PA5K+YhOB/Bse1gfH65R
         1BI1i11CZW1M3cqgZpiW7cqpyNCUg5Z2yWSraT1J40l7JXenaboOF6s8EWIAMaEeODqk
         SXiWlFbphTWbeY+dfE47q7xspjIR5MhIjO8JJIEqz8+1IMYazl4F2D8QaK1W2Xl7qPbu
         ngdYc3JKUfkS6xXumafIUMgtYydmxCn0qab/oEBV6C7cmVeOoUD/kyjz7sdcejBodtyd
         CxrdnoEYZwMIv0CKzqto5iqIt8ZzKHB5A2FE36VIMNhYuACdyxmCKV/HS79WEom4igxh
         4isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2TW7ifRKDfEDvvEw4spNHymg8idK6QSjJuBq5f4pnr4=;
        b=dLqvuV7xDf7C34mIdf2LxAEme5kvpSzw3V4O1pZ1BbasB37Ac/sIU+EGWBQzqqcddh
         APZgBI1JXRe1A6yEB5o41l231CxOTRCFD5pg01s/ooD2q1UwzKNs8n5ZSKTrXVQzeNlC
         hMhTfUjz3JtoZy5xODRnjZxgJaAopG/ZlPHBHKj0FGr/mPDQeDWpDd74OsK4rTS5yjOT
         W4EE68WlH8A+cqlnY2fEZ4tYHkr/a8MY/5GMoet4xkbwuh2MlQP8VVo6NOUz1EekuVGt
         Rn35ml+jMqaaP8r4yJJ1SoKVCvFPfpHDbPA2aGqt5af0kYHBgKYL9i9YkYi2NT1c2qcf
         JdNA==
X-Gm-Message-State: AOAM531NnO0cQcez6xCC8UgSgh/KMHlUU7HjIh+G8YJPr9DwyoOGBRrn
        CMFoUQ338AsEXqVNzTxQIoM=
X-Google-Smtp-Source: ABdhPJxFVos7B8/5iZ9x6bZV8q0p8O7YU5SGHVXSVy2K4Dk2niDFlzDG3x5BGILf1CNS79EOumsO2Q==
X-Received: by 2002:a62:ee18:0:b029:1b3:b9d2:6d7b with SMTP id e24-20020a62ee180000b02901b3b9d26d7bmr10454871pfi.32.1611169106234;
        Wed, 20 Jan 2021 10:58:26 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i1sm3289113pfb.54.2021.01.20.10.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 10:58:25 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] arm64: dts: broadcom: bcm4908: describe internal switch
Date:   Wed, 20 Jan 2021 10:58:24 -0800
Message-Id: <20210120185824.2360279-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210113110946.19614-1-zajec5@gmail.com>
References: <20210112131727.19020-1-zajec5@gmail.com> <20210113110946.19614-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jan 2021 12:09:46 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 has internal switch with 5 GPHYs. Ports 0 - 3 are always
> connected to the internal PHYs. Remaining ports depend on device setup.
> 
> Asus GT-AC5300 has an extra switch with its PHYs accessible using the
> internal MDIO.
> 
> CPU port and Ethernet interface remain to be documented.
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
