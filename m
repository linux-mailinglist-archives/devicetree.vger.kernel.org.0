Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 776606EE5A6
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 18:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234427AbjDYQYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 12:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234211AbjDYQYX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 12:24:23 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3470983D0
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 09:24:22 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-63b4dfead1bso5000301b3a.3
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 09:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1682439861; x=1685031861;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A+2RKgRTgqBi4nnqklCnSEcbyfURv8sZUbEANoOcuP4=;
        b=EH/nDeUngCJIqYbbw+DwG6MDCM7wQTn4lsv64sERD0ifKI2xMcEoTh1t9NoiFT/H8E
         RQayiVDoIZ+t7nG6DMfgqjTwfwBZv/utIXWa+fn6/soWq3fMJ/hKoH1pouW/N0T8TGXW
         OSjxGKUG1/fPoHxIbkcjl0RIa/ZWj59SwD59j2aJbf/R2+15AEG5UY0Da5y/sNSWJo0/
         LpbZK6eAOe1MNdLIP6HtmskT+MnuEfNt/J+Y1p9oxEFHsVRl9iC2gpAeHapNMbwEjNXR
         pTYM2gbLVbsRpXDeN3CPFBzTIVPfVDOQcCXRbSqUQI/TL82jlswSlu5nq7RN1w+q+xen
         XW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682439861; x=1685031861;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+2RKgRTgqBi4nnqklCnSEcbyfURv8sZUbEANoOcuP4=;
        b=DkvaU9QRm12oNEnTH5tW0zRUbSqT0aUzLF1UwJCvzAaNUz4GPQeWxY2z5a/07rgjYU
         lVjYi/3J/jfuX7+jnyELdMHom6JOwhBD7A3rtA0ATZW9en1OBPGgtV3Zqtrh5i59sEj9
         V4jQsA1JQdzdHI6Csj0FgRnNYSGSQMJHQ5ND0nR18conVseOdv6XB/1fR4NMVvEu08M6
         Hqs3/40vboFYKtSdJJIUuEEx5Hh4mPQwwFFG13Uh5Mf/qUu8oQD0kT9u2Fds49gnkHot
         UgWAdyyyHM1/dGkk4x84bTdtdiIF8sOFzWRTWL4uUfzzvcI1zrudTITYrFT9Ag/kmNr5
         ufIw==
X-Gm-Message-State: AAQBX9dgYZh531T9MSi2vBu8MfjzO1vCF1ZSVMCBwc1PdbujtRLCBUhW
        /viHlIY8IlhxZSJA6cmtTcrVkRs+HDh6ARgq3Vtp+g==
X-Google-Smtp-Source: AKy350Zk6IhxL7pHaxOqW5m1RWhVKXWFjnZfpRkOZdGzYd8jhbtiyGphLJZhXzRMBmt7heXl0jS7eAKQOD+Ua3A8nos=
X-Received: by 2002:a17:90a:1c10:b0:24b:60d4:3bb1 with SMTP id
 s16-20020a17090a1c1000b0024b60d43bb1mr16450324pjs.43.1682439861459; Tue, 25
 Apr 2023 09:24:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230420122924.37997-1-iivanov@suse.de> <20230420122924.37997-3-iivanov@suse.de>
 <0a23575f-8079-2d72-2151-dd0785984d1d@i2se.com>
In-Reply-To: <0a23575f-8079-2d72-2151-dd0785984d1d@i2se.com>
From:   Tim Gover <tim.gover@raspberrypi.com>
Date:   Tue, 25 Apr 2023 17:24:10 +0100
Message-ID: <CAAvKZ67WE4EvChxXbCw_Q-_VJWRb0p=qopYsWsXmhW6uFfp53w@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] ARM: dts: Add nvmem node for BCM2711 bootloader
 public key
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        "Ivan T. Ivanov" <iivanov@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Apr 2023 at 17:02, Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Hi Tim,
>
> Am 20.04.23 um 14:29 schrieb Ivan T. Ivanov:
> > From: Tim Gover <tim.gover@raspberrypi.com>
> >
> > Make a copy of the bootloader secure-boot public key available to the OS
> > via an nvmem node. The placement information is populated by the
> > Raspberry Pi firmware[1] if a public key is present in the BCM2711
> > bootloader EEPROM.
> >
> > [1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes
> >
> > Signed-off-by: Tim Gover <tim.gover@raspberrypi.com>
> > [iivanov] Added link to documentation.
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > ---
> >   arch/arm/boot/dts/bcm2711-rpi.dtsi | 14 ++++++++++++++
> >   1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > index 98817a6675b9..e30fbe84f9c3 100644
> > --- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> > @@ -15,6 +15,7 @@ aliases {
> >               ethernet0 = &genet;
> >               pcie0 = &pcie0;
> >               blconfig = &blconfig;
> > +             blpubkey = &blpubkey;
> >       };
> >   };
> >
> > @@ -67,6 +68,19 @@ blconfig: nvram@0 {
> >               no-map;
> >               status = "disabled";
> >       };
> > +
> > +     /*
> > +      * RPi4 will copy the binary public key blob (if present) from the bootloader
> > +      * into memory for use by the OS.
>
> is the public key also possibly available for CM4 and RPi 400?

Yes, the public key is potentially available on CM4 and RPi 400.  If
there is no public-key then the firmware will leave the status field
as "disabled".

>
> > +      */
> > +     blpubkey: nvram@1 {
> > +             compatible = "raspberrypi,bootloader-public-key", "nvmem-rmem";
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +             reg = <0x0 0x0 0x0>;
> > +             no-map;
> > +             status = "disabled";
> > +     };
> >   };
> >
> >   &v3d {
