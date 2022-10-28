Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 556746111F5
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 14:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbiJ1Myo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 08:54:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbiJ1Mym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 08:54:42 -0400
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CDEA48A14
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:54:38 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-367b8adf788so46402217b3.2
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4Wa3zuGdPPlhF6BsX0vopA+9xtlRCdSj7XxNypRvgY=;
        b=jEjV12PkkhsxOk2320IMxk9cduAJECXQwpyb4R07XWi96fTyT/phvIrEx/uNX5djVf
         UDGN9rbfjUrXH6v0TDAlll0ZVY9nXNbm4ZwD8wKzo19tsD7f02QleEwfm4lHV29P2dn+
         7U5+eBjTnYHFY2k038NGOig4k9AuLcaW21bnCgHxfypB89aYLpyEo8zJJLbqrGYNdT6q
         rCaOrkoiHpOhwcV0isM3Dpt+AYe4k3IiRQy6JXBFBfZYRgXsg6WzyxGNMN9BDptB2r8G
         3/BzbWiyPOwuuFN+i08HYE9oC1flRzQiva8lOIfo3ZoS0K1O5//nQItTRDXcSnyGHhpd
         B6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4Wa3zuGdPPlhF6BsX0vopA+9xtlRCdSj7XxNypRvgY=;
        b=eDIClLiSUx715ngr62Fq3fmfstV8xktcM5bBNOlrRFza72PaNOjV6Nasgx0QkLzY0f
         EW3AlPORLcPZ6ogK1MCnkuixmz+9YIGbDULGaVs8DNfe1UdXttOLwsXj4lck9SNDlH7a
         sA3cakaMr3Z5HqUHBHCwtSNhsAsOTKbm2BUN4cPSimmt1Mw83ZnBZUp/YXD6GxSD+kmd
         B7xTW8fK99B9Ge8/GP25MZdwSwJD8zth4WfwYgyZYgqA0zHzy94HSauoQBND4hhDYbPE
         31dMo47VulyQIr0DpulevdXGHlKFecpiuBvfEEv39YQjOY4ra8MVZI4lmZ2jNK4Lcv3d
         6oIA==
X-Gm-Message-State: ACrzQf3AABS/ujxL3vPVG0YuSf6dTpHaNYVNsUfN7dS5oGwEQaz0pIC5
        AtJz5rDTAASnUxtu4F1PuUNeExkQkSXszAgv3+MyuFc+2Nk=
X-Google-Smtp-Source: AMsMyM6/onXKmlmi48y+9Oj39tNtsrUcw88h4lmuDL7lgeCeAFf6rXMt+ipp9GLAJ1e6jJH90cSd+4st7GalIt3w450=
X-Received: by 2002:a81:4f89:0:b0:36a:f09f:73fc with SMTP id
 d131-20020a814f89000000b0036af09f73fcmr31265830ywb.487.1666961677715; Fri, 28
 Oct 2022 05:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <20221028102450.1161382-1-ajye_huang@compal.corp-partner.google.com>
 <20221028102450.1161382-3-ajye_huang@compal.corp-partner.google.com> <a7275ee4-c6ec-c0e8-c49d-dec9ca367d9f@linux.intel.com>
In-Reply-To: <a7275ee4-c6ec-c0e8-c49d-dec9ca367d9f@linux.intel.com>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Fri, 28 Oct 2022 20:54:31 +0800
Message-ID: <CALprXBavrYqWxKUgEJMWNXGCuBnKNjKk1n_4eFOeo+=6=juHYQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] ASoC: dmic: Add optional dmic selection
To:     =?UTF-8?B?QW1hZGV1c3ogU8WCYXdpxYRza2k=?= 
        <amadeuszx.slawinski@linux.intel.com>
Cc:     linux-kernel@vger.kernel.org, robh@kernel.org,
        alsa-devel@alsa-project.org,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        devicetree@vger.kernel.org,
        angelogioacchino.delregno@collabora.corp-partner.google.com,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Amadeusz,

Yes, the original version I tried the implementation on audio machine
driver, but one person gave me an idea for this dmic.c
Do you think it is appropriate on dmic.c?
 If it isn't, I will add kcontrol into audio machine driver.  thanks


On Fri, Oct 28, 2022 at 7:44 PM Amadeusz S=C5=82awi=C5=84ski
<amadeuszx.slawinski@linux.intel.com> wrote:
>
> On 10/28/2022 12:24 PM, Ajye Huang wrote:
> > Having two DMICs, a front DMIC and a rear DMIC,
> > but only host audio input AUX port0 is used for these two Dmics.
> > A "dmic_sel-gpios" property is used for a mixer control to switch
> > the dmic signal source between the Front and Rear Dmic.
> >
> > usage: amixer -c0 cset name=3D'Dmic Mux' 'FrontMic'
> > usage: amixer -c0 cset name=3D'Dmic Mux' 'RearMic'
> >
> > Refer to this one as an example,
> > commit 3cfbf07c6d27
> > ("ASoC: qcom: sc7180: Modify machine driver for 2mic")
> >
> > Signed-off-by: Ajye Huang <ajye_huang@compal.corp-partner.google.com>
> > ---
>
>
> I'm very suspicious of this patchset. As it is you add kcontrol which
> won't take effect on most platforms making use of DMIC. It feels to me
> that it is something you want to handle on machine driver side instead.
>
