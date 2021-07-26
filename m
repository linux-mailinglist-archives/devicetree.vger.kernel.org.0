Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1745E3D5513
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 10:15:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232990AbhGZHc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 03:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232828AbhGZHcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 03:32:25 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BDDEC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:12:49 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id h24-20020a1ccc180000b029022e0571d1a0so5655205wmb.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9CoiKk7rjio2RKU+s3ML+lKUiUQc1wLkK/GH5VGg1QY=;
        b=c9CVGx9R/uCP+dtbA4o3A8K4gqhmdIWCcfv/W0+jiGY0wrz1i+wOhT2dVGYtitY1vN
         R+8yGxVHqMm1hp8RiRwvxXNbFKnhTgmIsynkLs+AiE81vP5jQ+R7zGp74Tb2CI4lU1DW
         HBFykmIGnqVq9XCGQockQWegrG+I5Srsg+3TQ2aDeLmKTsZk1bT1P6bL1KbP2Vq7IR70
         b7IdVAuLvRSvhzhu6Y0YjxNwAxL0/uLY45UlHDx11mAeXpCAxG0jPErfdLUMOlhuJmym
         2gDaGtgksrUV3ca5t2Pf5+AhtB1PrD12SEqOvP7wrY3iLru1t9WxTOfCAANmvp9Z9hDO
         wMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9CoiKk7rjio2RKU+s3ML+lKUiUQc1wLkK/GH5VGg1QY=;
        b=A4kvSdfoLhKhVKE8vw3yXjkb6QaT9Q4QWrn1FdPmXBaXQIPs+He9S40V3M+fy/LPGs
         KFBEJ1yCNDkZHnEX9DYzFsh0W/aYTYgGbYFewDe16jr24N8BJg6sOuUvSOQFaOwHWuvo
         hKTMu7bqmn7PD6QH3TJ0MsgIlwv0L17ImWjoX5352TjOp6E1jNnnjP31S4l2tlpEmoJH
         sJnBXJ0RNfaWJj/wF+m2Zu3kEqNZiZSUkpgBcV1c8432jL+xg7sxQHWnJaCFGOBzZtqk
         i+huI8XV4ND0RK0XfCZV2xbCNVKWarrUoC4g8KZh3SzE9sweWBJTnZCvIFaQTYHOwG5j
         En7g==
X-Gm-Message-State: AOAM530F6ffe0/oKigcgEaGRjxo0g6P5GwzYthrzk1oS9X6qiXmoWpwL
        2AGuuwgM2hOrjvSfXeDIop3MdA==
X-Google-Smtp-Source: ABdhPJw1KBlFH9Kv9XOSPT+ukLibgvYWWjL0nL1sHy6Lkc8xHILZFAWqyqy8ybzbNqYxjrCCf+mnlw==
X-Received: by 2002:a05:600c:3391:: with SMTP id o17mr13962613wmp.187.1627287167675;
        Mon, 26 Jul 2021 01:12:47 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:32b6:aa71:d2df:4f1d])
        by smtp.gmail.com with ESMTPSA id c15sm646762wrx.70.2021.07.26.01.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 01:12:47 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Artem Lapkin <email2tema@gmail.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org, art@khadas.com,
        jbrunet@baylibre.com, devicetree@vger.kernel.org,
        khilman@baylibre.com, christianshewitt@gmail.com,
        martin.blumenstingl@googlemail.com, nick@khadas.com,
        linux-kernel@vger.kernel.org, gouwa@khadas.com,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: meson: improve gxl-s905x-khadas-vim wifi
Date:   Mon, 26 Jul 2021 10:12:36 +0200
Message-Id: <162728713307.14205.16768883213869535162.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210622044334.769791-1-art@khadas.com>
References: <20210622044334.769791-1-art@khadas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 22 Jun 2021 12:43:33 +0800, Artem Lapkin wrote:
> Improve gxl-s905x-khadas-vim wifi performance
> * change freq from 60Mhz to 100Mhz
> 
> 100Mhz works well same as in meson-khadas-vim3.dtsi

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (for-next)

[1/2] arm64: dts: meson: improve gxl-s905x-khadas-vim wifi
      https://git.kernel.org/amlogic/c/6b197abe56feeafe9c516dca1b3ca3742200adba
[2/2] arm64: dts: meson: improve gxm-khadas-vim2 wifi
      https://git.kernel.org/amlogic/c/4b5260032ec691b11a9185f7f38f5761e67fab48

-- 
Neil
