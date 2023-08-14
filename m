Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67F177B531
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 11:10:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbjHNJKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 05:10:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232986AbjHNJJz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 05:09:55 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDC4512E
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 02:09:54 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-76571dae5feso276051285a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 02:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692004194; x=1692608994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w/7tv75kyLF04/hNRx8/Qrlee5igGYasqrhVSHaQy+E=;
        b=XxvUxvSX0sQTVspOPIyc26NX9pHVXQU7u8bs9ba6SxkRNFo/mNLNxGTUTWwtkn4qWH
         h6pGrxABCBRPEFLwzNo3TbsK3Lu34/ZgKTfU3OgdJ+yTkH7esTKJ2Fn2TOuoTG/ETSFZ
         rYVHHBIS1eykawLhqyWx3UMvZ90egrHnhQ0FM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692004194; x=1692608994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w/7tv75kyLF04/hNRx8/Qrlee5igGYasqrhVSHaQy+E=;
        b=AiBE6R+abw8+IWWiXcKnw7kawc4sL44kzMb/ya31i3vN98Ss6+GKo08dhIApGGlvFL
         6xSVmLI/eMn8dP+hTEWrYdD88lM23bfv1A5K1Z2YwVjFmu9frJWiZQAim1Tnk+N51l9p
         /TD1NuE+Z71L9PQhUtok35/dhDHhKwsk37vRoxX52p1zkUj7yz8cHcHCFEVb0bRChHck
         oaJdkD6IEBt6b0c6VESnbzlikj11jr6AAv8LP9bExk8HeV6WKl4INnEN9ibhUntLOouh
         73cxVtrK/mlxmhIj/srtadqwBZughX4fHo+K0t1A/a7HjUTAVnQX+3X/sGm0Y6z3gas0
         wGew==
X-Gm-Message-State: AOJu0Ywn72j6Gs8syROBsfWhE5dklttmk1uQbo9iIMLe2EAlzNn5bK73
        pQK9maTV5Fl2rnHyifcsFUB2OY0SNDTsrOqkca4=
X-Google-Smtp-Source: AGHT+IEhZfy53gK1dlciahAwy0DsNQDsaH7rZOg6RvzTUoRPI3e4VCB/pkXuuk3hXUIE/TJXyN7p8w==
X-Received: by 2002:a05:620a:40c6:b0:76c:b476:f712 with SMTP id g6-20020a05620a40c600b0076cb476f712mr11586961qko.51.1692004193923;
        Mon, 14 Aug 2023 02:09:53 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id z12-20020ae9c10c000000b00767b24f68edsm2872813qki.62.2023.08.14.02.09.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 02:09:53 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-410487ca3d6so4891051cf.1
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 02:09:53 -0700 (PDT)
X-Received: by 2002:a6b:6b02:0:b0:787:822:30f1 with SMTP id
 g2-20020a6b6b02000000b00787082230f1mr13847848ioc.1.1692003876732; Mon, 14 Aug
 2023 02:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230814072842.28597-1-shuijing.li@mediatek.com> <20230814072842.28597-4-shuijing.li@mediatek.com>
In-Reply-To: <20230814072842.28597-4-shuijing.li@mediatek.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Mon, 14 Aug 2023 17:04:00 +0800
X-Gmail-Original-Message-ID: <CAC=S1ngr0JS-rP+q2xukNdLFE9HcLJ0-RmbKOOtT0EK1P588sw@mail.gmail.com>
Message-ID: <CAC=S1ngr0JS-rP+q2xukNdLFE9HcLJ0-RmbKOOtT0EK1P588sw@mail.gmail.com>
Subject: Re: [PATCH v4,3/3] drm/mediatek: dp: Add the audio divider to
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
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 14, 2023 at 3:28=E2=80=AFPM Shuijing Li <shuijing.li@mediatek.c=
om> wrote:
>
> Due to the difference of HW, different dividers need to be set.
>
> Signed-off-by: Shuijing Li <shuijing.li@mediatek.com>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>

Reviewed-by: Fei Shao <fshao@chromium.org>
