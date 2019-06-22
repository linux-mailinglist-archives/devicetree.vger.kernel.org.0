Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B0764F7C4
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2019 20:15:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726317AbfFVSPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jun 2019 14:15:36 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:40026 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725995AbfFVSPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jun 2019 14:15:36 -0400
Received: by mail-io1-f65.google.com with SMTP id n5so496680ioc.7
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2019 11:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=BIcRqsgDXayymj+Ku1N955o6u3WrPmmoPvChsB+QKGI=;
        b=at0ibNP5XuqFVFVIo8SswkbJu1g6jk8r4zMQhu18QrNYqV66ulyKPfysi4MW+yonvu
         dSVYNeWEFEX9BVtKTOvAMRyvH0EUZIk246vNZYA1OmjwXfYbNN2Zx1mpz2Typjt7Yu5a
         QoRG/aWeaGtoScqn+wmzvpoTblze7EvD/iuLH8xvm5jfDA8BqBxqPpo9WIhJZ2PTLJtn
         jtR9skmCSNbjwJecOoeNa038Zdc09KlKcqbZKyVRdIFoBs9vcGfcI5+MNb4qwgU8owI6
         eycrZ0b5e0qh+ske1yf+RUenwv0Ip5i7dx18JtxGhu/GAzja8We3mYXAhtw5T4kLyrWP
         ivbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=BIcRqsgDXayymj+Ku1N955o6u3WrPmmoPvChsB+QKGI=;
        b=JUGd76VOrlBX6KuN5DtHCUqHdHPpJTqkUupwqoqnhZTQx0QxXpNDOyM84FpjuvnLea
         e7VCwknAEGSSn+CqshhoM/+zUXXl9+0WznFn5zAZicErQqHvZb70CO7ZZOHU6soLawAl
         IguvlmdRNHhjOvsOuKf3GYitzv70BiPu3cBpFvHbgfY9DgwMdNmuxD0efCwQNGR8NrW5
         0Yh9Qe3fV3trrgY7iJ63MFa4y1IQpyqYswLBBte9Tv6EPTwxV+z0bGSWacHtZEpS5PJd
         jV09OUKKrMs6AS/YCxRn8BX+68Ugm0IOH5Lf+MJXwMYu40VCxrPf++TeGRotndq7FmEt
         Rp/w==
X-Gm-Message-State: APjAAAXPYlQzzfVZdfcAqkRiqqnwqyYk99hTaTBohxzyelPgDZArxNbl
        b/UJgL9oFa0B3PGvDhXfJjEMnw==
X-Google-Smtp-Source: APXvYqwbUuI6pYqEW3xUO9duU+C7aelY2bo+uYR/A2Ny5gYHLTlczbg6foBJTh1C3L//AV4ckU7iAQ==
X-Received: by 2002:a5e:da47:: with SMTP id o7mr8936752iop.83.1561227335113;
        Sat, 22 Jun 2019 11:15:35 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
        by smtp.gmail.com with ESMTPSA id l11sm7667385ioj.32.2019.06.22.11.15.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Jun 2019 11:15:34 -0700 (PDT)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
From:   Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
Date:   Sat, 22 Jun 2019 13:15:33 -0500
Cc:     "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
        "palmer@sifive.com" <palmer@sifive.com>,
        "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Content-Transfer-Encoding: quoted-printable
Message-Id: <24385C38-D1FC-46B0-8AAA-0FB0B371784A@sifive.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
 <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
To:     Atish Patra <Atish.Patra@wdc.com>,
        "yash.shah@sifive.com" <yash.shah@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> On Jun 21, 2019, at 2:14 PM, Atish Patra <Atish.Patra@wdc.com> wrote:
>=20
> On Fri, 2019-06-21 at 16:23 +0530, Yash Shah wrote:
>> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>>=20
>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>> ---
>> arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16
>> ++++++++++++++++
>> arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>> 2 files changed, 25 insertions(+)
>>=20
>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> index 4e8fbde..c53b4ea 100644
>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> @@ -225,5 +225,21 @@
>> 			#address-cells =3D <1>;
>> 			#size-cells =3D <0>;
>> 		};
>> +		eth0: ethernet@10090000 {
>> +			compatible =3D "sifive,fu540-macb";
>> +			interrupt-parent =3D <&plic0>;
>> +			interrupts =3D <53>;
>> +			reg =3D <0x0 0x10090000 0x0 0x2000
>> +			       0x0 0x100a0000 0x0 0x1000>;
>> +			reg-names =3D "control";
>> +			status =3D "disabled";
>> +			local-mac-address =3D [00 00 00 00 00 00];
>> +			clock-names =3D "pclk", "hclk";
>> +			clocks =3D <&prci PRCI_CLK_GEMGXLPLL>,
>> +				 <&prci PRCI_CLK_GEMGXLPLL>;
>> +			#address-cells =3D <1>;
>> +			#size-cells =3D <0>;
>> +		};
>> +
>> 	};
>> };
>> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> index 4da8870..d783bf2 100644
>> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> @@ -63,3 +63,12 @@
>> 		disable-wp;
>> 	};
>> };
>> +
>> +&eth0 {
>> +	status =3D "okay";
>> +	phy-mode =3D "gmii";
>> +	phy-handle =3D <&phy1>;
>> +	phy1: ethernet-phy@0 {
>> +		reg =3D <0>;
>> +	};
>> +};
>=20
> Thanks. I am able to boot Unleashed with networking enabled with this
> patch.
>=20
> FWIW,=20
> Tested-by: Atish Patra <atish.patra@wdc.com>
>=20
> Regards,
> Atish

I am able to boot using a build from the dev/new-dts branch of
my freedom-u-sdk development tree [1] which has this patch
with an additional reset-gpios entry for the ethernet phy in the
DTS provided by the legacy U-boot[2].

Tested-by: Troy Benjegerdes <troy.benjegerdes@sifive.com>

[1] https://github.com/tmagik/freedom-u-sdk=20
[2] =
https://github.com/sifive/HiFive_U-Boot/blob/081373fa3eb0ca79ba3f4a703e8e8=
3a15135a6d1/arch/riscv/dts/hifive_u540.dts#L73=
