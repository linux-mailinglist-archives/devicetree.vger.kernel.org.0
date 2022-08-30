Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6635A5B28
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 07:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbiH3Fd5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 01:33:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbiH3Fd4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 01:33:56 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BE44A6C48
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 22:33:55 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id r4so12695322edi.8
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 22:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=iSQy0KuABBA4DDaz+1FIthx+BQumzv6M9MzfzutPt+k=;
        b=fzhKvRCo1IN2z5/WF0zmktc9X8/AYmrVdDTxPYjL8vW21MLqDJNdkBsaY+8WeI3F6j
         fCoMDtxn0tGAdgnndZbDI+x3tdRGXI5Joci78NVq7F4vNwj6f4d/jRBYUg0Bt/+k4n+m
         00xA+EEGk46uGisaNqjga+EzueL7QLFKnomAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=iSQy0KuABBA4DDaz+1FIthx+BQumzv6M9MzfzutPt+k=;
        b=7alz7s78VKVFIt4PNe17DN7+PYxNEH6ahzZ3NpJ43LXrHTHdxe7PyGi0JGGR6T2dGm
         mpk5yCKC3BSEcpP5GvL52+Q+zwSyT8Bj+bM3egUidyjDxnqdkjWweu8grTi7zAhVn7R0
         GHABoVm15JnZmTddQPHvD9MRSD4C2Msdu9HH8YqC6bWH0xFTg6xqhbW6IbRDgpVC+rvM
         thGEbK13T5pd2DAPgXon9dbpYRIE2I0svbElOf5jl5Ws96VUxSwdWqlNDgKESqc1kQMx
         a3pNZjAeIBWLHfcxWUpyiVMdyixT/+31Qgk9Uxj+9URXxiajrNUYUeBCn1/tQDFJdxwf
         kAiQ==
X-Gm-Message-State: ACgBeo1PdEx5Gzl8Ui36nxAY86gxPU79Tjr/LCv8ngeaQl3JwHcdcJ5G
        Azc0hlOndGGFqzq+bO7iwBfDsyuuJs6ehoH24ACjYA==
X-Google-Smtp-Source: AA6agR6YxkdEnYvmegWsKXfKaUARXyifhSTC1u9R8gdv1mZBWHTcvhaJBQJgtfmybRtD565LDMBKCgKnx5YqZaUOQms=
X-Received: by 2002:a05:6402:34d2:b0:448:9fac:206e with SMTP id
 w18-20020a05640234d200b004489fac206emr3973021edc.171.1661837634234; Mon, 29
 Aug 2022 22:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
 <20220829210103.518467-1-naoki@radxa.com>
In-Reply-To: <20220829210103.518467-1-naoki@radxa.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 30 Aug 2022 11:03:42 +0530
Message-ID: <CAMty3ZD2QDPKwAvJWB=kTJ+5ZtcdZhcT+No9joTkvBWnrKRmOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To:     FUKAUMI Naoki <naoki@radxa.com>
Cc:     abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        stephen@radxa.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 30, 2022 at 2:31 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> sorry, I noticed I sent previous email to wrong thread (v1, not v2).
>
> > > > +&sdmmc {
> > > > +     bus-width = <4>;
> > > > +     cap-mmc-highspeed;
> > > > +     cap-sd-highspeed;
> > > > +     card-detect-delay = <800>;
> > > > +     disable-wp;
> > > > +     pinctrl-names = "default";
> > > > +     pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> > > > +     vqmmc-supply = <&vccio_sd>;
> > > > +     status = "okay";
> > > > +};
> > >
> > > does card detect work for you? it doesn't work for me. I think it
> > > needs
> >
> > Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> > revision board.
>
> I have same board, but I'm using eMMC as boot media. do you have any
> eMMC module?
>
> what I tried was inserting uSD card while running Linux on eMMC. it
> didn't work.

Here is booted from SD with eMMC inserted on board.
https://gist.github.com/openedev/85fb939664b6f0803c9ce02c5b275167

Jagan.
