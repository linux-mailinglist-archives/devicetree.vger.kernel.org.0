Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94A116C62BA
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 10:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231654AbjCWJFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 05:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231652AbjCWJFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 05:05:13 -0400
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com [IPv6:2607:f8b0:4864:20::934])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B202211E
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 02:04:56 -0700 (PDT)
Received: by mail-ua1-x934.google.com with SMTP id g9so10005383uam.9
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 02:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679562295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ER5BSCr9JV00PaqEK5UpQdMYow41x054A0NzdPKRFxo=;
        b=cTjDYAWCMEbcsqF6rG9P/DV5MiBYk+2MTPuya2dk52/SvB4hjaQIL9hP5GxKBi3bxZ
         rbu9QMoZoFYtR54ZOowHAVGIN5y+DPM8Ii8TGsN6q82qqKpx9K/0HwH0BLiB7wZvSv6Z
         JOClzLV/+Zt8HBq0JiXVL450GKr5XKfuV0nX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679562295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ER5BSCr9JV00PaqEK5UpQdMYow41x054A0NzdPKRFxo=;
        b=GO65TM64BM6616SAO+ZQqsQTw7UnQ5mUbhDsg0yiSfcKH/z/7mlMzVJB3rCJDzPNR3
         kWexfkzsH3+tVKv6JM1Q0kXGR/tic8l7dDDCh9Ja7GVh+4y8b4GfkpTz+tNiGJJ2LToQ
         I/5WCTRz0NFhIksfe84n6l86AZDDibh8+aevSbMSYImvCvlEWTo3o6gr21mPCiu6bsFu
         9v6T6uXAd4sB/VVvfi0oKh5SbDWUsiIgCHozBWhLV2+Y1v39i2/rLwJf2rcSwoRbACXL
         /K/Q/kselTlyFy3lMOmjgv+WmBKBCyoPBwfVoJf3nJtIWhQ09bahE0HG7Hz9bWs+sMbl
         pF4A==
X-Gm-Message-State: AAQBX9emngL9MCQTs7ULkhW8Ax7RQ19ISMdRAAmH5wxic2SkRJRir/b9
        AHIl5gwEokpazQQF4tCL+qZ8r/CXE/u0NnCWBK07Wg==
X-Google-Smtp-Source: AKy350aBwAARZFXCKTypUlkAy7+CkD3eOoHJIRlhaqu5olHys60B5m/DMcr9xhAwDThW+C/Sce5ce0an2hZ4w2+3tgE=
X-Received: by 2002:a05:6130:913:b0:68e:33d7:7e6b with SMTP id
 bu19-20020a056130091300b0068e33d77e6bmr5361851uab.1.1679562294902; Thu, 23
 Mar 2023 02:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230321121859.2355-1-nancy.lin@mediatek.com> <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
In-Reply-To: <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 23 Mar 2023 17:04:43 +0800
Message-ID: <CAGXv+5F82Ctz0pit4LsR5mQizPq-v2k3OVfiRhsGnG0a2J=Dyg@mail.gmail.com>
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     "Nancy.Lin" <nancy.lin@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        singo.chang@mediatek.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux@googlegroups.com,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 23, 2023 at 4:58=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 21/03/23 13:18, Nancy.Lin ha scritto:
> > The hardware path of vdosys1 with DPTx output need to go through by sev=
eral modules, such as, OVL_ADAPTOR and MERGE.
> >
> > Add DRM and these modules support by the patches below:
> >
>
> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks.
> Green light from me.
>
> Chun-Kuang, can you please pick it?

It was picked up a few hours ago.

ChenYu
