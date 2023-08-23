Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EDDD785E64
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 19:17:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237781AbjHWRRh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 13:17:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235877AbjHWRRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 13:17:35 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DDFC1B0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 10:17:33 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99c0cb7285fso744924366b.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 10:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692811050; x=1693415850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MS+TPc34qbEYEOTCakdAp1dhbKIZynKL3y59Y3CigWo=;
        b=WueiVPoMozMdknbeqgWLH3xZEo28P5yxES/Aa+dDp0TXnz4IGZOWdvLXalQ88prxKU
         nehXO+OC4lDaefVkhLN5B6EMiikX4J9wTiJnxGTPF+i0oGnghn/Ypu65emvtvV1Sab0g
         Z+HwzqUiVRE25vIiyjE2QzoKtw8m2r0XVOMCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692811050; x=1693415850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MS+TPc34qbEYEOTCakdAp1dhbKIZynKL3y59Y3CigWo=;
        b=kgEIuR1CWquawzH71MSUoRciYUo+QJe0ynXyJWRzP9N7pLe8N08x0LQaQQ0SPhDWkG
         PRuid6Fyr9qsERaGTaiwfciSAxCUoxc+hw/qB36Zxpj6rlx9wqEcyXuEpoik6/ClKvvG
         40oqtCaxogQdFwrSx1pNtS+pUNp4D1j4FkoQ9euYT33Obb2uWRWTu+zyhohRwGk5pv4u
         TZz8sSC7DuEga8jBZ56W+7pFeZM5A2evwwUJQPZZv7ebuHEDA/yJJxTRcPtypUOA30ps
         8eNOoN8lgCtEQ1DeyRWYENz8qUaKWU9jDPSTNu4coY1X7nmrBc/7Xps1DowPvdwUfrcP
         TKAw==
X-Gm-Message-State: AOJu0YzrnAzJqbURu1OvGITJ+VI2YCLwqTw2xlrIli+38oTV/7dZErQg
        RfD+pQQOlFMq9nSZgXnBtNl46mChp+/FlRutAVCykwiN
X-Google-Smtp-Source: AGHT+IE/ZeUjFIPyfqTcLT6R84cBqrh7Q5Ct2bkpqArBWPkmsLUpmtEguQGjVpoRCduGuJ4MpygqUA==
X-Received: by 2002:a17:907:775a:b0:994:536c:ab45 with SMTP id kx26-20020a170907775a00b00994536cab45mr10049573ejc.50.1692811050026;
        Wed, 23 Aug 2023 10:17:30 -0700 (PDT)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com. [209.85.208.47])
        by smtp.gmail.com with ESMTPSA id d16-20020a17090648d000b0098d2d219649sm10058009ejt.174.2023.08.23.10.17.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 10:17:29 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-529fa243739so975a12.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 10:17:29 -0700 (PDT)
X-Received: by 2002:a50:9f4e:0:b0:523:b133:57fe with SMTP id
 b72-20020a509f4e000000b00523b13357femr275913edf.1.1692811048986; Wed, 23 Aug
 2023 10:17:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230822094414.123162-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230822174101.v4.1.I26e017b00a341e7a5a2e94a83596923713408817@changeid> <20230823-raving-either-fb7bdb98b846@spud>
In-Reply-To: <20230823-raving-either-fb7bdb98b846@spud>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 23 Aug 2023 10:17:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U2kHPu2coSniUXfDJH8gYMV6115NKkyS7Rt4mEx4fzew@mail.gmail.com>
Message-ID: <CAD=FV=U2kHPu2coSniUXfDJH8gYMV6115NKkyS7Rt4mEx4fzew@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: add sc7180-lazor board bindings
To:     Conor Dooley <conor@kernel.org>
Cc:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 23, 2023 at 8:11=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Aug 22, 2023 at 05:44:13PM +0800, Sheng-Liang Pan wrote:
> > Introduce more sc7180-lazor sku and board version configuration,
> > add no-eSIM SKU 10 for Lazor, no-eSIM SKU 15 and 18 for Limozeen,
> > add new board version 10 for audio codec ALC5682i-VS.
> >
> > Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.goo=
gle.com>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Conor: any chance you could reply to v6 (instead of v4) and add your Ack?

https://lore.kernel.org/all/20230823151005.v6.1.I26e017b00a341e7a5a2e94a835=
96923713408817@changeid/

I _think_ the v6 patch series is in good shape so I don't expect
Sheng-Liang to have to send a v7. I'm worried that your Ack will be
lost if it's not sent in response to the v6 patch.

Thanks!

-Doug
