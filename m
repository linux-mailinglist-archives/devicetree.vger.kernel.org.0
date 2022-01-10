Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9623348A412
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 00:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345782AbiAJX7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 18:59:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242630AbiAJX7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 18:59:05 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7FECC061748
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 15:59:04 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id p14so14540000plf.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 15:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=ncMyS/M82TAX0XzN3Es3I6cPGmtlnCCuAh/Ld4ihDGA=;
        b=vsiJy2tmFD+8MJJl47N74HWMFB9qYdMh05Faacv/sNB+9szwwAe4GfWQTcig28Vtgp
         FvxsC8RbBbnBWJQiO2Bjdq0jU3L19hSVqWYqF+Q1t8mYKcvq9xrD9htGhd0xQqiEQekT
         OE0HXNk+VnaU3iOGiDGPHhkB8nsPpxtV8Yl4Xe8kA5SE1Cht6FwpsMv3rw7jxVEGc5LR
         92a6i8Vh40IZvUyGvck4uNX2DXM5jo3A6sK0snbPh1dGiYEzt21kW2eANAjoftbb9ltI
         nRPjHTyuoSe6iq4/kh6lG4NjCrGRPT7mokzFhryePmirBqH6sgYaWwZK4IDlcFMITSwx
         CCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=ncMyS/M82TAX0XzN3Es3I6cPGmtlnCCuAh/Ld4ihDGA=;
        b=P+2kyl0Z5R7TbqTDM4omLfv0ZBLiJZLTqRhXE7juGdsZoYLDNDS6B7mxxQhyvRDV6B
         2LdbwZixq5HwW9lc7cTWYeeuQKd978NKydSyvqpOjPC8qgHXQnMUmT5GMQofViC5DxaD
         DoZwlcVLWPJ9T/svjHonyuweuWnJQxYwiOM3myU8l/0tZA4RemXir39x/xhOyg52cSLk
         KODsWlVJJOVY+8YHJVbg/0JXxCxRalDbJ8ow8YDnNU+Q1f0Nm9TxLgyR4qGij4ddGMD9
         dFJ1L5DKqHb+EE8kK5R+3n2QdxbKyORviWNXSU7bbgOuAVLC4pfS1qVuWxopufwWBUG6
         0N1A==
X-Gm-Message-State: AOAM533R/EpYwjbBR7YF1XfPNDytC8t1Ca9b+U+H5rOmf709MDOvvoQH
        6YFMJkXglxq30BBoNz0NqhTidA==
X-Google-Smtp-Source: ABdhPJzN00U8cjIpP1EbJq7jDhQEN28fmWpurMfRCDK/PSD00fjf1an6Mt7OpCWls0X5r6EEidcmYQ==
X-Received: by 2002:a62:cd41:0:b0:4bf:3fb3:82a8 with SMTP id o62-20020a62cd41000000b004bf3fb382a8mr1938401pfg.66.1641859144297;
        Mon, 10 Jan 2022 15:59:04 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id pf6sm159173pjb.10.2022.01.10.15.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jan 2022 15:59:03 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [v6 0/5] Mediatek MT8195 power domain support
In-Reply-To: <20211116025045.5401-1-chun-jie.chen@mediatek.com>
References: <20211116025045.5401-1-chun-jie.chen@mediatek.com>
Date:   Mon, 10 Jan 2022 15:59:03 -0800
Message-ID: <7h5yqruoqg.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Chun-Jie Chen <chun-jie.chen@mediatek.com> writes:

> This patch series adds power domain support for MT8195
> and is based on 5.16-rc1.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

