Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 391E96D0DC4
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 20:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230185AbjC3Sbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 14:31:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbjC3Sbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 14:31:52 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 756B74681
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 11:31:51 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id dg15so5413734vsb.13
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 11:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680201110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6bmgWM4VeyB5ih4GlZbThd/2eiyQX/X/Evx0/5WbwLA=;
        b=FcAPCmOi8kd46tiur46X+HJQ0QvfkHoCXSefLC+keO6eO2vi28w47YYGEtBDxbcHQA
         AAqk5jSkJ8HaZeolw6cJGb/rLhohHT9f5CrP1QxFO8H2qZwbgk7o9rF1OWvxPTC2YZXz
         VFj0Jx6bQyqMyqZzT0BI/9Cs0YpjwVmCUzsmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680201110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6bmgWM4VeyB5ih4GlZbThd/2eiyQX/X/Evx0/5WbwLA=;
        b=P64aO6j8pj+vD9+W8P3rFxhhWdEXV1x1HGvEJKnmbTun7OPi64MrEOGyAQzrcKg5k1
         BuzngNrm7qQaCuSpFgzidCYO9MTJFmEi1nTexG3i1sooWZL1ccbk6xjZ/Nm0FTC1vN+T
         qYqT4E2L/xEFxRwzpMZ4L1oYy19lXRPa1DIwjCnLud48w5M3ePLiDmid4zFOr8kyYiqE
         oTIsAXtiVKN/RkMRR4IOQtcoy5edQueUEajsDipqkIWj2SKANmyPBU9ofMknm74Myz2c
         hiyeAakZOTVFXONy6Fi1jJ6st+LIq0VXhtKNWJ0jbJHKizzfHuVvQ0POlmIHFLHStNzj
         StlA==
X-Gm-Message-State: AAQBX9euX8W8Hv8bkLwuzeTSyri1V4LWcQ/mnjAFUTsFyT90Smy/JsjL
        fi1S4ajov63pDXHN0VuUZ2o4m4UQaUAmu3f335ok7A==
X-Google-Smtp-Source: AKy350ZW+shoLk5NMgLx02gB1cVOQAgj6/TjFVclF2B/NAOvGzglj6NmtlFaBAvYDweqJv1EXQqEKg==
X-Received: by 2002:a67:e40a:0:b0:416:5a81:caf8 with SMTP id d10-20020a67e40a000000b004165a81caf8mr9076980vsf.32.1680201110628;
        Thu, 30 Mar 2023 11:31:50 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id n13-20020a9f314d000000b0074b2d26801dsm40667uab.8.2023.03.30.11.31.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 11:31:50 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id cz11so17037385vsb.6
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 11:31:50 -0700 (PDT)
X-Received: by 2002:a67:c18a:0:b0:425:cf00:e332 with SMTP id
 h10-20020a67c18a000000b00425cf00e332mr13402479vsj.7.1680201109830; Thu, 30
 Mar 2023 11:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230324195555.3921170-1-markyacoub@google.com> <20230324195555.3921170-10-markyacoub@google.com>
In-Reply-To: <20230324195555.3921170-10-markyacoub@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Mar 2023 11:31:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xvu++Bvkkq+xORUB0OWq_49nupFgCqsbX0XJz8vgy0Zw@mail.gmail.com>
Message-ID: <CAD=FV=Xvu++Bvkkq+xORUB0OWq_49nupFgCqsbX0XJz8vgy0Zw@mail.gmail.com>
Subject: Re: [PATCH v7 09/10] arm64: dts: qcom: sc7180: Add support for HDCP
 in dp-controller
To:     Mark Yacoub <markyacoub@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        seanpaul@chromium.org, suraj.kandpal@intel.com,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

Hi,

On Fri, Mar 24, 2023 at 12:56=E2=80=AFPM Mark Yacoub <markyacoub@chromium.o=
rg> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Add the register ranges required for HDCP key injection and
> HDCP TrustZone interaction as described in the dt-bindings for the
> sc7180 dp controller.
>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
>
> ---
> Changes in v3:
> -Split off into a new patch containing just the dts change (Stephen)
> -Add hdcp compatible string (Stephen)
> Changes in v4:
> -Rebase on Bjorn's multi-dp patchset
> Changes in v5:
> -Put the tz register offsets in trogdor dtsi (Rob C)
> Changes in v6:
> -Rebased: Removed modifications in sc7180.dtsi as it's already upstream
> Changes in v7:
> -Change registers offset
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/bo=
ot/dts/qcom/sc7180-trogdor.dtsi
> index 47f39c547c41a..63183ac9c3c48 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -816,6 +816,14 @@ &mdss_dp {
>         status =3D "okay";
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&dp_hot_plug_det>;
> +
> +       reg =3D <0 0x0ae90000 0 0x200>,
> +             <0 0x0ae90200 0 0x200>,
> +             <0 0x0ae90400 0 0xc00>,
> +             <0 0x0ae91000 0 0x400>,
> +             <0 0x0ae91400 0 0x400>,
> +             <0 0x0aed1000 0 0x174>,
> +             <0 0x0aee1000 0 0x2c>;

Reviewed-by: Douglas Anderson <dianders@chromium.org>
