Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 428356A672B
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 05:54:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbjCAEyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 23:54:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbjCAEyo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 23:54:44 -0500
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A97238013
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 20:54:42 -0800 (PST)
Received: by mail-ua1-x933.google.com with SMTP id f20so2852848uam.3
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 20:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvFH86Wx5RN3SI+RWTx88o9Hq2BKwJTQQWbayEx0CcM=;
        b=eLmZKh8w5eKPslfPj682pp6AqDMDr3kDWb9MF5eICVLXGgESSxa3BZT8UIJn33hSU8
         hgv1OYwD5V4o7SJjoloP4rm82+v9A4iC0QneD6l2cthy6ASnHBFg1fsePr0DnDVpvadv
         AX5goEfzIeCbD+vcU+mmaTqr+EnlRGKiw/NRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JvFH86Wx5RN3SI+RWTx88o9Hq2BKwJTQQWbayEx0CcM=;
        b=K6qL/oT3Laqg0Py/cgVo7Lph+H26nwC6JPaHejX8YusAtqmDwNv0AK/ZLQPPgmXdm1
         ob67t8bE4Zc4Ed7YaGlli1n9TdGblMsSD2HpQfoNJ00T4TzQoVa7rnE8K/kgVFpoFfxF
         b3Y/DsrALK7+zzlhbNTzeWbCKI+BtQ8AVaHLuCfI9jKX7JYJNQgmGaFT2s9LZ6zCrqdb
         wchcaYqSlaZQduLMloUfqWBGlj9CUDvkm+E0deSJEZNqeT1UYBYvwP5Q6wHQd3kaTJOT
         UHxiz+ZBNyLneY3PhkAbycsitxxUUKdqZ+GtLwwUYSQ5rAwoOCpZd/zEZdGQjyd/mWgE
         LY/g==
X-Gm-Message-State: AO0yUKXSUMHhIhbkoH+wAJVclp/y87ssJ2JDW3puhuOteiiuH6zHUyJE
        zmL78bJDbTmnKzwbxzpvLi9ZFzWuh0q9GUzIDV6FjA==
X-Google-Smtp-Source: AK7set/N+eInI6S/VIF++zybR+zm/0n4DGjWC3U76j9ITkp75HBt6PzFpjINHEpOMYtqRAIzBvtKqvk/lZ4UssMcvxc=
X-Received: by 2002:ab0:4a97:0:b0:68d:6360:77b with SMTP id
 s23-20020ab04a97000000b0068d6360077bmr3021515uae.1.1677646481168; Tue, 28 Feb
 2023 20:54:41 -0800 (PST)
MIME-Version: 1.0
References: <20230228104741.717819-1-angelogioacchino.delregno@collabora.com> <20230228104741.717819-19-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230228104741.717819-19-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 1 Mar 2023 12:54:30 +0800
Message-ID: <CAGXv+5GYc1X0J7tXfqQ0yj5rCFgEcTN5kwB4720vCkNvEKgiOg@mail.gmail.com>
Subject: Re: [PATCH v3 18/18] arm64: dts: mediatek: mt8183-evb: Override
 vgpu/vsram_gpu constraints
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 6:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Override the PMIC-default voltage constraints for VGPU and VSRAM_GPU
> with the platform specific vmin/vmax for the highest possible SoC
> binning.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> Suggested-by: Chen-Yu Tsai <wenst@chromium.org>

Chen-Yu Tsai <wenst@chromium.org>
