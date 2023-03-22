Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5E8C6C4395
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 07:51:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjCVGvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 02:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbjCVGuv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 02:50:51 -0400
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22E345CC1F
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 23:50:28 -0700 (PDT)
Received: by mail-vs1-xe36.google.com with SMTP id cz11so8970705vsb.6
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 23:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679467826;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RX0SeXk95xfA7fzhyTC54j4JA6MuPQPWNc9h5Ft+JK0=;
        b=OUM2ebTToWE+DLYciLsZanPss0L92kIhxEtZFHjXnSNa3EY+rxceuEZEBNqeCL+42c
         I5zKDOyWs6WvdW1uiGRAEIrvNNd9i53Qq1TK0wyP8GNTFafEDdrImfPmDXDAPRgOVvQF
         DYHPVNcAuZFRMSZlB3rHCkWtSAjJJKY+8wbBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679467826;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RX0SeXk95xfA7fzhyTC54j4JA6MuPQPWNc9h5Ft+JK0=;
        b=yC7w8+1XsROHkBWq5ht9QhnXDHxJDXlj6Hti3Ppi+jqNi7/YeHbJ0MbbRAiQH4wN6G
         JIVZO9HKqA1emiQqfQTZQHDdNJuICxTX+DPib3FY8kyXLf6cW3GwSyEJlWbEJM3XMgH0
         Fax6oklDplSVzaoWuoVrEoPdN3w2Z377BDNDbXUfIalQMhapZOeo4NVqm3s6PJ4EKWiV
         pdRtkr5gEaX+tD/vs5qx1Z25YB8rgDipkUrRmNpmrejj2py6Pk0MOlriEy+O2W7PLM9o
         RnzUdGYh0xHEBhq9OmJQBZe8U8YXfxGF2LSIx+N5sUNqj7iwdAExOjGFtTin7GEdVMAs
         Os3w==
X-Gm-Message-State: AO0yUKWgQ8/rjlqi/aokdLf4MF3sOwL1Kwqo5JOSHKcYTi/Io/aBAYZb
        Rfr6PgR8PqrVxuQkzoeQgxhsuLtBbuIDUwjIymgTtA==
X-Google-Smtp-Source: AK7set8Ms11ZJJDrulLLbKmxZz5jY9ehpCROWxJN3/SBLOsC8jNk+PkF2io6QogN9ANBqmnLQL6MAMBbwXz/1TJuBOU=
X-Received: by 2002:a05:6102:3e09:b0:421:c4a3:b607 with SMTP id
 j9-20020a0561023e0900b00421c4a3b607mr1041896vsv.3.1679467826251; Tue, 21 Mar
 2023 23:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230317060917.15175-1-allen-kh.cheng@mediatek.com> <20230317060917.15175-6-allen-kh.cheng@mediatek.com>
In-Reply-To: <20230317060917.15175-6-allen-kh.cheng@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Mar 2023 14:50:15 +0800
Message-ID: <CAGXv+5FkCuuV5nZ-_7Kf9cgodVcjfOhjvj3+T7xPqc4RuenHEQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] arm64: dts: mediatek: mt8186: Add audio controller node
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        hsinyi@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 2:10=E2=80=AFPM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:
>
> Add audio controller node for MT8186 SoC.
>
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8186.dtsi | 62 ++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)

This patch is already merged in v6.1-rc1.
