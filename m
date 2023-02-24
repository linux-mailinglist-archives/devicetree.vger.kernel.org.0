Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7147D6A1969
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:03:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbjBXKD5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:03:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbjBXKDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:03:31 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85CC5158BB
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:03:10 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id s1so4367050vsk.5
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=81aqISuq2eYUnck2go8oizXxt9eqFaaUJ7kbWY5LcaQ=;
        b=BBIaeUfzGQ8ePb1MEWkKRMSN306q1XdtDnvrgaXMI2a78+E4hErLx37tCLGhJSxY4A
         RMdxBfp07pBnOryIBtcyvGw0ia26eC6PpMmP3Wm0XRyE7bRga3NyH5nlZ7HkoxceIc6S
         Ybi1UNdfJUUIcirP0Oxp+u2C4gL8bYn7DmAiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81aqISuq2eYUnck2go8oizXxt9eqFaaUJ7kbWY5LcaQ=;
        b=dh+trHfIdfI273/55HxvSwAnk7dEtMmHiLW3d9+l7d7MLW/aQcActBgFUpCXZGoNnu
         bwd4WyGwccmGejwYtBBETLXX1yJJl0vs1kCGApSZ/ZyzP823Ak4BsVrk5tjepf6QtPgb
         BPNqMbxjGjeydV4K5Qnmak5LWS5SkchMkRzRE5Jh7uaiVK+YcIRQYHNu2iVK6MN9oG4/
         PgtLJNVy5jmLKQTyVBKHPcDvPB2O29r4VSZvIIYH8XSwBz7sMikQB6kufx0GGI6F+K0X
         L9iD8gsda8Yu/xarAH/tzTSe0Ge8PRR98fC63AXUNOrW/zuP3Sh+ojyXcxDmT8AhdBAL
         nGSw==
X-Gm-Message-State: AO0yUKVgjXoptK4Zl+OPDA6ZfPNN5+VuCHgmbQcbmH/btcuy35sYiMNJ
        GpIB5BjLxbzq6lod/03Lej8naHtDXKQDX6bNRNIHtg==
X-Google-Smtp-Source: AK7set+3I53BDKCorZLNVo5d0QftsqocEySXrxgfRxSbKglMQGMQLOvpEbCtJonqcgFcA2dFPOyYsedOXPEqiC/zdec=
X-Received: by 2002:ab0:53d5:0:b0:68a:5c52:7f2b with SMTP id
 l21-20020ab053d5000000b0068a5c527f2bmr4368520uaa.1.1677232989554; Fri, 24 Feb
 2023 02:03:09 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-17-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-17-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:02:58 +0800
Message-ID: <CAGXv+5HgMPvsCUWjeofYBbrGKBvP_eE70exKZ2QLRFuMvn7PAQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/16] arm64: dts: mediatek: mt8186: Add GPU node
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a GPU node for MT8186 SoC but keep it disabled.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
