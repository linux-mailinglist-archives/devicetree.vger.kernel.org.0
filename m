Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62B65760CA7
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 10:08:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjGYIIX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 04:08:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231250AbjGYIIW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 04:08:22 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ACAB120
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 01:08:21 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6b9cf17f69cso3322686a34.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 01:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1690272500; x=1690877300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JQlid0H2jkWZz9fgcu7Ae/8sWUNA4lIusDDxBLqkgag=;
        b=KkgEQfDM+55890/Maq1US0J3lnruHbkrKCrP9QWS3hvuGMFkfmc5/nlpvrIrBzxlBq
         sPJmD7WJNQqquynKfs5CduRCtnjUi6tCQ0IyEsby+evTvU7HUtmycJeySD2lQcL4nlIv
         X97gSvIfrSvqwK3crWKOZ6uVzBCD27AJW8lEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690272500; x=1690877300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JQlid0H2jkWZz9fgcu7Ae/8sWUNA4lIusDDxBLqkgag=;
        b=j/LpQK/C+FaWPeoF7SOKLmo0mhycs9oQJwixMCCjoR+TyTjznT9j4wbfx0TN4liE6G
         4wSDBwfad1nXA3mvCjM2HZBmOdEQ5FEy4gDvs+8qezAyt5jjlkZyGWskB6wqeVHhF9de
         UEF0O71BUYxl/wEQDOlGqpgB7GqTPTkjjmyUnZqzOcSjWg+OaGSOQKwhYoeb9OzJWiXJ
         dn/SMQtt/ebz7M4XYmoeZn2Ds32o5pGA4FkTKt8aRyhXbdjZZF3BsJWDDRK+LZJ1RehM
         GNOgaA2VJnwe1eXMcKwQG3Xw8o9SAlvXgOn/9tn7Szg8ZrnTqJu/pRlHpcja6pre8r/Q
         MZ4g==
X-Gm-Message-State: ABy/qLY3fX33OcyF/s0nERPTxGFFL9xPNy3vZoy5PxzdaPoUHhz5Pews
        fo7HqeKclR5Qi6MQDVCSsbVI75x3pLJFi4b0hfA=
X-Google-Smtp-Source: APBJJlGMK2ptzgR0xzLImAt3dlL38evC50oVecPB/+sA0drG8kdBJidt9YBernTU5r3RhzQFZQdexw==
X-Received: by 2002:a05:6830:124d:b0:6b9:b931:55ec with SMTP id s13-20020a056830124d00b006b9b93155ecmr1328726otp.7.1690272500280;
        Tue, 25 Jul 2023 01:08:20 -0700 (PDT)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com. [209.85.210.45])
        by smtp.gmail.com with ESMTPSA id t19-20020a9d7f93000000b006b74bea76c0sm4789895otp.47.2023.07.25.01.08.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jul 2023 01:08:20 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6bb1ec7945dso1578314a34.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 01:08:20 -0700 (PDT)
X-Received: by 2002:a6b:8d82:0:b0:789:dcd1:8eb9 with SMTP id
 p124-20020a6b8d82000000b00789dcd18eb9mr1029181iod.6.1690272036013; Tue, 25
 Jul 2023 01:00:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230602090227.7264-1-yong.wu@mediatek.com>
In-Reply-To: <20230602090227.7264-1-yong.wu@mediatek.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Tue, 25 Jul 2023 15:59:59 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhgkj5zh-Oa+OJjZKmkNMfG63+WjSefB2swybm29KxDXA@mail.gmail.com>
Message-ID: <CAC=S1nhgkj5zh-Oa+OJjZKmkNMfG63+WjSefB2swybm29KxDXA@mail.gmail.com>
Subject: Re: [PATCH v12 0/7] MT8188 IOMMU SUPPORT
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, iommu@lists.linux.dev,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        mingyuan.ma@mediatek.com, yf.wang@mediatek.com,
        jianjiao.zeng@mediatek.com, chengci.xu@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 2, 2023 at 5:03=E2=80=AFPM Yong Wu <yong.wu@mediatek.com> wrote=
:
>
> MT8188 have 3 IOMMU HWs. 2 IOMMU HW is for multimedia, and 1 IOMMU HW
> is for infra-master, like PCIe.
>
> About the 2 MM IOMMU HW, the connection could be something like this:
>
>         IOMMU(VDO)          IOMMU(VPP)
>            |                   |
>       SMI_COMMON(VDO)      SMI_COMMON(VPP)
>       ---------------     ----------------
>       |      |   ...      |      |     ...
>     larb0 larb2  ...    larb1 larb3    ...
>
> INFRA IOMMU does not have SMI, the master connects to IOMMU directly.
>
> Although multiple banks supported in MT8188, we only use one of them,
> which means PCIe is put in bank0 of INFRA IOMMU.
>
> So we have two pgtable for MT8188, specifically, these two MM IOMMU HW
> share a pgtable while INFRA IOMMU HW use a independent pgtable.
>
> Another change is that we add some SMC command for INFRA master to
> enable INFRA IOMMU in ATF considering security concerns.
>
> We also adjust the flow of mtk_iommu_config to reduce indention.

A friendly ping - this series was reviewed, but I'm not sure if it's
still on the radar today.
This can be cleanly applied on top of next-20230725.

To give more confidence, I also tested the basic multimedia and infra
functionalities on my MT8188 with this series, so

Tested-by: Fei Shao <fshao@chromium.org>

to the entire v12 series.

Regards,
Fei
