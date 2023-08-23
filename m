Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9D7D785968
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 15:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235785AbjHWNda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 09:33:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235670AbjHWNda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 09:33:30 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFD8E7D
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 06:33:03 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50043cf2e29so6139886e87.2
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 06:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692797544; x=1693402344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVkiAWQf02hIjXS1/nDmuDjVF+ZUw+QGWFD4hGm2aLY=;
        b=aIDFRIbQ7V5SgLqH1ESBjTIQWXUV0Zv1y9Qj2HWdRNdDpX+J9VJY5OkeEHY3lWvF2D
         MSk2kJJtniz6HTeZbjYYjAerkV+dx2nXyqKf9sJjOYfrghgw0HCe0AprInxYZt/lIJm6
         oeoW04h7z6H6+3eJWUiv02oWdjZpqI5h0dugY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692797544; x=1693402344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gVkiAWQf02hIjXS1/nDmuDjVF+ZUw+QGWFD4hGm2aLY=;
        b=eXlq5FjSuKgDMly9WwwAaxunWo4hFGC/sTUdDOnldiIyJjuz6i+mDWIxC1yOzIbY9n
         M7o0XOA8h6KA9AwBIQJVx+SbBNbd2qizX/TLbOmsCDlDsJ0McBHc6cA9tHRxxKE200c/
         cYPiOk57FIJH8Sf3zwo92VQm9vECH8X06UGlOSm2CyKskXUpguRastw6BJZ/29xPxOSu
         G74duUAEcLJS6JHKvF13P8h0HLV+1/ALnns1QRJeC304PJIaR4Exs2YTYNHydsfrbz/S
         7xjOwaWrBCediPS6+tXFycJbI8peLJz7x9yz++tOdWoDH1aQmHroLDmCLsXmGq8eDw3Y
         IgjQ==
X-Gm-Message-State: AOJu0YzCfduwjQYZaAlNmycJemcNXZLqBG2M9jY+FuYScgoZiPHhbp49
        JH1XT62yhcgCxfP2dFsILVZD9riqUwJM94fT8n9S+v5b
X-Google-Smtp-Source: AGHT+IH1Bqm6lNgLDwo+V2WJCTYjzln15FiVLZUyj0gLcUSvu/7H28usoJpLR1OHJ0eX4KurixuH/A==
X-Received: by 2002:a05:6512:3f09:b0:4fe:95e:159a with SMTP id y9-20020a0565123f0900b004fe095e159amr9964821lfa.23.1692797544353;
        Wed, 23 Aug 2023 06:32:24 -0700 (PDT)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id q24-20020aa7cc18000000b0052567e6586bsm9390472edt.38.2023.08.23.06.32.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 06:32:23 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-521e046f6c7so10406a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 06:32:23 -0700 (PDT)
X-Received: by 2002:a50:9f21:0:b0:525:573c:6444 with SMTP id
 b30-20020a509f21000000b00525573c6444mr288342edf.1.1692797543237; Wed, 23 Aug
 2023 06:32:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230823071306.131373-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230823151005.v6.2.I8f20fdfe34a2e8a38373bbd65587754b324f3dcb@changeid>
In-Reply-To: <20230823151005.v6.2.I8f20fdfe34a2e8a38373bbd65587754b324f3dcb@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 23 Aug 2023 06:32:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VKDpZkssNjPzgb62-WUaCU_Y7bqcdGDZrAgH5RFatp-A@mail.gmail.com>
Message-ID: <CAD=FV=VKDpZkssNjPzgb62-WUaCU_Y7bqcdGDZrAgH5RFatp-A@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: sc7180: Add sku_id and board id
 for lazor/limozeen
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 23, 2023 at 12:13=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> SKU ID 10: Lazor LTE+Wifi, no-esim (Strapped 0 X 0)
> SKU ID 15: Limozeen LTE+Wifi, TS, no esim (Strapped 1 X 0)
> SKU ID 18: Limozeen LTE+Wifi, no TS, no esim (Strapped X 0 0)
>
> Even though the "no esim" boards are strapped differently than
> ones that have an esim, the esim isn't represented in the
> device tree so the same device tree can be used for LTE w/ esim
> and LTE w/out esim.
>
> add BRD_ID(0, Z, 0) =3D 10 for new board with ALC5682i-VS
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.googl=
e.com>
> ---
> This patch base on patch[1] which move trogdor rt5682s bits to a fragment=
.
>
> [1] https://lore.kernel.org/r/20230816112143.1.I7227efd47e0dc42b6ff243bd2=
2aa1a3e01923220@changeid/
>
> Changes in v6:
> - commit update, add dependent patch link
> - remove unnecessary symbol
> - sort out the order of properties
>
> Changes in v5:
> - include rt5682s node for new board version 10
>
> Changes in v4:
> - combine pathc2 and patch3
>
> Changes in v3:
> - sort out the node order alphabetically
>
> Changes in v2:
> - add new entry rev9 with Parade bridge chip
> - correct newly create dts files
>
>  arch/arm64/boot/dts/qcom/Makefile             |  5 +++
>  ...sc7180-trogdor-lazor-limozeen-nots-r10.dts | 29 ++++++++++++
>  .../sc7180-trogdor-lazor-limozeen-nots-r9.dts |  6 +--
>  .../sc7180-trogdor-lazor-limozeen-r10.dts     | 45 +++++++++++++++++++
>  .../qcom/sc7180-trogdor-lazor-limozeen-r9.dts | 10 ++---
>  .../dts/qcom/sc7180-trogdor-lazor-r10-kb.dts  | 23 ++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r10-lte.dts | 27 +++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r10.dts     | 19 ++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r9-kb.dts   |  4 +-
>  .../dts/qcom/sc7180-trogdor-lazor-r9-lte.dts  |  4 +-
>  .../boot/dts/qcom/sc7180-trogdor-lazor-r9.dts |  4 +-
>  11 files changed, 162 insertions(+), 14 deletions(-)

It would have been fine to keep my Reviewed-by with just the minor
changes that Konrad requested, but giving it again anyway:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
