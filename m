Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE8E45B65A2
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 04:34:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229943AbiIMCeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 22:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiIMCeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 22:34:16 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F92B52E5D
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 19:34:14 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id w16so8964573eji.9
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 19:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=5K5C19ucjIxirrTVwdTH8e1rDFFb25mycghKPQV6gu0=;
        b=vdpA6/PCDhdOn4FHZdxwU6muy2HDRh6oIz4AgmwFHsQZn4+Voak+h+r/3WyHUZSDy2
         MT1zLdA1+Va/7dTKENil5CMjiiM5w3L/1bYVJmXlMmeJ2WTtcC09uf4rA2E9YhncIrnE
         x3eniFG3ljQmdA8u1Z715pWgOVFldMnB0uCJV6iBid35EBecyOnqU6C1vi2PNe7J911J
         b6Ga8Al/azf84L27DOL0pVQUZwuJhAicRv9wmua1tDiX8Et9brdlVI8nI7oEKCTyVloU
         xuYjwAnYMhQV3lFt19A/9eMqZ3LC/267oiEotbje/X0XktdF42H1NfJoncxojN7JAP74
         OsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=5K5C19ucjIxirrTVwdTH8e1rDFFb25mycghKPQV6gu0=;
        b=FhfCZY/+fbnVFlmCZJLdB1B6Jws6Yr/rcxbWxI9mcLwSFeAIJn6vuSR3OeukvUFcr2
         EN7DdD9+jbNKNStsueQKYRHFwFcEwOlGaDvcY4PPuwBxS/KLBCdW8i7SVm4l2oyyJOnF
         WOIdmNDf/+zz/I8wq+Ecx4zB/soBOzHu23r5dy5iMQHt1ZjnjlC1UPRBFfsJI9Uo2P8D
         Jn2ep4+JsurIrAjCjErgbmt+u+tcbo6Ps4ubQtbdqsQxgGp/vPxGML0Y4S9rfWs0umZV
         fn1V/g8fBqdnM3f45/hcwBURDKwWOUMqo23aNftYpJU5VZXg+1+rfBRdX3uxJ9bSRXbH
         PMhQ==
X-Gm-Message-State: ACgBeo3dKedONdtZOl0nIqUd9S3ET9TwP+tyHKSjVvFQu9AL1/6bf3Ed
        y3tY1pwsKQSqA3qUMsLt+uGxtUM/zT5cYVeLITd7sQ==
X-Google-Smtp-Source: AA6agR53syAuFCxMC5jPl66C8lWNug01/UM+Q3l+8Iaatq6b22RcIEBqU7NnV0Jd0WyjriPxcN5ew/70t+IrqLbxtnk=
X-Received: by 2002:a17:907:1c0b:b0:77e:7da8:f6ed with SMTP id
 nc11-20020a1709071c0b00b0077e7da8f6edmr4079086ejc.309.1663036453344; Mon, 12
 Sep 2022 19:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220817202538.21493-1-leoyang.li@nxp.com> <20220817202538.21493-2-leoyang.li@nxp.com>
 <CAOesGMhz8PYNG_bgMX-6gka77k1hJOZUv6xqJRqATaJ6mFbk6A@mail.gmail.com>
 <CAOesGMjsegmLUVxbjZJ3kgxnDkVTyxy5BB=is2CM_7Se7TQrWQ@mail.gmail.com> <Yx+XonDqmpE4KGhD@shell.armlinux.org.uk>
In-Reply-To: <Yx+XonDqmpE4KGhD@shell.armlinux.org.uk>
From:   Olof Johansson <olof@lixom.net>
Date:   Mon, 12 Sep 2022 19:34:01 -0700
Message-ID: <CAOesGMh58nTcKGbNi0VzNTg3GwWM6-HZRBJPn706-6pzrpJ4Wg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: lx2160a: update PCIe nodes to match
 rev2 silicon
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, shawnguo@kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 12, 2022 at 1:33 PM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Sep 12, 2022 at 11:54:06AM -0700, Olof Johansson wrote:
> > On Mon, Sep 12, 2022 at 12:05 AM Olof Johansson <olof@lixom.net> wrote:
> > >
> > > Hi,
> > >
> > > On Wed, Aug 17, 2022 at 1:26 PM Li Yang <leoyang.li@nxp.com> wrote:
> > > >
> > > > The original dts was created based on the non-production rev1 silicon
> > > > which was only used for evaluation.  Update the PCIe nodes to align with
> > > > the different controller used in production rev2 silicon.
> > >
> > > How can I confirm what version of silicon I have on a system?
> > >
> > > My non-evaluation commercially purchased system (HoneyComb LX2K) has:
> > >
> > > # cat /sys/bus/soc/devices/soc0/revision
> > > 1.0
> > >
> > > And I will be really grumpy if this system stops working. It's what I
> > > use to do all my maintainer work, even if that's been fairly dormant
> > > this year.
> > >
> > > It's overall setting off red flags to update an in-place devicetree to
> > > a "new revision" of silicon instead of adding a new DT for said
> > > revision. 2160A has been on the market for several years, so it just
> > > seems odd to all of the sudden retroactively make things
> > > non-backwards-compatible.
> >
> > Confirmed that this patch renders my HoneyComb unbootable -- PCIe doesn't probe.
> >
> > Shawn, please revert, and be on the lookout for similar problematic
> > approaches in the future. Thanks!
>
> I think you may also need to beware of the MC firmware revision - I
> seem to remember reading in the changelog notes for it that NXP
> dropped support in the MC firmware for the older silicon, though I
> may be misremembering. It's been a while since I really looked at
> the LX2160A from the point of view of maintaining or developing
> anything for it.

Yeah, and if anything this speaks against trying to update u-boot/EFI
on it to something newer, bugs in firmware or not.


-Olof
