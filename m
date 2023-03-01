Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CCDD6A6702
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 05:38:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbjCAEid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 23:38:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229697AbjCAEic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 23:38:32 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 440EB3801A
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 20:38:28 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id o32so17938396vsv.12
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 20:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28yKfwjO/0s4rJfe6O0bQSgJmZe5IPEVZaGiHKCxTg4=;
        b=ltkNxU1yuA7SsUdnMUKFZgbgRjVolNxel8F30fl8qwMT2mZ1gkbagUUvp7KPIZb9Aq
         cqKY6RXZOfPn7rsWN+BPGfLphSlLwzpHvF67QeDuAvB4SvFJml65XJaT2vWDSQN1afSo
         AZ1zD+02Au1E68OYq07MYfZvCt1TE1R5m7iGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28yKfwjO/0s4rJfe6O0bQSgJmZe5IPEVZaGiHKCxTg4=;
        b=GC/GP/QTXqCNzVytXtOLrD1NBegnugGRiT1qVZSZ7ggR7zP5ks0bZq5CH03dnHBxSk
         6vRlVZHJtumGc/QI8gSyhDIm4IIj92NnVx2zovOj5xQRsxwwJB8QwZ8cnBBqZPSLVO8O
         HWgzs0PDHn4aYLmC9NKBHnndB1X3IkwId1pi6+HZkHWP7NDN97CV8UxxX3MRkoO9vnTq
         9sG+x2eAOAl/K7mJaVSKqDRvzbpnwN40iq0YJ9SwQ+zBnU9BM92yDV2FwTp731DCUCWb
         9RqiPFadOY8Q3ZyY166gC0V1WjKtDEI4Xdg5Pz3ryCNKNgGt/tz+CWUixqe8MC5TDATw
         UG6g==
X-Gm-Message-State: AO0yUKU7Tpf+kyvADjGErf/DedE7EupY9OOZ1RfWp8Swlno9ijvgMqeS
        36OaxzMlZDF717dnJXs/IsXBWXtYnkouh+0v9UYqHw==
X-Google-Smtp-Source: AK7set91+2QnXMA/l4LPBLXs/2Khip/xRn9a22mox+dUKEcVere1J9qIQiz8Gao6UOQmlxbGnEkxjEAOVVyl6273gFk=
X-Received: by 2002:a67:a641:0:b0:411:c62b:6bf0 with SMTP id
 r1-20020a67a641000000b00411c62b6bf0mr3655682vsh.3.1677645507920; Tue, 28 Feb
 2023 20:38:27 -0800 (PST)
MIME-Version: 1.0
References: <20230228104741.717819-1-angelogioacchino.delregno@collabora.com> <20230228104741.717819-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230228104741.717819-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 1 Mar 2023 12:38:16 +0800
Message-ID: <CAGXv+5HB-0XYw-vs97fbFu6nXWOOJzCf=rK31aL_ecC04vkq0Q@mail.gmail.com>
Subject: Re: [PATCH v3 02/18] arm64: dts: mediatek: mt8183-kukui: Override
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
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 6:47=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Override the PMIC-default voltage constraints for VGPU and VSRAM_GPU
> with the platform specific vmin/vmax for the highest possible SoC
> binning.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
