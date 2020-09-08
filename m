Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B21C260B95
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 09:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728759AbgIHHMC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 03:12:02 -0400
Received: from ozlabs.org ([203.11.71.1]:52799 "EHLO ozlabs.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728562AbgIHHMB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Sep 2020 03:12:01 -0400
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4BlxCz2bZGz9sTM;
        Tue,  8 Sep 2020 17:11:59 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
        s=201909; t=1599549119;
        bh=3efI13X54DGkzx1Rpyo+HHculy/7YIzgSvQGS5+rp/g=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
        b=BZwweZaAxN7a6jnerLAXaBZoFLytkt/tL6r/PM4y2NNqhX7pFF/W4qDE3aTijEinf
         9Vo+artcy0cFMJzsy88Gr+H5rpUix6v+Wj9LJla2XM6S0xOeqbTWL7duR5qxB+S/qd
         7VNIjFhBEfBbVGh2fqixT4VauccNkm5mcCEXcue/P8mRouAyjpR7/ANc/qB+eJJbOq
         vpc/Y4ooxWR03D6RkTk51BERHR7FNh29/QqNuPRHw0npG0IKOCgC2faSfYq2y4vXf2
         liFj7+QORzjOBMmOx8oYVCkPB8MvgdxGTkuYnOIk0bdqf50XzO56hCXVnJBlRo0nhA
         DD61e+2j+CEzg==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     Christian Lamparter <chunkeey@gmail.com>, linuxppc-dev@ozlabs.org
Cc:     sfr@canb.auug.org.au,
        "open list\:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Chris Blake <chrisrblake93@gmail.com>
Subject: Re: [PATCH] powerpc/boot/dts: Fix dtc "pciex" warnings
In-Reply-To: <d2652e63-b136-a805-fd6d-00584b64c772@gmail.com>
References: <20200623130320.405852-1-mpe@ellerman.id.au> <d2652e63-b136-a805-fd6d-00584b64c772@gmail.com>
Date:   Tue, 08 Sep 2020 17:11:58 +1000
Message-ID: <87mu20spxd.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Lamparter <chunkeey@gmail.com> writes:
> On 2020-06-23 15:03, Michael Ellerman wrote:
>> With CONFIG_OF_ALL_DTBS=3Dy, as set by eg. allmodconfig, we see lots of
>> warnings about our dts files, such as:
>>
>>    arch/powerpc/boot/dts/glacier.dts:492.26-532.5:
>>    Warning (pci_bridge): /plb/pciex@d00000000: node name is not "pci"
>>    or "pcie"
>>
>> The node name should not particularly matter, it's just a name, and
>> AFAICS there's no kernel code that cares whether nodes are *named*
>> "pciex" or "pcie". So shutup these warnings by converting to the name
>> dtc wants.
>>
>> As always there's some risk this could break something obscure that
>> does rely on the name, in which case we can revert.
>
> Hmm, I noticed this when I was looking up why nobody commented
> on my series of adding more devices to the APM82181/bluestone series:
>
> <https://lore.kernel.org/linuxppc-dev/cover.1598124791.git.chunkeey@gmail=
.com/>
> (I'll post a v3 "soonish".)
>
>
> Unfortunately yes. This patch will break uboot code in Meraki MX60(W) / M=
X60.
>
>  > https://github.com/riptidewave93/meraki-uboot/blob/mx60w-20180413/boar=
d/amcc/bluestone/bluestone.c#L1178
>
> | if (!pci_available()) {
> | =C2=A0=C2=A0=C2=A0 fdt_find_and_setprop(blob, "/plb/pciex@d00000000", "=
status",
> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "disabled", sizeof("disabled"), 1);
> | }
>
>
> Backstory: There are two version of the Meraki MX60. The MX60
> and the MX60W. The difference is that the MX60W has a populated
> mini-pcie slot on the PCB for a >W<ireless card.
>
> That said, this is not earth shattering.

I'm happy to revert that hunk if you think any one is actually booting
mainline on those.

cheers

> (In theory, this can also cause problems for the bluestone and canyonlands
> dev boards that have the option to be configured as either dual sata or
> pcie+sata.... But this is probably not a problem for customer boards)
>
> OT: Please note that the plb, opb and ebc node paths (/plb/opb/ebc) are
> hardcoded too :(. Amending the proper unit-addresses will lead to no-long=
er
> working DTBs as the "ranges" are missing.
>
> Cheers,
> Christian
>> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>> ---
>>
>> diff --git a/arch/powerpc/boot/dts/bluestone.dts b/arch/powerpc/boot/dts=
/bluestone.dts
>> index cc965a1816b6..aa1ae94cd776 100644
>> --- a/arch/powerpc/boot/dts/bluestone.dts
>> +++ b/arch/powerpc/boot/dts/bluestone.dts
>> @@ -325,7 +325,7 @@ EMAC0: ethernet@ef600c00 {
>>   			};
>>   		};
>>=20=20=20
>> -		PCIE0: pciex@d00000000 {
>> +		PCIE0: pcie@d00000000 {
>>   			device_type =3D "pci";
>>   			#interrupt-cells =3D <1>;
>>   			#size-cells =3D <2>;
