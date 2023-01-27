Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 052CC67DEBD
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 08:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230515AbjA0Hz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 02:55:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230149AbjA0Hzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 02:55:55 -0500
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0057F6C127
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:55:54 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-4c131bede4bso56777147b3.5
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KvXOXKKiQZRBWlk+/UH5aeqFLgrp/Q8dsArxQepD8po=;
        b=YMLwzdtrOL/jQFgUGP5WdaI+kYSogJPcWWXKRBypcXRrGeS7gQtHHCR3ZeCg5VMRuN
         rkwBpfqxtROGaE27hcNZgrzgxyzE1uXYGCTQF7LpUFBcqJvrBBmuSZeSMwbmSgOt2hsS
         u54SktjVOFVZc2uFRHBiYOVquNskGN369w4WurXfqJYFnqAQ3gEsqOzk1SldFHGSVAkQ
         XkeE/3UKpnlUv4K+EbZnT/NxP3V0GxSrzAx2ZwzMbQJ2EjcfVnc7pEWrcNs05Jsg6f5x
         9GkPWVLHpMVYqB/7LMhgYWqxHFpsrM8+XpBiT24RjqumH9OUdSVbc0QMxdI2D9mRhJWT
         B4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KvXOXKKiQZRBWlk+/UH5aeqFLgrp/Q8dsArxQepD8po=;
        b=VBfoXoLfuWAXAVanIZAgo0DZ4E9EirzczIA3YRSzuT8LTSe/guftm9oAsJ6kc+/Hzz
         peWELPneoUKNeSq4WF0b5vonI8dZKuhDsXyvz15+uFmtXufY558W8LQWJTwrrsqL1TUV
         HnqtUgdDCgzwyP9vBUDWEvM9PmmbYCrmOmOy6o6NtyyBjk4KBpvzTC8/bDQvJCFijh6x
         NVTkYwZDytlEaolmBmqkIrqWqNEaeyLdnQ0Z+Yd11yqZ8eHzxLCVO6z6SuiiVOYwt+nk
         VnVYO6GKZ55BbPwnwjOKM2nIovtVxvdCte906oXDbP78bQ2n+yNGI14DW/JV/Wsu1qeU
         vIIg==
X-Gm-Message-State: AFqh2kpkzxXEX3QzD+vPk6XePSL02nkn9tWa1toCDiLrnrduH8g69mpx
        A/deipmVrkvJFa66TiVz8bWbHDHYfmafRqM4/kLuBbHP2rwsIw==
X-Google-Smtp-Source: AMrXdXse4U9cqOlyNcgIygOMXbyfxyQMZxc1OQjsv3xz7efO9xazS+6V5m1toUF2HYVLQgyU0p/gfv6JliFU9YQaWoI=
X-Received: by 2002:a05:690c:39b:b0:4f3:8d0e:edce with SMTP id
 bh27-20020a05690c039b00b004f38d0eedcemr3458366ywb.185.1674806154236; Thu, 26
 Jan 2023 23:55:54 -0800 (PST)
MIME-Version: 1.0
References: <20230123183312.436573-1-jagan@edgeble.ai>
In-Reply-To: <20230123183312.436573-1-jagan@edgeble.ai>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Jan 2023 08:55:43 +0100
Message-ID: <CACRpkda-qxXQE=OtfN0UMwU38E=xhGjY==4YuA4KG=hjfficiQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: jadard,jd9365da-h3:
 Add Radxa Display 10HD
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 23, 2023 at 7:33 PM Jagan Teki <jagan@edgeble.ai> wrote:

> Radxa Display 10HD is a family of DSI panels from Radxa that
> uses jd9365da-h3 IC.
>
> Add compatible string for it.
>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

The v2 series all look good to me so I have applied the patches to
drm-misc-next.

Yours,
Linus Walleij
