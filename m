Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8A8761041
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 12:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbjGYKHg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 06:07:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjGYKHf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 06:07:35 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E33E710D
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 03:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1690279654; x=1721815654;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1uw5efYhJWeMt9QNbpoLleLIfGC+amYIGyr4fPDWts0=;
  b=c7qbopmPdDSkyDG8KJK147J8EFx/T8jrC0CmYB6vAXHrushBA1xh6fHR
   AtEzZ+6SUfk4l9jbDRnul4tKpEcpqwkWF5MTeMOLYf5Te86qGjVjssBip
   V1PGtDKSdyk4McJn6VddSRelBvGsMkPAZ691KdXJJI6hFH0pL5LGW+z94
   00Rq5XAIn7jakie8vCnZzoogyW60QxS+6VGIaIUjhwreiDxJHRZiDVE1k
   Ny8aMb+dSZqDzE4T/9sPRhQzW9zVyouwo3JF/QobAasjJFFStnKtXyiKA
   chAxMXpL0DE6I6ifhJHTn4eCjlMVjlqrssE2cN9/VgjRkFf9ebI+AAsND
   w==;
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; 
   d="asc'?scan'208";a="222089118"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 Jul 2023 03:07:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 25 Jul 2023 03:07:30 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Tue, 25 Jul 2023 03:07:28 -0700
Date:   Tue, 25 Jul 2023 11:06:54 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Anup Patel <apatel@ventanamicro.com>
CC:     Conor Dooley <conor@kernel.org>,
        Mayuresh Chitale <mchitale@ventanamicro.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        <linux-riscv@lists.infradead.org>, <kvm-riscv@lists.infradead.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 0/7] Risc-V Kvm Smstateen
Message-ID: <20230725-dwelled-obtain-24bf6a4e6964@wendy>
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
 <20230724-scrap-pranker-7fd120078136@spud>
 <CAK9=C2XXnQWqJgES2iWjatG9SFeFEUXZzLXz1gTYQ0aAh=7KJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="BR67x+OQMbrXN+rh"
Content-Disposition: inline
In-Reply-To: <CAK9=C2XXnQWqJgES2iWjatG9SFeFEUXZzLXz1gTYQ0aAh=7KJg@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--BR67x+OQMbrXN+rh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Anup,

On Tue, Jul 25, 2023 at 09:47:14AM +0530, Anup Patel wrote:
> On Mon, Jul 24, 2023 at 10:08=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> > On Mon, Jul 24, 2023 at 07:50:26PM +0530, Mayuresh Chitale wrote:
> > > This series adds support to detect the Smstateen extension for both, =
the
> > > host and the guest vcpu. It also adds senvcfg and sstateen0 to the ON=
E_REG
> > > interface and the vcpu context save/restore.
> >
> > There's not really an explanation in this series of where Smstateen is
> > needed, or why it is only implemented for KVM. The spec mentions that t=
his
> > also applies to separate user threads, as well as to guests running in a
> > hypervisor. As your first patch will lead to smstateen being set in
> > /proc/cpuinfo, it could reasonably be assumed that the kernel itself
> > supports the extension. Why does only KVM, and not the kernel, require
> > support for smstateen?
>=20
> Here's the motivation behind Smstateen from the spec:
> "The implementation of optional RISC-V extensions has the potential to op=
en
> covert channels between separate user threads, or between separate guest
> OSes running under a hypervisor. The problem occurs when an extension
> adds processor state---usually explicit registers, but possibly other for=
ms of
> state---that the main OS or hypervisor is unaware of (and hence won=E2=80=
=99t
> context-switch) but that can be modified/written by one user thread or
> guest OS and perceived/examined/read by another."

This much I gathered from my (brief) reading of the spec.

> Based on the above, Ssaia extension related CSRs need to be explicitly
> enabled for HS-mode by M-mode (which OpenSBI already does) and
> for VS-mode by HS-mode (which this series adds for KVM RISC-V).

Ah right. Reading back through the patches, in [4/7] I see "Configure
hstateen0 register so that the AIA state and envcfg are accessible to
the vcpus". I would ask that, at least, [1/7] is updated to provide this
motivation & the rationale for why only KVM needs to care. The
motivation for the work should appear in the patchset somewhere, and
probably in the cover too.

> Currently, there are no new extensions addings CSRs for user-space
> so RISC-V kernel does not need to set up sstateenX CSRs for processes
> or tasks but in the future RISC-V kernel might touch sstateenX CSRs.

Right, that is what I figured was going on, ignoring it for now, in the
hopes that we remember to deal with it before some userspace visible
side channel shows up.

Dumb question maybe, but I find this to be quite -ENOPARSE:
> Bit 0 of these registers is not custom state itself; it is a standard fie=
ld of a standard CSR, either mstateen0,
> hstateen0, or sstateen0. The requirements that non-standard extensions mu=
st meet to be conforming are not
> relaxed due solely to changes in the value of this bit. In particular, if=
 software sets this bit but does not execute
> any custom instructions or access any custom state, the software must con=
tinue to execute as specified by all
> relevant RISC-V standards, or the hardware is not standard-conforming.
Does this mean that bit 0 of the CSRs mentioned in the quote controls all
non-standard extensions at the respective privilege level? If so, does
that not make the "ignore that we will now report the presence of this
extension" approach flimsier, since we have little visibility into what
may exist on that front?

Granted, it is not as if delaying this patchset would benefit anyone in
that regard, since those attempting to exploit the side channel know that
the side channel exists, whether the kernel reports having sstateen or
not. This probably just boils down to /proc/cpuinfo being a terrible
interface for detecting extension support in the kernel.
I've got some other comments about it that came up on IRC yesterday, so
I'll go complain about it elsewhere :)

Thanks,
Conor.

--BR67x+OQMbrXN+rh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZL+evgAKCRB4tDGHoIJi
0iLeAP42cokJ0f9kUVftTkbT2M0XaFTi5k/0fY5J428UHxg6xAD+IwTqs0CJSI4k
wb1oVsSPTawNFFR1hxCDmvbOAiBJawc=
=AbPh
-----END PGP SIGNATURE-----

--BR67x+OQMbrXN+rh--
