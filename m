Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 643996C5394
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 19:20:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbjCVSUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 14:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbjCVSUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 14:20:31 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3BA264865
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:20:29 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id t13so12754983qvn.2
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679509228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uh/hJeo7sTFkQ4LaRklYoR/MA7aBfNbUpjc0I8W6RK8=;
        b=YwtR0IWJlaL5yBzbrTz3agLkUy6VZOXLut06qooO8CBVXQ1mNTMR9Qe0vwaMd8r6ql
         RRKENs8cDI0bIcMlMz+4oZ/VBMEdMefyfP++UZP6jY2Z+MMofIHrhSi4JT2sDLLfuRTI
         PDJoykgkHJaIr/JpRv5KmPSkWr8CeZ39OugRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679509228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uh/hJeo7sTFkQ4LaRklYoR/MA7aBfNbUpjc0I8W6RK8=;
        b=mu+r9Iwfudgrtd+GH4mXSTusARx0PipUDnpRoiyrZaNMsCPohWDSIFqwjuCvP27RDT
         lyO9GandRZcaRDCWf0CLapDjnQCnX7oHAVW4rIKLTetpC8+E6HTaPtToBtAPGcbatcHY
         WVM10ejmt8DLG6mbSbHRDJyZWV0a30nnrgeB/vmT6D0B0poluQkXRP0j9aUAOXwLGjTP
         6mdhZ8CUovz+SY3b62sDDeTeUiN8F2JgvNEvjtWS10S5jWY6E2T5hxCcfx+ptKB8U1SN
         i6iJJ3DaAjZuha3c01NepZ8Nk91vdGxIHBnbgpz51O7bN1vvj/K0ZdbCbIIdEiqkPcgw
         VFig==
X-Gm-Message-State: AO0yUKV0swjcikj0emct8m941iClsNukLA+oiMOtHWL8Tbd0KmbSyNJD
        LTXbaJ8dLjBiUSfmJZX9S+0DkvFjFgh7UNDTNgU=
X-Google-Smtp-Source: AK7set+dReiH8PxgazFV0c9WSvUWaGhJFw6nvUjMl1pDBBdScWBuSBhwiDHnnhjDeN4Gmymgqlvk2Q==
X-Received: by 2002:a05:6214:c29:b0:574:1822:a1bb with SMTP id a9-20020a0562140c2900b005741822a1bbmr7306411qvd.44.1679509227902;
        Wed, 22 Mar 2023 11:20:27 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id w8-20020a05620a148800b0073bb0ef3a8esm11765296qkj.21.2023.03.22.11.20.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 11:20:27 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id p204so10992858ybc.12
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:20:27 -0700 (PDT)
X-Received: by 2002:a05:6902:1546:b0:b74:6c88:7bff with SMTP id
 r6-20020a056902154600b00b746c887bffmr357158ybu.0.1679509226666; Wed, 22 Mar
 2023 11:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230220095401.64196-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220095401.64196-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Mar 2023 11:20:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XoSWOYuG5K9wcoPXC-490N9yP+JLkg3Nt+JEHvnRdwNg@mail.gmail.com>
Message-ID: <CAD=FV=XoSWOYuG5K9wcoPXC-490N9yP+JLkg3Nt+JEHvnRdwNg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7280-idp: drop incorrect
 dai-cells from WCD938x SDW
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>
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

Hi,

On Mon, Feb 20, 2023 at 1:54=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The WCD938x audio codec Soundwire interface part is not a DAI and does
> not allow sound-dai-cells:
>
>   sc7280-idp.dtb: codec@0,4: '#sound-dai-cells' does not match any of the=
 regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 2 --
>  1 file changed, 2 deletions(-)

I'm pretty soundwire ignorant but this looks right to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Seems like folks who were involved in landing the patch that
originally added those properties should be CCed on this, though.
Adding them.
