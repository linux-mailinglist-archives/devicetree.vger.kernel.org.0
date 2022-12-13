Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7524B64B09D
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 08:50:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234710AbiLMHuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 02:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234704AbiLMHuX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 02:50:23 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAEFE13D04
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 23:50:22 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id j206so16661706ybj.1
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 23:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9l2fk7v4XnHQZInb14bkwvMKyNtmuRr/NuOTSxyg8xQ=;
        b=ivRJ0ETZwUXTVOJRHoRUcoNeITJZE0Cz5IsDcLvN8VfcMplzrCCPor13Yqscl5ciTd
         2xSSS6o1zaFj7Tn4lhDfX/oVH5MwU6lxGcEFIViVra5kqrnf1oY4s4Z/J8oAeiKDcFnV
         qdw+Si4ICWtf7pXSNagstZgAxGWr4TGaWBB5yeixP7tlrIYMA4bZQhlnLM372dmSVjln
         lcuf2nXe6LzlyAelVq6D0/Bdb6LZI7KvhtMo5qGgeRlX2fcodEOtdzf8+3UZV8xFrFIN
         eYlZj2o77mdtSCqEtSng1cDHkvpaWQgNPe0w0tzNGePgBZuKWwqPhMZedlgZVyB2kbGL
         6SaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9l2fk7v4XnHQZInb14bkwvMKyNtmuRr/NuOTSxyg8xQ=;
        b=WBOvGRmIggT244SI4X7++sQdOpDGzaXLg9kaKlPpihQctCLsukjopxz8K1aKBtvGzm
         2zkcd6RteSpRCOtfRGZTdfpHwx/wpvUfMnEFb3U3eQJrG+Z/Ue+gNuY8tDZxzHzo/KHi
         RHXRsoVcbb7esY3O3rgm5nVcp01HVzSDZVkON884E//8Ir76NLPTJZTdynXpUf1sLW5B
         k7GmsMgQ4yAGdjAumM0AIHr+f4uA254UedcBwbmxCzJdrkJtijiaH8ELuPmDFOX4Nh0q
         ey4edBbpeukD1dJlQwLMEEhli0U7ai5wbM6mzKfc3xL+WgqR4JwwxV0U/qhremPA1EhU
         z9nw==
X-Gm-Message-State: ANoB5pl9syKQOuuY3/WvkY7MXLC370FsKXVPrpqCalILXkJOUjOGmxH5
        S6j2PNz7CLP0nd47qQ0D04wk6GDnvOMqMfvwVyWKnw==
X-Google-Smtp-Source: AA0mqf70ndlyAVU0oWBOjUZhsFK3Q4bhMX81MCWGxZ6MMtnOPJFEF1WoxgVutlf+BQy0zSpsA5oEfF0b/tXJXANn29I=
X-Received: by 2002:a5b:ac6:0:b0:702:5c2c:c9ee with SMTP id
 a6-20020a5b0ac6000000b007025c2cc9eemr13964713ybr.44.1670917822086; Mon, 12
 Dec 2022 23:50:22 -0800 (PST)
MIME-Version: 1.0
References: <20221123183124.6911-1-jagan@edgeble.ai> <20221123183124.6911-3-jagan@edgeble.ai>
In-Reply-To: <20221123183124.6911-3-jagan@edgeble.ai>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 13 Dec 2022 13:20:11 +0530
Message-ID: <CA+VMnFwVt=t6kmYrvGgSJdkZDnHMuxKPHtyFCU7vBaGHa4hc6Q@mail.gmail.com>
Subject: Re: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for rv1126
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Nov 2022 at 00:02, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Add rockchip timer compatible string for rockchip rv1126.
>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---

Daniel or Can someone please pick this? Heiko is holding this series
due to this patch.

Jagan.
