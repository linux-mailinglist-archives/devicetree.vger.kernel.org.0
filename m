Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F846504C83
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 08:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236727AbiDRGTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 02:19:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233208AbiDRGT3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 02:19:29 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2DF817E23
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 23:16:51 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id ck12so3686423ejb.4
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 23:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R0p9SyM2Gw6ezgsQBgHwJlt6cnUQdSZIr2Akmm0cjIc=;
        b=Bur8D9FzAagdjm0aTmG8lxdbZQSBX+S1iB2gHK6R/tkzttSR9FtCfwBNjrIvsxJkS5
         bZdSK7WCvDEnspxJx4B0zK+YQidIQh0FdRHVycq3xBIYuelw2lrcYBA9pVFOclpqNA7Q
         o6rr6cGN0F8093vbW3/OHtdLHM81o5SRn4cKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R0p9SyM2Gw6ezgsQBgHwJlt6cnUQdSZIr2Akmm0cjIc=;
        b=LVSodSKDz4T/keZjtqkvQHXtnKmwWuf85aLpp0Rqwvp0ig3H76Vk9S1dJmkpLyrX2G
         xGrVZCCJ1wNkL+FZMaZnxKCeZUANLg49z96AbHnJErDjUKTcxZ52LIYW2OY3HVmSP7YL
         +W6FXOMlmh7Rfv588si7IOU2o3cMgoA0DexGC+ea7Sl7w655n+RnwxeES/ykGlnAX02b
         pwLeUXLYfGCXH1IRIfPi3noy7yRnYe8TBTd+OvFkl7AvydYNBYvJ81u7VjpkweW3UHrL
         MkWFgmhlpwVLIA8tZ4Lb84XyoJ/RC+ywegkfV/mhAZVwzsiVuZJBRmc9vuiuKzYnMqdi
         A68w==
X-Gm-Message-State: AOAM533nenT8k4EDLvxpRt/aS+6YUVKH/RT+mZwvZrdo/ZfOyMa6oHCv
        9q4p5M+RsLOoJ6K7RFO4cBgNM1XO7VOYtlX4
X-Google-Smtp-Source: ABdhPJxZ2+Wyc3ke2av37ZFesy7BAjCNSQxPSJyyAR9jv6L3VlZ/fiBtfO2NRaU5cMS1BZsXxN48Kg==
X-Received: by 2002:a17:907:8a23:b0:6ef:813e:1e63 with SMTP id sc35-20020a1709078a2300b006ef813e1e63mr660970ejc.91.1650262610294;
        Sun, 17 Apr 2022 23:16:50 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id a1-20020a1709063e8100b006ce06ed8aa7sm4302583ejj.142.2022.04.17.23.16.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Apr 2022 23:16:47 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso11188834wme.5
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 23:16:47 -0700 (PDT)
X-Received: by 2002:a7b:cbc1:0:b0:38e:7c42:fe38 with SMTP id
 n1-20020a7bcbc1000000b0038e7c42fe38mr14247667wmi.51.1650262606781; Sun, 17
 Apr 2022 23:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220414025023.11516-1-Nick.Fan@mediatek.com> <20220414025023.11516-2-Nick.Fan@mediatek.com>
In-Reply-To: <20220414025023.11516-2-Nick.Fan@mediatek.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Mon, 18 Apr 2022 14:16:10 +0800
X-Gmail-Original-Message-ID: <CAC=S1ni=pHPDAJUV2b=qWm-O26fS37wQjuL014eKoE491K6wGQ@mail.gmail.com>
Message-ID: <CAC=S1ni=pHPDAJUV2b=qWm-O26fS37wQjuL014eKoE491K6wGQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: mt8192: Add node for the Mali GPU
To:     Nick Fan <Nick.Fan@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        srv_heupstream@mediatek.com,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, wenst@chromium.org,
        alyssa.rosenzweig@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 14, 2022 at 10:53 AM Nick Fan <Nick.Fan@mediatek.com> wrote:
>
> Add a basic GPU node for mt8192.
>
> Signed-off-by: Nick Fan <Nick.Fan@mediatek.com>

Reviewed-by: Fei Shao <fshao@chromium.org>
