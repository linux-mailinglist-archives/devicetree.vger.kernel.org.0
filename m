Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233CE50E5CE
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 18:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239109AbiDYQbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 12:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238234AbiDYQbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 12:31:43 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EF6C92D03
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:28:38 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id l7so30725171ejn.2
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fRiwDBZnDgmjoXk+v3UqbFIX2wID46vTLycQO6kZ6oA=;
        b=cTbfvcIbnv0ABYCzXpNUBwEqcUngBeCwy9AYM1j1KGT2gkBiwdrOWu6C60pDwjoXsZ
         FmlAcNg535t7wyRbaK6t1cI5muf6UfkUoFBDoj8pGWoTtjuo0JHHmMSb4TFokN8gFQJ2
         kRoMkddtujSBJou63vsZkgAkQskVlmAmBfNl32fpybDbMn6y9cQE09nCPlIVIIjPufIT
         lfVAcLu6QaVIWo665M7lGXprk8UAjLBaVJfq7dBaEuiPPVdRHsFIht8P4C1/9jLzY9xb
         mqcTGC80E6bzymhBsMyPNMVEognWCLpQchQN1HMloIBHfVWI3kYw/83ympeJnd2VefTB
         nSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fRiwDBZnDgmjoXk+v3UqbFIX2wID46vTLycQO6kZ6oA=;
        b=DvVcsacFDHREpEvCtbhncgsmB9hqNylJbarh1xKCM5ne+17v+KHxoCeGI0J7MS8L1D
         y/hkuvZ2lxWRdhpKcPVVOFXfTte13K00XWpMYPdIHj/L8Zw9cBjniDiuduTuynpyNJpr
         Ztb9EF/+O7rLvgDM396Av9MK7B68iXZtA02rnWxKbFR3UGDgdR5MmAXDAOpZt1iqJ+pd
         SSScJBlXyToBRb9Qzs1rblmxOg9t1a0h8i5bBC7qdmiplkXOdVfDlojLdkRTfJQ5xR2Y
         VoUuR2TAe7c5iJyY5PAE8VRuwV0mmv46WAuHdGRVx11QYSorS0NZq63tuAqsPzZvI6DR
         R24A==
X-Gm-Message-State: AOAM530MbumrZ5H6z3aBMkfp34s+fSqXM/y02o4fMaY0uVhfwz5LGmIm
        P31XTcHl1Zn+iKobymAKtpQ=
X-Google-Smtp-Source: ABdhPJw9zVOXiVJnD/AtfXS3TGJfucx3UzOyQ7W1eZ1UG6Ro9jkq+Zrb/8bCxXkbiSMT6I6DnUimjw==
X-Received: by 2002:a17:907:7b98:b0:6f0:349:4a66 with SMTP id ne24-20020a1709077b9800b006f003494a66mr17489009ejc.223.1650904117023;
        Mon, 25 Apr 2022 09:28:37 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-32-107.static.triera.net. [86.58.32.107])
        by smtp.gmail.com with ESMTPSA id x4-20020a50f184000000b00425d7cb883fsm2874948edl.67.2022.04.25.09.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 09:28:36 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Samuel Holland <samuel@sholland.org>,
        Harald Geyer <harald@ccbib.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, Torsten Duwe <duwe@suse.de>
Subject: Re: Re: [PATCH] arm64: dts: allwinner: teres-i: Add GPIO port regulators
Date:   Mon, 25 Apr 2022 18:28:35 +0200
Message-ID: <5259899.Sb9uPGUboI@kista>
In-Reply-To: <462969fd722eec45aa5f142de48b7fbd@ccbib.org>
References: <20220415165605.28560-1-harald@ccbib.org> <336f8b96-6eee-16a5-e896-e90c4020f740@sholland.org> <462969fd722eec45aa5f142de48b7fbd@ccbib.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Harald!

Dne ponedeljek, 25. april 2022 ob 13:01:54 CEST je Harald Geyer napisal(a):
> On 24.04.2022 03:56, Samuel Holland wrote:
> > On 4/15/22 11:56 AM, Harald Geyer wrote:
> >> Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.
> >>
> >> Usually supplies are linked via the 'regulator-name' property of
> >> regulator nodes. However when regulators are shared we need to
> >> declare the additional links in the pinctrl node.
> >>
> >> Signed-off-by: Harald Geyer <harald@ccbib.org>
> >
> > I'm curious if this solved an issue for you, or if this is just for 
> > accuracy.
> > Both of these regulators have the regulator-always-on property, so
> > they should have been enabled already.
> 
> You are right, there shouldn't be any change in functionality. It is 
> mostly
> for extra correctness. However the pincontrol driver started spewing 
> lot's
> of warnings about missing regulator nodes a few versions back. The 
> visible
> effect of this change is to silence those warnings. Also make the DTS 
> more
> future proof in case the driver is made even more picky in the future.
> 
> > If it's the latter reason, why not add the other
> > ports? Regardless:
> 
> PD, PE and PL have dedicated regulators, that can be matched via the
> 'regulator-name' property. I didn't want to specify the same 
> information
> in two places.

"regulator-name" is only a label, while phandle is actual regulator reference 
that can be used by the driver. While DT files reside in Linux kernel source, 
they are used by other OSes and bootloaders, so you can't really assume what 
is good or not just by judging based on Linux behaviour. So please add PD and 
PL regulators too.

> 
> For the PF supply, I couldn't find any connection information in the
> board schematic. I could have added a dummy regulator. But since there 
> is
> only one warning about pf-supply during driver initialization and not 
> the
> dozens of warnings I see about PC and PG, I figured, I'd rather not add
> information of dubious use or qualiy.

You mean PE right? There is no PF supply on A64. Anyway, if it's not on 
schematic, it can be assumed unconnected and thus you shouldn't define that 
property. Messages like "using dummy regulator" are fine in such cases .

There is no issue of "dubious quality" if schematic is clear. Also don't worry 
about usefulness. DT files are hardware description files. They should reflect 
hardware configuration, no matter how useful information seems.

FYI, information in this case is useful to the driver. If you check sunxi 
pinctrl driver, you can see that port bias is set according to regulator 
voltage.

Best regards,
Jernej

> 
> best regards,
> Harald
> 
> 
> > Reviewed-by: Samuel Holland <samuel@sholland.org>
> >
> >> ---
> >>  arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 5 +++++
> >>  1 file changed, 5 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts 
> >> b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> >> index aff0660b899c..cc316ef2e2d6 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> >> @@ -197,6 +197,11 @@ &ohci1 {
> >>  	status = "okay";
> >>  };
> >>
> >> +&pio {
> >> +	vcc-pc-supply = <&reg_dcdc1>;
> >> +	vcc-pg-supply = <&reg_aldo2>;
> >> +};
> >> +
> >>  &pwm {
> >>  	status = "okay";
> >>  };
> >>
> 
> 


