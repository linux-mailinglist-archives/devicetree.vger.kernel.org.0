Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 794AA4398B1
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 16:33:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233151AbhJYOfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 10:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233583AbhJYOfZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 10:35:25 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18CCC06122A;
        Mon, 25 Oct 2021 07:33:03 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: kholk11)
        with ESMTPSA id 5DB1C1F42EAA
Subject: Re: [PATCH v3 1/2] ASoC: SOF: mediatek: Add mt8195 dsp clock support
To:     YC Hung <yc.hung@mediatek.com>, broonie@kernel.org, tiwai@suse.com,
        robh+dt@kernel.org, matthias.bgg@gmail.com
Cc:     alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, daniel.baluta@nxp.com,
        trevor.wu@mediatek.com, allen-kh.cheng@mediatek.com
References: <20211025105635.30625-1-yc.hung@mediatek.com>
 <20211025105635.30625-2-yc.hung@mediatek.com>
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Message-ID: <b11f6124-9c94-3c09-7f15-ce952b5f27bf@collabora.com>
Date:   Mon, 25 Oct 2021 16:32:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025105635.30625-2-yc.hung@mediatek.com>
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Il 25/10/21 12:56, YC Hung ha scritto:
> Add adsp clock on/off support on mt8195 platform.
> 
> Signed-off-by: YC Hung <yc.hung@mediatek.com>

Acked-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   sound/soc/sof/mediatek/adsp_helper.h       |   2 +-
>   sound/soc/sof/mediatek/mt8195/Makefile     |   2 +-
>   sound/soc/sof/mediatek/mt8195/mt8195-clk.c | 163 +++++++++++++++++++++
>   sound/soc/sof/mediatek/mt8195/mt8195-clk.h |  28 ++++
>   sound/soc/sof/mediatek/mt8195/mt8195.c     |  22 ++-
>   5 files changed, 213 insertions(+), 4 deletions(-)
>   create mode 100644 sound/soc/sof/mediatek/mt8195/mt8195-clk.c
>   create mode 100644 sound/soc/sof/mediatek/mt8195/mt8195-clk.h
> 

