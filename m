Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B836477D366
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 21:33:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235977AbjHOTc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 15:32:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239893AbjHOTcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 15:32:33 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A48C1737
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 12:32:32 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-522dd6b6438so7201908a12.0
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 12:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692127949; x=1692732749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7QUc0x0pjPpKWnmgAca1QOq5TW3L4ejfm50N+84Kmuc=;
        b=Rc4t/cyDu8Ic5J4iJ9ZsNBB62qcAxdOJVy9Ee86pehyaeAs0Suqmv9EQX/WgQ4X7v/
         7vVDh2H7MT+q8/wZFM6Bwvpo7G5dvUrHj76IvIoh29ISgu2tl4RQpoMFcbCkD65VrOcQ
         CnKpxVAUGCs8IeuVEkQdupwLaAg7eiExbfGx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692127949; x=1692732749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7QUc0x0pjPpKWnmgAca1QOq5TW3L4ejfm50N+84Kmuc=;
        b=OR0F2xDS7P/6HtOKmpvRBiJgPVTbhiw0zrfYWHLkgQX5cO+KqrPtAea4UZUrdR+8Nc
         K/NaXyECZDeSESUq3HwB4Nek2q3aSEklZdZpAqQNJx0wvirNIyHIIty4Pv9FmIDuoXkf
         3iALWFcOO7DO7eS5RBVralm5y/0PKM3X166NrE2DQKC+Oaw6a3DKfGzk4GFxLzRnJUSP
         yved8qnf/IFhmf4239StdINj+6QXSsV+oB+U0PY3pAZza2oPk4Zor5bDM9Q4nEDYJnpq
         +67U++1MzmDEATmD18OZQt0UlmOXGTZ3NqIv2lcg6wHd8oJN++rX2/xWcyhBsWobb1ss
         uA9g==
X-Gm-Message-State: AOJu0YxwzHkr6lTJbT5LfBCItrxswjmVz5v1h5l9/CLwetw3WdFSF3yV
        2ixqiJ5Ntxv5l1eLW5GhmbJ21AsjCW11DIYgqEbrVQ==
X-Google-Smtp-Source: AGHT+IEs3aiwuRhdkyyATmaK5GFiScCPklPU8cpaeOroUrpYhVgcTCULMT+eRale4HI1k4Y9k+HHog==
X-Received: by 2002:a17:906:2ce:b0:99c:aa43:b20c with SMTP id 14-20020a17090602ce00b0099caa43b20cmr10886570ejk.33.1692127948961;
        Tue, 15 Aug 2023 12:32:28 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id qx22-20020a170906fcd600b0099cd008c1a4sm7411026ejb.136.2023.08.15.12.32.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 12:32:27 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-3fe2a116565so1045e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 12:32:27 -0700 (PDT)
X-Received: by 2002:a05:600c:35c7:b0:3fd:e15:41e3 with SMTP id
 r7-20020a05600c35c700b003fd0e1541e3mr24772wmq.2.1692127947638; Tue, 15 Aug
 2023 12:32:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230815154412.713846-1-hsinyi@chromium.org> <20230815154412.713846-5-hsinyi@chromium.org>
In-Reply-To: <20230815154412.713846-5-hsinyi@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 15 Aug 2023 12:32:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UvDZOgJ0TxeBYGgDMqSUYUX9am+QAMEXpRQ0C-Hh=kVw@mail.gmail.com>
Message-ID: <CAD=FV=UvDZOgJ0TxeBYGgDMqSUYUX9am+QAMEXpRQ0C-Hh=kVw@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sc7180: disable quad mode for spi nor
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        "Miquel Raynal )" <miquel.raynal@bootlin.com>,
        "Richard Weinberger )" <richard@nod.at>,
        "Vignesh Raghavendra )" <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
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


On Tue, Aug 15, 2023 at 8:45=E2=80=AFAM Hsin-Yi Wang <hsinyi@chromium.org> =
wrote:
>
> Some of the SKUs are using gigadevice gd25lq64c flash chip. The chip
> default enables quad mode, which results in the write protect pin set to
> IO pin. In trogdor platforms, we won't use quad enable for all SKUs, so
> apply the property to disable spi nor's quad mode.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/bo=
ot/dts/qcom/sc7180-trogdor.dtsi
> index 5a33e16a8b677..0806ce8e86bea 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -436,6 +436,7 @@ flash@0 {
>                 spi-max-frequency =3D <37500000>;
>                 spi-tx-bus-width =3D <2>;
>                 spi-rx-bus-width =3D <2>;
> +               disable-quad-mode;

This seems unnecessary. Unless "tx-bus-width" or "rx-bus-width" is 4
then Quad SPI isn't enabled. You don't need an explicit property since
this can just be inferred from the tx and rx bus width.

-Doug
