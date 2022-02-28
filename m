Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26E044C6FC6
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 15:44:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237272AbiB1Oom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 09:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237271AbiB1Ool (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 09:44:41 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 018817EB0B
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 06:44:02 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id ay7so13362474oib.8
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 06:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TZ/FXIBb2l/zy0sgH24plAXGxKtl4xwqj/WVr29N3Qk=;
        b=tCRb7/Hcvc+dlyPVTnTvzQyWLYC9lg7XGlfVWZYnLuLLUOnFln56ZGAc7+pl7FweuR
         yjC8AY+uBTub+L8tzvx5Qtk0El48HFnMh41leniIVko5ULqWibi9tXISigX8Cnu6B0lP
         nkbsHaYhUvr9KdnAKnquO61lfKSsZFfvM8Sn8QijLgX6vckVmvgr2Sny+mUJiK1UTHW9
         0oOZTCcXnBxoJTk6MCvHifVRZKYrachekbhGleJNzNIE5z5ypvxNivmKn5Z+CHSwsVTx
         0Z8UaxggoaE1Nu007HPW9MZTnwF5GwfuJHyZLySiEMmMdKTDKLrHdsBAL+re7F6zvltF
         QGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TZ/FXIBb2l/zy0sgH24plAXGxKtl4xwqj/WVr29N3Qk=;
        b=d6ESmsB69weuMKDwwjd+1krfriH36/VlT3j0S8L+e6PWytyK0u8R34mZiO0r89/jks
         gffUH+xA3i0rFHehN/04SytZTpA8DAI1XSE+L+I3GrRiFkCLN7DOoacyTQeQkn/SYqJ3
         zfkasqu3ay9e7bnT37th0hEmD3i8/yS7wJhx67IFovCOPbLd4ZRhFCOMvxaS9j9tT6AT
         Gd7HtpN1s/3zuyoisPUyRnD2XyiUx05K26A/eDhPVlPLOu1PGq+izs5Ngclm+jbvuvI3
         MLcmMj8I5An+bbwTiPyhH+ruV6E2uAOu8cs54uax2aRO13UrvgrrtoJa27ac+vWvEn67
         ahMQ==
X-Gm-Message-State: AOAM531kfOiRp7e0jnl3IYrljG/1+HThl/ntqRHgDDsdIZfHek75G1Iw
        F8Fln+1iXAsJMkyHJkWZKFByRHmFm40yLSGQrQr1Rgm4Mz0=
X-Google-Smtp-Source: ABdhPJz7niURpiE1AeJoFUV1n7voTABOrHmI9eeeCZq79Wy5/nAu770WVZo3d54YCio1bzcP6/ZGF3XqSTAArrrfCPc=
X-Received: by 2002:a05:6808:30a3:b0:2d5:2019:97ac with SMTP id
 bl35-20020a05680830a300b002d5201997acmr9064256oib.40.1646059441336; Mon, 28
 Feb 2022 06:44:01 -0800 (PST)
MIME-Version: 1.0
References: <20220120082803.15535-1-bhupesh.sharma@linaro.org> <22c14d50-7585-ced5-24e2-8c0b417fa0db@postmarketos.org>
In-Reply-To: <22c14d50-7585-ced5-24e2-8c0b417fa0db@postmarketos.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Mon, 28 Feb 2022 20:13:50 +0530
Message-ID: <CAH=2NtxNj=hYPV0cQUN-8Gwm92Mj8tOdN1iDKg8skd=5NzvFVg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8150: Add ufs power-domain entries
To:     Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexey,

On Fri, 28 Jan 2022 at 19:37, Alexey Minnekhanov
<alexeymin@postmarketos.org> wrote:
>
> At 20.01.2022 11:28, Bhupesh Sharma wrote:
> > Add power-domain entries for UFS controller & phy nodes
> > in sm8150 dts.
> >
> > ...
> > +                     power-domains = <&gcc UFS_PHY_GDSC>;
> >                       resets = <&gcc GCC_UFS_PHY_BCR>;
> >                       reset-names = "rst";
> > ...
> > +                     power-domains = <&gcc UFS_CARD_GDSC>,
> > +                                     <&gcc UFS_PHY_GDSC>;
> > +                     power-domain-names = "ufs_card_gdsc", "ufs_phy_gdsc";
>
> Strange, but I don't see neither UFS_PHY_GDSC nor UFS_CARD_GDSC in
> gcc-sm8150.c [1] (and accordingly not in
> include/dt-bindings/clock/qcom,gcc-sm8150.h), but they are present in
> corresponding files for sm8250 [2].
>
> By quick look at downstream sm8150-gdsc.dtsi addresses seem to be
> similar to one used on sm8250, so I'm guessing gcc-sm8150 has to be
> fixed first for this patch to work?

You are right.
I am sending a v2 shortly, which fixes this issue.

Regards,
Bhupesh
