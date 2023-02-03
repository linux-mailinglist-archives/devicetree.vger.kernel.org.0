Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEAF068A522
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 23:01:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232956AbjBCWBr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 17:01:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232283AbjBCWBq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 17:01:46 -0500
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A55A9111
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 14:01:45 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id k91-20020a9d19e4000000b0068bca1294aaso1794308otk.8
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 14:01:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sLBbKHff03+vVGWqe2MOMoSPPBdcGrhs7s9dvLhZ51E=;
        b=0qTkZ1hdDhteKm699IQNbZO607/TBkwj3ShX/UFmceGdDiG4TFXpyfTLlCSCza8NsS
         EnnYU/w7B/NoJ/lr1btTIpYNzNTEyJHLRZg3uhdhJZ7yeP5ZMpWNNV9rc7jUN7jqkJ4B
         GN6t6izOtBVkFAs1IXuA8GeLqd/ykDmdSrh35YwDH/lhdtlBjsdm/cxkRygYw5jqH9ey
         J7Wpe12OCYgKsml4ee3rCbXjuA09HNKt2kO5rOqTZTVcY0CZZXKB9FAib7ikJPhvl8Xi
         06nw1WGcPoO4Wr0Ta3Uo4Y/x7G34YCNkuccMHGXYsjCYvJqBnGXBWf+f6L76rSuKFxgv
         k4uQ==
X-Gm-Message-State: AO0yUKXWbuHdJjRmpJu3fu940vmkhP01PBNuFGkmxdrUagLXhaIlxL7e
        t+p2iaXRpd3ZiEv84FXC1w==
X-Google-Smtp-Source: AK7set8/0qEFxBOGZr4WEUquF66k/9USt4Hb9aZLwSyX4t9XclvAwOXr5VkKe7LmJGpajO8W4MjLcQ==
X-Received: by 2002:a9d:66ce:0:b0:68b:d30e:7aa3 with SMTP id t14-20020a9d66ce000000b0068bd30e7aa3mr6048424otm.33.1675461704923;
        Fri, 03 Feb 2023 14:01:44 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j74-20020a9d17d0000000b0068bd04b4292sm1612292otj.31.2023.02.03.14.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 14:01:44 -0800 (PST)
Received: (nullmailer pid 952016 invoked by uid 1000);
        Fri, 03 Feb 2023 22:01:43 -0000
Date:   Fri, 3 Feb 2023 16:01:43 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: irondevice,sma1303: Rework
 binding and add missing properties
Message-ID: <20230203220143.GA947805-robh@kernel.org>
References: <20230203094239.25700-1-kiseok.jo@irondevice.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230203094239.25700-1-kiseok.jo@irondevice.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 03, 2023 at 09:42:37AM +0000, Kiseok Jo wrote:
> Fix according to the writing-schema.rst file and tested.
> Add the missing property as compatible, reg, sys-clk-id.
> 
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> ---
>  .../bindings/sound/irondevice,sma1303.yaml    | 35 +++++++++++++++++--
>  1 file changed, 32 insertions(+), 3 deletions(-)

What's the output of 'make dt_binding_check'? Asking since linux-next 
has been broken in different ways with this schema.

Rob
