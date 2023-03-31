Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F1DA6D1577
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 04:09:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbjCaCJU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 22:09:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbjCaCIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 22:08:05 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39AFA191D3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 19:04:52 -0700 (PDT)
Received: from [192.168.191.192] (pa49-196-168-189.pa.vic.optusnet.com.au [49.196.168.189])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E7F002003C;
        Fri, 31 Mar 2023 10:04:42 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680228286;
        bh=FRcNqViE9c7WQ/i9eW8BGfNrxI+PQ1Y9mzlivfH1KoQ=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=W/r749UocZtNOJSQaemMe4xu5Teqjtvx/hZvO6KccgA757Bqs3yodN0XB3FWpYGKJ
         FFFRTQIh1jWK+84qZO5yufmzDchXLtogUISkYHQogmTUReXc6p+EbtVW4wSS+MK7CK
         zJdSQ8DgT7mKj/l1ZBSihLbUbH6htKqvQ2/bmyDWopV5aCg+ZQuJX+5dVkvo68Qwc4
         zCXP3YsfBScGNCXsQH77FN9PrXnePh1SwrfdRFeTT/CDCbGAwhtc6qxwO3Cb/jNwUD
         fJItXaW8adj+vCU0o6Kbtxu20oTvpDbSGjiMiK7y7OZTBX7pi88abAMGUSv3JGvWvn
         TvfgusK8/Qinw==
Message-ID: <fa6ff04cbbbb126e6902757d668301092d7320ae.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 3/3] i3c: ast2600: Add AST2600 platform-specific
 driver
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Ben Dooks <ben.dooks@sifive.com>, linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Date:   Fri, 31 Mar 2023 10:04:40 +0800
In-Reply-To: <b6d88196-aafc-4880-9de3-7725e253cfa7@sifive.com>
References: <cover.1680160851.git.jk@codeconstruct.com.au>
         <d4424535a88f529ca8efa67246ee25a5d810c6c1.1680160851.git.jk@codeconstruct.com.au>
         <b6d88196-aafc-4880-9de3-7725e253cfa7@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ben,

Thanks for the review. Comments inline:

> How about wrapping the dw_i3c_master struct in an as2600_master struct
> and then you can use container of, and simply do sizeof(struct
> ast2600_master) ?
>=20
> Also removes the need below to set pdata at-all

Yep, sounds good, and avoids my quirky pointer arithmetic below that.

> > +static struct platform_driver ast2600_i3c_driver =3D {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.probe =3D ast2600_i3c_probe=
,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.remove =3D ast2600_i3c_remo=
ve,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.driver =3D {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0.name =3D "ast2600-i3c-master",
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0.of_match_table =3D
> > of_match_ptr(ast2600_i3c_master_of_match),
>=20
> given this is probably an of-device only, of_match_ptr not needed
> here?

Ack, will remove.

Thanks,


Jeremy
