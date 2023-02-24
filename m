Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC54A6A184B
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 09:53:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbjBXIxV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 03:53:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjBXIxE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 03:53:04 -0500
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DEE78A4B
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 00:53:00 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-536bbe5f888so262082107b3.8
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 00:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WXBxCzUTwUkY9VpXwOuTsg9QsDGpyRlggQ0Ehs3LnAQ=;
        b=kLCBct7OJ0ZWzc41yyFNoAbZU/0AeYHVz7PrnBKPVpdqsXs2IAdyj+vQZ4TlLmrVwI
         weqFuX+933EX7S14S/LlRbwYOj0fFXjgMSzRLlN69zyC1b53+Gb1kHUBmbSLcPTaJfSL
         mpJY1tS03b3k21dWA0+dIK2361RNm6DE73/5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WXBxCzUTwUkY9VpXwOuTsg9QsDGpyRlggQ0Ehs3LnAQ=;
        b=NfrsKhgA3Azk5d6qFl5RqyjOMk1mS7BP27R5YOz6Kws1U7LCLGkNNGlGlM6pC7E/VZ
         DENex8XNEClKjacCfA02ep0TB7A8JxcCmret9DJOIDVE6Wb3S/x/cGcaqZIsdBU6fM74
         4qVnixSfG8EeSO8hd3MJlDVp4G/kpe2NX658xoAYMCxhAMoheQZ35DOgVHUaHVs1SJPp
         n8F1/sZvitLzFm7Ar9twL26ZS+6I/fAoNHoe7zRjgrACB/PryEsZJ3d4AdNaKa2lZaUj
         vvNcf6e8UaHCBdMX8Mp4OrKLl2FR83rjoLWA2ikb62NanH6A/1TIX2WUNAgqALh8cBuq
         Cx/g==
X-Gm-Message-State: AO0yUKXxUUHdcUcHHdFN33ldept1ZfclYQaCFkNzlco+Fx6/6grxAjcX
        AMbh+Sqk2ne2P7KPSOK6fyaAewT93miWwTx8V5JXmvlGeXvGVrwl
X-Google-Smtp-Source: AK7set+Ee//aV+bgfKyyjEpjRL0bSpqErjnIpTNSDdx4FSfXGZbHvCA4NH6lrLlFfb3LI0RYGdapOLHeJoNvs/rJzp0=
X-Received: by 2002:ab0:5550:0:b0:688:c23f:c22f with SMTP id
 u16-20020ab05550000000b00688c23fc22fmr3805805uaa.1.1677228765555; Fri, 24 Feb
 2023 00:52:45 -0800 (PST)
MIME-Version: 1.0
References: <20230223145426.193590-1-angelogioacchino.delregno@collabora.com> <20230223145426.193590-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223145426.193590-5-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 16:52:34 +0800
Message-ID: <CAGXv+5H7ADKUu1bsGrF5F-EgJBM6WW0N+AFw=m+hH_00QGHDew@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] arm64: dts: mediatek: cherry: Add configuration
 for display backlight
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

On Thu, Feb 23, 2023 at 10:56 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Configure the hardware PWM for the integrated display's backlight:
> all Cherry devices enable the backlight with GPIO82 and manage the
> PWM via MediaTek disp-pwm on GPIO97.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>

with some additional patches to enable the internal display.
