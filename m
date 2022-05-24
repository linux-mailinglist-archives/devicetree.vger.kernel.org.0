Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FD85532329
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 08:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234988AbiEXG2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 02:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235043AbiEXG2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 02:28:13 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 536ED71DB7
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 23:28:09 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id eg11so21710858edb.11
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 23:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N3jdbvgtlnw8zIaSv0DQqGc3caOnAXLJMAe+8f0UCS0=;
        b=O5lAcyn/cym/3OrYhOLamVEgFGcZ2RXZc2FY/HnELt4FLoY5cU6Qzd1dh/CbLJMwNP
         qKUgSM+Muoz1BLCPqw4YgLhVdAV7cvJn8lsQADC+YX0odK5WcxdVUpSqQIpNLI+vWSVR
         bGYPWSffJOcjIzQxvLSsgg4r+doFWCFL4Ke0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N3jdbvgtlnw8zIaSv0DQqGc3caOnAXLJMAe+8f0UCS0=;
        b=KpDU165MeElYtNYEuoakosgHW7eVNMUr1yVHMdqKY7+t5QLHoVnZcj9LZHJgG3Zbwb
         pAifj7lsrM/eg7iY7Ge6PCQ4KoZ3Q8ap/WC7aHPFFxsawiWMomdi7fqJEhNlBle1ryQB
         G6OJ0R5QkbPRXFZDq11H2//qmGa/sKWvorJLOJrGTmy6LRio6fvWnqU4ASE8FK5Ngi/P
         cmWcEN+Q8hoT/PIPAEW/Ivd9sxg4+n0+8k0NjxkQgcCvQofpxkd930uXcJ1p1LdzHrnA
         AdKh9NYCdXmVV3k+ztRMpoLETZc6E8U5LGUlxqwgFMiFcaQu+prcLz3SvBgliysTx2PG
         eH9Q==
X-Gm-Message-State: AOAM532xZ9V5gyyCnvbkEIyP8InzMFaoG9xLteDA56tXoxxaYAx2NKNl
        zdgG3xwZ9M/oSVPAAmZkevuHpgZJROmJdiDZ2syKqw==
X-Google-Smtp-Source: ABdhPJzBItlY43uGQ1di/pvyiuI5cG2uV8pK8/a3MYLK073piDHgVWBSg8bsrQX2VghdcQWs8SvYrgrhAjczS+pKxbA=
X-Received: by 2002:a05:6402:d51:b0:42a:b2cc:33b2 with SMTP id
 ec17-20020a0564020d5100b0042ab2cc33b2mr27392564edb.248.1653373687924; Mon, 23
 May 2022 23:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220523102339.21927-1-matthias.bgg@kernel.org>
In-Reply-To: <20220523102339.21927-1-matthias.bgg@kernel.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 24 May 2022 14:27:56 +0800
Message-ID: <CAGXv+5Gx6oGvvL1aSWfZC8cpE7mFyr5g66c=AHm3jkNCuXzakg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Delete MT8192 msdc gate (was "clk: mediatek:
 Delete MT8192 msdc gate")
To:     matthias.bgg@kernel.org
Cc:     mturquette@baylibre.com, sboyd@kernel.org,
        allen-kh.cheng@mediatek.com, weiyi.lu@mediatek.com,
        chun-jie.chen@mediatek.com, linux-kernel@vger.kernel.org,
        ikjn@chromium.org, miles.chen@mediatek.com, robh+dt@kernel.org,
        linux-mediatek@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        angelogioacchino.delregno@collabora.com,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 23, 2022 at 7:19 PM <matthias.bgg@kernel.org> wrote:
>
> From: Matthias Brugger <matthias.bgg@gmail.com>
>
>
> The mt8192-msdc clock is only a single clock gate. This gate is accessed
> from the mmc driver directly. With
> 4a1d1379ebf6 ("arm64: dts: mt8192: Add mmc device nodes")
> the only consumer of this binding was deleted. Delete the binding
> decription and the clock driver bound to it.
>
> Changes in v3:
> - Update commit message to explain better why we do ABI breakage here
> - add Reviewed-by tag
>
> Changes in v2:
> - Delete compatible in binding descprition as well
> - Add RvB tags
> - add Reviewed-by tag
>
> Matthias Brugger (2):
>   dt-bindings: ARM: Mediatek: Remove msdc binding of MT8192 clock
>   clk: mediatek: Delete MT8192 msdc gate

Whole series is

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
