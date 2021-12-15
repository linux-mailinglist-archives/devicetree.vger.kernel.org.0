Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED299475AA9
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 15:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243372AbhLOObK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 09:31:10 -0500
Received: from mailout2.w1.samsung.com ([210.118.77.12]:37026 "EHLO
        mailout2.w1.samsung.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234528AbhLOObK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 09:31:10 -0500
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
        by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20211215143108euoutp026b51ca3c4b31ba569999369ea0861153~A9Byk5-Nj1200812008euoutp02B
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:31:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20211215143108euoutp026b51ca3c4b31ba569999369ea0861153~A9Byk5-Nj1200812008euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1639578668;
        bh=ekfNz+r8yun8sgqLvZGd0fPZJMYkDB1GotoAXBU8qh4=;
        h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
        b=DcbmQFlfc5CotFDCy87QSwCwM1Fce9neQ1M7jypIX3AeAC9F0qdEB2n3/XOskfZxA
         t6HYf+5yYMUfNq3Ls+I/Pbk8xmxOHXynBmmVBjH7zY3DXhRQNjI5aZGy97NbGDTNGj
         /ljCV95zFrWSIivhZztKx2IjinMkfy3wA5hO0uVM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
        eucas1p2.samsung.com (KnoxPortal) with ESMTP id
        20211215143107eucas1p25eefe2d210dd53f247739c75921d40ed~A9ByQHZN30685906859eucas1p2O;
        Wed, 15 Dec 2021 14:31:07 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
        eusmges2new.samsung.com (EUCPMTA) with SMTP id E7.AA.09887.B2CF9B16; Wed, 15
        Dec 2021 14:31:07 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
        eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
        20211215143107eucas1p16e94541a8fa992d8f460d2ba10d66eb0~A9Bx4-LTx0884608846eucas1p1K;
        Wed, 15 Dec 2021 14:31:07 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
        eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20211215143107eusmtrp15f2c8a588bd3bc992c804fcb9445c87a~A9Bx4Knw83069630696eusmtrp1n;
        Wed, 15 Dec 2021 14:31:07 +0000 (GMT)
X-AuditID: cbfec7f4-471ff7000000269f-eb-61b9fc2b2b7c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
        eusmgms2.samsung.com (EUCPMTA) with SMTP id 29.27.09404.B2CF9B16; Wed, 15
        Dec 2021 14:31:07 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
        eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
        20211215143106eusmtip23c33027f85f948935e56f91c6412c13a~A9BxWaqei0111701117eusmtip2c;
        Wed, 15 Dec 2021 14:31:06 +0000 (GMT)
Message-ID: <8235e9cc-2564-b9eb-402e-c98096185ac3@samsung.com>
Date:   Wed, 15 Dec 2021 15:31:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
        Gecko/20100101 Thunderbird/91.4.0
Subject: Re: [PATCH v2] drm: bridge: tc358764: Use drm panel_bridge API
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
From:   Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <CAMty3ZCX7ziywip9ToU4XP_GqK2uVX=iH0wgeyzgazWSf=9Cgg@mail.gmail.com>
Content-Transfer-Encoding: 7bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMKsWRmVeSWpSXmKPExsWy7djP87raf3YmGkz8pWBxf/FnFov5R86x
        WnzZNIHNonPiEnaL5RP2sVkc6ou2+DTrIbMDu8faj/dZPd7faGX3mN0xk9Vj8Z6XTB53ru1h
        8/i8SS6ALYrLJiU1J7MstUjfLoEr4/7EpywF34QrHjROYG1gvCvQxcjBISFgIrFlaWgXIxeH
        kMAKRonj59+wQzhfGCW2v/7FBuF8ZpSY+GUnUxcjJ1jH/4WPoBLLGSV+/7oJ1fKRUaLt8EN2
        kCpeATuJG2+ns4DYLAKqEo+WHWeDiAtKnJz5BCwuKpAk0drxB2yqsIC7xPbeyawgNrOAuMSt
        J/PB4iIC2hLfZr4G28Ys8JNR4uqOX2AJNgFDia63XWBDOQUCJX4fOMME0Swvsf3tHGaQBgmB
        OxwSKy61skLc7SJx8fN1ZghbWOLV8S3sELaMxOnJPSwQDc2MEg/PrWWHcHoYJS43zWCEqLKW
        uHMOFBwcQCs0Jdbv0ocIO0rM/TydFRKUfEAvC0IcwScxadt0Zogwr0RHmxBEtZrErOPr4NYe
        vHCJeQKj0iykcJmF5P9ZSN6ZhbB3ASPLKkbx1NLi3PTUYqO81HK94sTc4tK8dL3k/NxNjMB0
        dPrf8S87GJe/+qh3iJGJg/EQowQHs5II71KDnYlCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeZMz
        NyQKCaQnlqRmp6YWpBbBZJk4OKUamLatOMA6I2Sn8MoJ0Tv25qr89LuwYfly400B/RH510yn
        zI1ecCgneEZ55uPFT5e849Ji9ssLzzvDUGbOsnTTxjrLZfoeEZ+UFZ41Hmpm3vy+/NTMyJmV
        Kac45JrkVz684bSaI93nXVPibuvNvn0Gd+8HnPR4u+Pmq8dObu+2uhdnMBvEKv+KiWXX9XuX
        bxu3dsqvubxpBTs2OXz3mNljfnFF10N+1+6Q+TEL9l399XjbjXaeLEYfxfPOYUr1utIROjsa
        P5t+nJ152zhizS/Np2qy6hsCeL/8++//ecnxuxPt6l1sHv+Q8FM6PUlhhjyL7FyFOev8Nzzu
        n5fAcHb6kf1KSru5zzenbJqdIl0u2qPEUpyRaKjFXFScCACwpK1ItgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xe7raf3YmGkz8zWJxf/FnFov5R86x
        WnzZNIHNonPiEnaL5RP2sVkc6ou2+DTrIbMDu8faj/dZPd7faGX3mN0xk9Vj8Z6XTB53ru1h
        8/i8SS6ALUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjf
        LkEv4/7EpywF34QrHjROYG1gvCvQxcjJISFgIvF/4SO2LkYuDiGBpYwSF9q3MUMkZCROTmtg
        hbCFJf5c64Iqes8oceoLiMPJwStgJ3Hj7XQWEJtFQFXi0bLjUHFBiZMzn4DFRQWSJHav2woW
        FxZwl9jeOxlsKLOAuMStJ/OZQGwRAW2JbzNfs0HEfzJK/O4qgVjWzyRx6i9EA5uAoUTXW4jF
        nAKBEr8PnGGCaDCT6NraxQhhy0tsfzuHeQKj0Cwkd8xCsm8WkpZZSFoWMLKsYhRJLS3OTc8t
        NtIrTswtLs1L10vOz93ECIy/bcd+btnBuPLVR71DjEwcjIcYJTiYlUR4lxrsTBTiTUmsrEot
        yo8vKs1JLT7EaAoMjInMUqLJ+cAEkFcSb2hmYGpoYmZpYGppZqwkzutZ0JEoJJCeWJKanZpa
        kFoE08fEwSnVwGT3deki8a0zH5W6+09kirL/FvXz/+qIhOjmkkUK26NqfG8WLhWd3eRxrLVx
        9vWlDefaCuJWHDzK8MhzaUmgwYSH6p+eCd8vP/YvwOWpW8QJvusPqyT/3NATmuWR/9OoKunT
        u4oHl/KXRm4OWLGube+kBIUJjlnffUR+F5/b897OQ1fe2oNHXUaW9fnsaw9DFl5xY9q69srM
        6Xyftdbcmxu40WHxrt2Sc/7OjdwrzP8091vr7yTnxeu4mTZpLtBZf7LPQHN7Kq//sW6GjWya
        bl8yMrrDbzyREOMPilS5f5LXM7hntuuL3FUMWpMVT5oL9wso2ncV13LfLrKd0nHh+uVP16dM
        NanQtD46Y8PyQlUlluKMREMt5qLiRAAgFrAESAMAAA==
X-CMS-MailID: 20211215143107eucas1p16e94541a8fa992d8f460d2ba10d66eb0
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f
References: <CGME20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f@eucas1p1.samsung.com>
        <20211215100459.44196-1-jagan@amarulasolutions.com>
        <17cca00a-85a0-465f-201b-ac4c61b5ae0a@samsung.com>
        <CAMty3ZCX7ziywip9ToU4XP_GqK2uVX=iH0wgeyzgazWSf=9Cgg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

On 15.12.2021 13:59, Jagan Teki wrote:
> On Wed, Dec 15, 2021 at 5:30 PM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
>> On 15.12.2021 11:04, Jagan Teki wrote:
>>> Replace the manual panel handling code by a drm panel_bridge via
>>> devm_drm_of_get_bridge().
>>>
>>> Adding panel_bridge handling,
>>>
>>> - Drops drm_connector and related operations as drm_bridge_attach
>>>     creates connector during attachment.
>>>
>>> - Drops panel pointer and panel healpers.
>>>
>>> This simplifies the driver and allows all components in the display
>>> pipeline to be treated as bridges.
>>>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>> I just tested it on top of linux-next with "drm: of: Lookup if child
>> node has panel or bridge" patch. Sadly it still doesn't work on
>> Exynos5250-based Arndale board:
>>
>> OF: graph: no port node found in /soc/hdmi@14530000
>> [drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
>> exynos-drm exynos-drm: bound 14400000.fimd (ops fimd_component_ops)
>> exynos-drm exynos-drm: bound 14450000.mixer (ops mixer_component_ops)
>> OF: graph: no port node found in /soc/dsi@14500000
>> exynos-drm exynos-drm: bound 14500000.dsi (ops exynos_dsi_component_ops)
>> exynos-drm exynos-drm: bound 14530000.hdmi (ops hdmi_component_ops)
>> exynos-drm exynos-drm: [drm] Cannot find any crtc or sizes
>> exynos-drm exynos-drm: [drm] Cannot find any crtc or sizes
>> [drm] Initialized exynos 1.1.0 20180330 for exynos-drm on minor 0
>> panfrost 11800000.gpu: clock rate = 533000000
>> panfrost 11800000.gpu: mali-t600 id 0x600 major 0x0 minor 0x0 status 0x1
>> panfrost 11800000.gpu: features: 00000000,10206000, issues:
>> 00000000,31b4dfff
>> panfrost 11800000.gpu: Features: L2:0x07110206 Shader:0x00000000
>> Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xf JS:0x7
>> panfrost 11800000.gpu: shader_present=0xf l2_present=0x1
>> [drm] Initialized panfrost 1.2.0 20180908 for 11800000.gpu on minor 1
>> ------------[ cut here ]------------
>> WARNING: CPU: 1 PID: 7 at drivers/gpu/drm/drm_atomic_state_helper.c:494
>> drm_atomic_helper_connector_duplicate_state+0x60/0x68
> Known problem, it require 1/6 from Bridge conversation series. We can
> move this patch into conversion series next time or while merging.

Indeed, with the 1/6 patch it works fine on Exynos5250 based Arndale board.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Best regards

-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

