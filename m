Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4C984A9502
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 09:23:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244776AbiBDIXW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 03:23:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238253AbiBDIXW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 03:23:22 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C974C06173D
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 00:23:22 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id s18so9823150wrv.7
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 00:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8ZFGzXKMw2OtgLno39hurYI13mOmCe8ZCX/+T1DKyBk=;
        b=4+20rbGQc0s74Fddoeq/rb//eeHwhJkpBN3Gd67h7L00wELWlw98rEciKQP4188YSY
         2mhsj+KFM/t4VygbsM/F3xQElHLiUzv2SxEBOG45Q4userSKbNGQZFY8Kde8qr65SAEx
         BOgIwbMpZMYZIe6MVs/Yqr7+7IB+TgF32SJ1e0+QtJ1uJPWCgM22b+kqRGhl48g87ELw
         SGiSjZJJe+TjpTi5+W4k5Dza8eVVCECXhwo3dBYOgomCv2KX66VEl75js5E6gx6apRy/
         YHFfLYkm/bGhYjqktElHeICJVCNwdNHhW00KqGYGqhWfyb6fSMm73WYf0ngWobP4zWYr
         w3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8ZFGzXKMw2OtgLno39hurYI13mOmCe8ZCX/+T1DKyBk=;
        b=okqaZ8tR132umfJMM5k8hGsG8kDlHZ+9VzgWq3mhISWJwkjjyNIla6RK7KeAUNDW++
         I3bGoItme7w0tT5BxOWkDvjTkpddQh1KEEy7yHZoVLbfKlk/kDRm6RmyH4UUNLf2fYCw
         wnQZJFKhFx4vES3rbB+Ho++PxXqpyPfGtBBdI6/Zns1nmD5bvdnNpDxP3ty7wGCPM/Ms
         wmW2yBIITsB2z7e2ddOREdsZ6GwhATd+yEOifB12ElSeMPDjYuwlDf5CwxxINtafEBYv
         vN3O5L0WSQDMbS7Zv6JlC8H8sXkQtOB1+9JJZHt2EWfW6EXvs6moo7Ps4q0mD6tANVN6
         4mMQ==
X-Gm-Message-State: AOAM530mkGA+Hgyf2pbA++3XxJTjYj0hIxNXWWGemeUXNbRrQm0nxRAc
        bRA+o2aH+8gMFIn6RuiT/iii9g==
X-Google-Smtp-Source: ABdhPJwAGDBGZvKRTaJ+hdwdrgMRaYygLonxwZBtahRfivmiCgi7dKmq+ylCPyAVkrBnhQEsNvuU5A==
X-Received: by 2002:a05:6000:2c1:: with SMTP id o1mr1478335wry.258.1643963000590;
        Fri, 04 Feb 2022 00:23:20 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:3fbe:ff10:110:739])
        by smtp.gmail.com with ESMTPSA id s22sm8914078wmj.38.2022.02.04.00.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 00:23:19 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/3] arm64: dts: meson: add ATF BL32 reserved-memory regions
Date:   Fri,  4 Feb 2022 09:23:14 +0100
Message-Id: <164396299209.31118.12297547841025620213.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126044954.19069-1-christianshewitt@gmail.com>
References: <20220126044954.19069-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 26 Jan 2022 04:49:51 +0000, Christian Hewitt wrote:
> This series supersedes [0] which fixed a long-running kernel panic issue
> seen with Beelink G12B devices booted from Amlogic vendor firmware. The
> same issue exists with a wider set of devices from GXBB to SM1, although
> it is not often seen due to my kernel fork including 'catch-all' patches
> for some time (the meson-gx patch was suggested by Matheusz in 2019) and
> many distros actively supporting Amlogic hardware consuming some or all
> of my regular patchset.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.17/fixes)

[1/3] arm64: dts: meson-gx: add ATF BL32 reserved-memory region
      https://git.kernel.org/amlogic/c/76577c9137456febb05b0e17d244113196a98968
[2/3] arm64: dts: meson-g12: add ATF BL32 reserved-memory region
      https://git.kernel.org/amlogic/c/08982a1b3aa2611c9c711d24825c9002d28536f4
[3/3] arm64: dts: meson-g12: drop BL32 region from SEI510/SEI610
      https://git.kernel.org/amlogic/c/f26573e2bc9dfd551a0d5c6971f18cc546543312

-- 
Neil
