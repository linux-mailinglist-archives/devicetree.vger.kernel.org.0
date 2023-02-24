Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6045C6A1961
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:03:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbjBXKDX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:03:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229869AbjBXKC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:02:59 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 208FB1688B
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:02:23 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id o2so7231607vss.8
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q+autSyfRoDxt30ewxX1YvLKRlg9HdF20RRUwqxpiDQ=;
        b=aFhZU0XUblsofa3a8f2lktGrYKDwUsgUlyVAbG3FaKpNahjKNbSBMVD+Ctdwwgav4S
         rf8w7N5X1uZw4A14zW3pxmd1/zEsxl7usMc1Ezrozmyc4E/7KdDDUZQCJCIyd2szMQFX
         JwAUTkLI4VsAnLKgDPxBZgG3E7MSQ16CbvR9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q+autSyfRoDxt30ewxX1YvLKRlg9HdF20RRUwqxpiDQ=;
        b=rSquolwg26rao+0T4btbayVpGb6ko+9a0opdzhXpi9qLvj9LmsttA24eyRvTOh/NOX
         AvlDB/D0tk9wkyLLQfOECKoUyozQpYUVTzEmPHIhnPlp8sN/cQ6K4J0+JzipORLb6+oJ
         QYlsvFTcGfQ0ORppTs0ui/cGr4g2AoMJT/X/7slb8H2aXSm+zUX3P7ONWLsa/OTBd1vg
         BR0Lw9eIkTltThJBco7PCdbsLrKQByAIroHIpK7ZuwtGrrhW/Zxu9/a2ZzVe5dAphq44
         cVz/GJADM7kszBrPQM9da8KThsUEFdcPNYxo9ezV32b7r8SSeF+h8p1LkOA+2duyKdXn
         A/LQ==
X-Gm-Message-State: AO0yUKXDlpxFnlDPyS8BpXRYA1sX8D9h2FJY1JNtAJJpSxqZ9noIMXtY
        D2n7P5dxwAtjlaLE/nUXyPCOfhoLIJWRz34XadaUbw==
X-Google-Smtp-Source: AK7set+Bn1cvtHKXjMtQ0kPBgrKR6znXw+v4bxXjopgE6kLhrCUZeA+NfnCjErHBa621QVIU5P4rewQP7hcs7CGz+eY=
X-Received: by 2002:ab0:1014:0:b0:68b:90f4:1d8c with SMTP id
 f20-20020ab01014000000b0068b90f41d8cmr4232921uab.1.1677232918971; Fri, 24 Feb
 2023 02:01:58 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-15-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-15-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:01:47 +0800
Message-ID: <CAGXv+5HhtA4J43AVkcb_GS2Qvi7p_N+HkCBnscbsH0ei5u2vxw@mail.gmail.com>
Subject: Re: [PATCH v2 14/16] arm64: dts: mt8195: Add panfrost node for
 Mali-G57 Valhall Natt GPU
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
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

On Thu, Feb 23, 2023 at 9:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add GPU support through panfrost for the Mali-G57 GPU on MT8195
> with its OPP table but keep it in disabled state.
>
> This is expected to be enabled only on boards which make use of
> the GPU.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
