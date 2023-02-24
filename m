Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0C6D6A1990
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:08:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbjBXKI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:08:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbjBXKID (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:08:03 -0500
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64ECF658C1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:07:01 -0800 (PST)
Received: by mail-vs1-xe32.google.com with SMTP id m10so18802054vso.4
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NP+TQ3vF7pcinlUFi6f+VP0D/VnVl3SCasWI8iXNvq0=;
        b=KzZ5FxXVT0djdApbCtHaE9KS4cMeCjftQ8c/GWwrWv1pIJR9tM3qJz2xBCtpWaN+Bs
         sE3RYtSLvumAu27LZfjCtQaAUeim8VIqQpug9Ya/Lu1xm3WLaAW/4FkZ84BZlUGVpaRk
         Gjaj3AONrbUsaowofBD5mee67ynkPkRsuKKBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NP+TQ3vF7pcinlUFi6f+VP0D/VnVl3SCasWI8iXNvq0=;
        b=o+CW4U4KuoBCxLFAyrSLZxMBbOVaKXEFxpatVu8TJU8rwWHTdVzHfYiQ56HnIuD3oA
         QjvgmJ9PgnKcfNAEJcSBbnBUpk5mso9PjaoGG39MbF7blqmjUqbFmEfBdBBQheg5k1GV
         EnNTv5WuUxivcx87YnP3/KxPMTujHqU0hogbPBtHeHbOWw8hx5ZHVK/a/d/ZFnHWZcNv
         xCpSXvlYOxV7yVS+taBistLlFixNQ/9upYPPCgl0Ou+gkJSRRNG+xI0AtQl7ef0eQzOz
         Qv1XX5yIoCkXvdMNSXecYZ62lvQgkfzyNuVghP7lSMqlZS5NkGmwUuK/FM7We384dHFu
         Er8Q==
X-Gm-Message-State: AO0yUKVwxjd1I2VRIJWQBcLXv8wxon5bhCVMx1QGXKFxa4kGZNOiV91H
        I/6TsHvKa5vkNbn1rl3HnHmEpWGbq3mA9L7tNjRfIA==
X-Google-Smtp-Source: AK7set81B6fbTOsk9gsG+fgNxGLa95H8zl0o1rhuh9Qq74RmfTqPLTa8b5jt7B5yFcT3UXrYEcLMEONRH8yre0k6t6E=
X-Received: by 2002:a67:c584:0:b0:41f:641c:f775 with SMTP id
 h4-20020a67c584000000b0041f641cf775mr331464vsk.3.1677233208519; Fri, 24 Feb
 2023 02:06:48 -0800 (PST)
MIME-Version: 1.0
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com> <20230223133440.80941-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223133440.80941-8-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:06:37 +0800
Message-ID: <CAGXv+5Fds=fxBff8T+scj+GHZEF3YAHwNturkr1nJfWoWDOmyA@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] drm/panfrost: Increase MAX_PM_DOMAINS to 5
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:35 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
>
> Increase the MAX_PM_DOMAINS constant from 3 to 5, to support the
> extra power domains required by the Mali-G57 on the MT8192.
>
> Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Steven Price <steven.price@arm.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
