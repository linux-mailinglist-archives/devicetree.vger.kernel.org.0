Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFD5677B53B
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 11:15:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233713AbjHNJPJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 05:15:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235778AbjHNJPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 05:15:07 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72EA312D
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 02:15:06 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-3492905f546so14365855ab.0
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 02:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692004505; x=1692609305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=symJGMsghCtGvBGMFumnnn8XSl8s5K5BSajbCGhbLM0=;
        b=eGRs4Ay+ND26wAbcQ1FlBvRI1gxFQO4+4/mt7ZmNa7fu4gYZ/hsTcRUrXrlzlKnTWd
         x/K/x+VOx/r2+LxmYt3Cjy4BVWiYQXO/0ipPsO3xOUqPtwjSajLEUe1c86KaASSZorBl
         XFIFzewmmBUiONdKoONnkaKvKbLg/e9GPPR/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692004505; x=1692609305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=symJGMsghCtGvBGMFumnnn8XSl8s5K5BSajbCGhbLM0=;
        b=d8Hbaqi1h5e38mgzqS3vwDCZkUmRqitBnsWKlS68eM038HRh0vz9a2syAALj+YEMX9
         938CQbZGWMVbZ5aSXMLqULYuxu4VF+ktRKsJHS/uyIFLheqT58ApQektC9yyPKFnhh0d
         Jf1BPDBuu3oicTEkJ/OGlFGul5cYJOZ9q7HmVLMpqQzeE8buwn5JuwTKm79lMGuUUFgU
         zGO+5Sur1kCDT9+7XQwn36UkEn4GUlFEXD7Mn+5W5fXtPR63watLj/LfdKsPUIEaIxZ4
         sd/L6WT5F4viwOXAK/w4zBudSfOIo0uV596+ZHggu28pEkQQiaJXb9QvA8SO067lJIr+
         Lhkw==
X-Gm-Message-State: AOJu0YyOWmKzIq3vyLV9767sTIZ4tAdi8h9GxK0gPJBJtTn2dcewRgmj
        VqP8jVWSNMvdOHlWM1aUsZrbdeQ7xoAqlMq6iS0=
X-Google-Smtp-Source: AGHT+IEnPcqseKBTvhgLMfF2fTNtqRdsLADLKCP2k65Q7jyy9Q5Qk6H4AMBDA3L2UJzuHzMUyBigpg==
X-Received: by 2002:a05:6e02:20ed:b0:345:a6c5:1ce8 with SMTP id q13-20020a056e0220ed00b00345a6c51ce8mr13633732ilv.14.1692004505661;
        Mon, 14 Aug 2023 02:15:05 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com. [209.85.166.51])
        by smtp.gmail.com with ESMTPSA id c13-20020a92dc8d000000b00345b34fcf34sm3061453iln.38.2023.08.14.02.15.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 02:15:05 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-77ac14ff51bso161329839f.3
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 02:15:05 -0700 (PDT)
X-Received: by 2002:a5d:9ada:0:b0:787:4b5f:b6cf with SMTP id
 x26-20020a5d9ada000000b007874b5fb6cfmr11533549ion.5.1692004505047; Mon, 14
 Aug 2023 02:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230814072842.28597-1-shuijing.li@mediatek.com> <20230814072842.28597-3-shuijing.li@mediatek.com>
In-Reply-To: <20230814072842.28597-3-shuijing.li@mediatek.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Mon, 14 Aug 2023 17:14:29 +0800
X-Gmail-Original-Message-ID: <CAC=S1nh9QtE7CNpsUujqSAM-Q10Mb8dOfXYtJQebvw4RifqOBA@mail.gmail.com>
Message-ID: <CAC=S1nh9QtE7CNpsUujqSAM-Q10Mb8dOfXYtJQebvw4RifqOBA@mail.gmail.com>
Subject: Re: [PATCH v4,2/3] drm/mediatek: dp: Add the audio packet flag to
 mtk_dp_data struct
To:     Shuijing Li <shuijing.li@mediatek.com>
Cc:     chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
        jitao.shi@mediatek.com, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 14, 2023 at 3:29=E2=80=AFPM Shuijing Li <shuijing.li@mediatek.c=
om> wrote:
>
> The audio packet arrangement function is to only arrange audio.
> packets into the Hblanking area. In order to align with the HW
> default setting of mt8195, this function needs to be turned off.
>
> Signed-off-by: Shuijing Li <shuijing.li@mediatek.com>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>

Reviewed-by: Fei Shao <fshao@chromium.org>
