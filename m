Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2A877156BC
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 09:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbjE3H3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 03:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230234AbjE3H2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 03:28:34 -0400
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com [IPv6:2607:f8b0:4864:20::a35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E36319B
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 00:28:15 -0700 (PDT)
Received: by mail-vk1-xa35.google.com with SMTP id 71dfb90a1353d-4571d25d288so2686894e0c.3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 00:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685431694; x=1688023694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OCgynGq67ALKegDWHOnwBw+W3AAJiRXYWJGBUDwaz7k=;
        b=Scz+y1v49XF8CbK1f5L6+O5+BLeaDdOqS7gfMFDV9xOAeweo1APxY9t+6TL2fqiDZ1
         mu3D7zp8dRU2KBgliZVXcrYJC1Zlu3igaZqbKSn/2Zyl+SDgwlJGpcH2eiLpSBCVeB3t
         ISSeQl/vhsKbxBgS4SOghVBiNPTQa6DXKfu94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685431694; x=1688023694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OCgynGq67ALKegDWHOnwBw+W3AAJiRXYWJGBUDwaz7k=;
        b=FQa6enFlqjcBqPeahu5xODRlER8BC9f6LeqybEGxWxTQh+RmfA9sJHizmwW3vPhKri
         V3O4rELOYTjk32GLIzWvIXeEiolbU44cyig2EPSli3gPV4bbKFAPOBkMaJx+XfGzh7PY
         q1TwqWEsgnadCcG1ZrdrxfKMBRzde9+8Cjh9X6AAM6FUhgIl1vy4MA1aX6lVIurv5jEn
         Qv2SGpDeeGDmuHzTkQ+E/iB7MKbDJdUFSERC2uENVYJzuT1BTj46D1BkerJEkwFIaR7e
         yqq1jCj0x/NBBQDoPaKsZylRGBCpsPM/Ttdlm/8pDPtBjwgsDAF6Jtv9g6+I3cgn0dmu
         sTlA==
X-Gm-Message-State: AC+VfDynhxOu3/2c/tKSwFFVr6TPPzbLPqZ7Vid9A8xYcUAGlkr7eLqj
        FKyaXEcPQqQVaBPlZw4DX2E9R60doYuvbqVWDrxSBA==
X-Google-Smtp-Source: ACHHUZ6fL/grV0awl9WykFSsFWLwHVGeiIhqkSVSfAVpNCJK6q5E8S64jpA0MWKklZJMO1VR0bmMP3sKJzadwSXq2Ak=
X-Received: by 2002:a1f:5e8f:0:b0:44f:e6ff:f30e with SMTP id
 s137-20020a1f5e8f000000b0044fe6fff30emr368533vkb.10.1685431694694; Tue, 30
 May 2023 00:28:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230303013842.23259-1-allen-kh.cheng@mediatek.com> <4ebd1c9f-0460-4436-8e17-0e46e88f4828@notapiano>
In-Reply-To: <4ebd1c9f-0460-4436-8e17-0e46e88f4828@notapiano>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 30 May 2023 15:28:03 +0800
Message-ID: <CAGXv+5Hd-8e9QWGQ2MB++xjNH0sRemmQnVnAk=CfE8DBhkYZQw@mail.gmail.com>
Subject: Re: [RESEND 0/6] media: mediatek: Update video decoder nodes for
 MT8195 and MT8192
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 4, 2023 at 6:19=E2=80=AFAM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> On Fri, Mar 03, 2023 at 09:38:36AM +0800, Allen-KH Cheng wrote:
> > This series is based on matthias github v6.3-tmp. Since there is a
> > dependence in the following series, I resend a series for them.
> >
> > patchwork.kernel.org/project/linux-mediatek/list/?series=3D702423
> > patchwork.kernel.org/project/linux-mediatek/list/?series=3D702078
>
> Hi Matthias,
>
> this series has been completely reviewed and tested for a while, and the
> bindings patches were already picked up by Hans and are on their way to 6=
.4 [1].
> So could you please pick the devicetree patches?

Ping again on this series.

The device tree patches can be picked up.

> Thanks,
> N=C3=ADcolas
>
> [1] https://lore.kernel.org/all/98c48690-631d-1086-9b7c-004c61cc8dbb@xs4a=
ll.nl/
>
> >
> > Allen-KH Cheng (3):
> >   media: dt-bindings: media: mediatek: Rename child node names for
> >     decoder
> >   media: dt-bindings: media: mediatek: Remove "dma-ranges" property for
> >     decoder
> >   arm64: dts: mt8192: Add video-codec nodes
> >
> > Yunfei Dong (3):
> >   media: dt-bindings: media: mediatek: vcodec: adapt to the
> >     'clock-names' of different platforms
> >   media: dt-bindings: media: mediatek: vcodec: Change the max reg value
> >     to 2
> >   arm64: dts: mt8195: Add video decoder node
> >
> >  .../media/mediatek,vcodec-subdev-decoder.yaml | 113 +++++++-----------
> >  arch/arm64/boot/dts/mediatek/mt8192.dtsi      |  59 +++++++++
> >  arch/arm64/boot/dts/mediatek/mt8195.dtsi      |  70 +++++++++++
> >  3 files changed, 173 insertions(+), 69 deletions(-)
> >
> > --
> > 2.18.0
> >
