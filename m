Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F272E8764
	for <lists+devicetree@lfdr.de>; Sat,  2 Jan 2021 14:04:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726561AbhABNDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jan 2021 08:03:44 -0500
Received: from mout.gmx.net ([212.227.15.19]:51669 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726524AbhABNDn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 2 Jan 2021 08:03:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1609592512;
        bh=X7cSiW/exb1bK5fSMJCw7kzNC9RgO96A6ULbY/QbCSo=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
        b=CJal0fkBCetcR5q5LfFOcfri6gRR/3rcoGnme96X6unymqVVl2UWP0yQYC4eXP5Do
         yB5PBeqmye7PH8ymX79fi1lj7ioyCFfs6QdM33OWm5ib3bI2nqq5Eq43s3N56v6A4m
         0/lMIgA64BNSHnuKOn0QFTqgKs89Hjdgt9wlGyGM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.57]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MmlT2-1kFQxV3vvC-00jozK; Sat, 02
 Jan 2021 14:01:52 +0100
Date:   Sat, 2 Jan 2021 14:01:45 +0100
From:   Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     conor.dooley@microchip.com
Cc:     robh+dt@kernel.org, damien.lemoal@wdc.com,
        jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        lewis.hanly@microchip.com, cyril.jean@microchip.com,
        daire.mcnamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com,
        j.neuschaefer@gmx.net
Subject: Re: [PATCH v3 1/5] mbox: add polarfire soc system controller mailbox
Message-ID: <X/BuucfqPGpE/S1r@latitude>
References: <20201223163247.28923-1-conor.dooley@microchip.com>
 <20201223163255.28992-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ZE+u9GFv3KxeEIGA"
Content-Disposition: inline
In-Reply-To: <20201223163255.28992-1-conor.dooley@microchip.com>
X-Provags-ID: V03:K1:WBt/pB5hQl5wVINuQt+TivhaSp1oDwqE1Udl+7dkuuWgP/BmcFz
 gX20Xfyp33lSb/KjmyLkxGozeFSkUOcfSlYbJQ8Hlf3PqDtSVfjOt5a3t8yAeOM4LNotgRh
 bqYZsJe+EgL4kYtxf/tDa99zQO5km7+TBKSytJzZl3zTvvFwLKsfYhM5vPeggnWVMFiIPzs
 yhSAOn10bVTx0YJSBEIdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FSn/Nk2bt9Y=:YCtRKiwNoRI9pOUAbbD2aw
 qOyJk5uneekkWaTHYtz6Cnf1nUG/OyzXf1BdhqU/P6Bw/3x0CrLsVQ3jGZ9OtAPS9fIl7VbYC
 2t7uYRxnCSDYQJuAxyaJG7lK+gEHU7gf55CtDdsW0lNGYY5dXNgr90Uo9sgN3rkjOW3NGSo6d
 GWY5WGm8Wc8x1Zsohn2ahi9q4t57/Ujhfm8tUtJSD4b0ZWf6pKAd1ze8g+C703EhJtIpzOqT5
 xOTU/VKyuv2xAtz8mN7mG7jNDWjQIZqdK+RZU4J2TVCGmY3n7LpHYp9WcR7wdzh9wdx6su5oF
 nzuGNsHEjoDyt3JKzZPeCGs+VSfawFGVnyFt8+j7LhaYRKvjuwXDuK+5q/0fjyZw5GsG509qi
 W2BeikgdUDzwJUEqUf2FqLDNgfRp7jad20Pele0tLE0hZWURw/2VybRRr6IESIwBS+Vcxiu+i
 4aBpftQSttpiVjDmVBpfHx2KRDeIH8lURs7iCwTyKX3opY0mE57bjPnAYKQn3vv4t/Svpfar6
 CgpsDHNbzHSzDD7vim00Nfkwcx0Z4SwXhVJGySLZLhJWXb5MNhQE/25hPJc7cLqbqQ07zMp/c
 akKxO9f0FVjyP+p7PfhCpG0LHMDn0a6AvKSzd23fsAIX2iCZslm8/eLY/8Vg18TGs1fur07M8
 36TxS+0ZvUxk3Uv0WCq0Dq0SjbMbPGMnJZxZBUWN1crBlw+lUSOvFy9CiwE4CsDygnp6Du2rK
 rvjz5b0r9UuCVkbfHeYkmr9i5+8y45qKI/OY/aKYLc13wpg9C7h3mf4Lr7MRi+piXdN50BGzi
 7u5mtHEsXF3vwlV0Zbn1PwsmDZSw07V3GFaqpmzU9O2WvmuRMXSVeBnAuKkJOQBv7lRxloE6g
 otbYeRuOm0fYVUK/3fLA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ZE+u9GFv3KxeEIGA
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I've added review comments below. Some of them might be more detailed
than necessary, and reflect my opinion rather than something that must
be fixed. Anyway, I hope my comments make sense.

On Wed, Dec 23, 2020 at 04:32:55PM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> This driver adds support for the single mailbox channel of the MSS
> system controller on the Microchip PolarFire SoC.
>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
[...]
> +#define SERVICES_CR_OFFSET		0x50u
> +#define SERVICES_SR_OFFSET		0x54u
> +#define MAILBOX_REG_OFFSET		0x800u
> +#define MSS_SYS_BUSY			-EBUSY
> +#define MSS_SYS_PARAM_ERR		-EINVAL

Defining your own aliases for -Esomething is rather uncommon.

> +#define MSS_SYS_MAILBOX_DATA_OFFSET	0u
> +#define SCB_MASK_WIDTH			16u
> +
> +/* SCBCTRL service control register */
> +
> +#define SCB_CTRL_REQ (0)
> +#define SCB_CTRL_REQ_MASK BIT(SCB_CTRL_REQ)
> +
> +#define SCB_CTRL_BUSY (1)
> +#define SCB_CTRL_BUSY_MASK BIT(SCB_CTRL_BUSY)
> +
> +#define SCB_CTRL_ABORT (2)
> +#define SCB_CTRL_ABORT_MASK BIT(SCB_CTRL_ABORT)
> +
> +#define SCB_CTRL_NOTIFY (3)
> +#define SCB_CTRL_NOTIFY_MASK BIT(SCB_CTRL_NOTIFY)
> +
> +#define SCB_CTRL_POS (16)
> +#define SCB_CTRL_MASK GENMASK(SCB_CTRL_POS + SCB_MASK_WIDTH, SCB_CTRL_PO=
S)
> +
> +/* SCBCTRL service status registers */

registers -> register ?
It seems to be only one status register.

> +
> +#define SCB_STATUS_REQ (0)
> +#define SCB_STATUS_REQ_MASK BIT(SCB_STATUS_REQ)
> +
> +#define SCB_STATUS_BUSY (1)
> +#define SCB_STATUS_BUSY_MASK BIT(SCB_STATUS_BUSY)
> +
> +#define SCB_STATUS_ABORT (2)
> +#define SCB_STATUS_ABORT_MASK BIT(SCB_STATUS_ABORT)
> +
> +#define SCB_STATUS_NOTIFY (3)
> +#define SCB_STATUS_NOTIFY_MASK BIT(SCB_STATUS_NOTIFY)
> +
> +#define SCB_STATUS_POS (16)
> +#define SCB_STATUS_MASK GENMASK(SCB_STATUS_POS + SCB_MASK_WIDTH, SCB_STA=
TUS_POS)
> +
> +struct mpfs_mbox {
> +	struct mbox_controller controller;
> +	struct device *dev;
> +	int irq;
> +	void __iomem *mailbox_base;
> +	void __iomem *int_reg;
> +	struct mbox_chan *chan;
> +	u16 response_size;
> +	u16 response_offset;
> +};
> +
> +static bool mpfs_mbox_busy(struct mpfs_mbox *mbox)
> +{
> +	u32 status;
> +
> +	status =3D readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);
> +
> +	return status & SCB_STATUS_BUSY_MASK;
> +}
> +
> +static struct mpfs_mbox *mbox_chan_to_mpfs_mbox(struct mbox_chan *chan)
> +{
> +	if (!chan)
> +		return NULL;
> +
> +	return (struct mpfs_mbox *)chan->con_priv;
> +}
> +
> +static int mpfs_mbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +	u32 index;
> +	u32 *word_buf;
> +	u8 *byte_buf;
> +	u8 byte_off;
> +	u8 extra_bits;
> +	u8 i;
> +	u32 mailbox_val =3D 0u;
> +	u16 mbox_offset;
> +	u16 mbox_options_select;
> +	u32 mbox_tx_trigger;

the mbox_ prefix seems unnecessary because the whole driver deals with
a mailbox.

Some of the variables are only used in if/for scopes below. I'd move
their declaration down into these scopes, to make the outer scope of the
function a little easier to understand.

> +	struct mpfs_mss_msg *msg =3D data;
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);
> +
> +	mbox_offset =3D msg->mailbox_offset;

mbox_offset is only used once. The indirection of storing the value in
another variable makes the code slightly slower to read, IMO.

> +	mbox->response_size =3D msg->response_size;
> +	mbox->response_offset =3D msg->response_offset;
> +
> +	if (mpfs_mbox_busy(mbox))
> +		return MSS_SYS_BUSY;
> +
> +	mbox_options_select =3D ((mbox_offset << 7u) | (msg->cmd_opcode & 0x7fu=
));
> +	mbox_tx_trigger =3D (((mbox_options_select << SCB_CTRL_POS) &
> +		SCB_CTRL_MASK) | SCB_CTRL_REQ_MASK | SCB_STATUS_NOTIFY_MASK);

Slightly reformatted, you could save a few parentheses:

	mbox_options_select =3D (mbox_offset << 7u) | (msg->cmd_opcode & 0x7fu);
	mbox_tx_trigger =3D (mbox_options_select << SCB_CTRL_POS) & SCB_CTRL_MASK;
	mbox_tx_trigger |=3D SCB_CTRL_REQ_MASK | SCB_STATUS_NOTIFY_MASK;


> +	/* Code for MSS_SYS_PARAM_ERR is not implemented with this version of d=
river. */

What is the "code for MSS_SYS_PARAM_ERR" semantically? Input validation?

> +	writel_relaxed(0, mbox->int_reg);

What does a write to mbox->int_reg do? Does it acknowledge an interrupt?
It would be interesting to have an explaining comment here.

> +
> +	if (msg->cmd_data_size) {
> +		byte_buf =3D msg->cmd_data;
> +
> +		for (index =3D 0; index < (msg->cmd_data_size / 4); index++)
> +			writel_relaxed(word_buf[index],
> +				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);

word_buf is uninitialized.

In mpfs_mbox_rx_data, you access the registers at mbox->mailbox_base +
MAILBOX_REG_OFFSET in steps of four bytes, here you increment the offset
in steps of one byte, because the index isn't scaled. This seems wrong.

> +		extra_bits =3D msg->cmd_data_size & 3;
> +		if (extra_bits) {
> +			byte_off =3D ALIGN_DOWN(msg->cmd_data_size, 4);
> +			byte_buf =3D msg->cmd_data + byte_off;
> +
> +			mailbox_val =3D readl_relaxed(mbox->mailbox_base +
> +						    MAILBOX_REG_OFFSET + index);
> +
> +			for (i =3D 0u; i < extra_bits; i++) {
> +				mailbox_val &=3D ~(0xffu << (i * 8u));
> +				mailbox_val |=3D (byte_buf[i] << (i * 8u));
> +			}
> +
> +			writel_relaxed(mailbox_val,
> +				       mbox->mailbox_base + MAILBOX_REG_OFFSET + index);
> +		}
> +	}
> +

I'd move the calculation of mbox_tx_trigger down here, right before its
use, because it's not necessary for the code above (if I'm reading it
correctly).

> +	writel_relaxed(mbox_tx_trigger, mbox->mailbox_base + SERVICES_CR_OFFSET=
);
> +
> +	return 0;
> +}
> +
> +static inline bool mpfs_mbox_pending(struct mpfs_mbox *mbox)
> +{
> +	u32 status;
> +
> +	status =3D readl_relaxed(mbox->mailbox_base + SERVICES_SR_OFFSET);
> +
> +	return !(status & SCB_STATUS_BUSY_MASK);
> +}
> +
> +static void mpfs_mbox_rx_data(struct mbox_chan *chan)
> +{
> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);
> +	u32 *data;
> +	u32 i;
> +	u32 response_limit;
> +
> +	data =3D devm_kzalloc(mbox->dev, sizeof(*data) * mbox->response_size, G=
FP_ATOMIC);

The use of devm_ seems bogus here, because the allocated data does not
have the same lifetime as the device; it is allocated and freed for
every RX event.

However, please use kcalloc instead of kzalloc, so you don't have to do
the multiplication manually. kcalloc checks for overflows.

> +	if (!data)
> +		dev_err(mbox->dev, "failed to assign memory for response\n", -ENOMEM);

There is no format specifier for parameter -ENOMEM.

In the !data case, the code will still run into the loop below, and
probably cause a crash.

> +
> +	response_limit =3D mbox->response_size + mbox->response_offset;
> +	if (mpfs_mbox_pending(mbox) && mbox->response_size > 0U) {
> +		for (i =3D mbox->response_offset; i < response_limit; i++) {
> +			data[i - mbox->response_offset] =3D
> +				readl_relaxed(mbox->mailbox_base + MAILBOX_REG_OFFSET + i * 0x4);
> +		}
> +	}

It seems slightly easier to me to let the loop run from zero to
mbox->response_size-1. Most importantly, it becomes easy to see that
data is not accessed out of bounds.  (But it's your choice)

	if (mpfs_mbox_pending(mbox)) {
		for (i =3D 0; i < mbox->response_size; i++) {
			data[i] =3D readl_relaxed(mbox->mailbox_base + MAILBOX_REG_OFFSET +
			                        (i + mbox->response_offset) * 0x4);
		}
	}


> +
> +	mbox_chan_received_data(chan, (void *)data);
> +	devm_kfree(mbox->dev, data);
> +}
> +
> +static irqreturn_t mpfs_mbox_inbox_isr(int irq, void *data)
> +{
> +	struct mbox_chan *chan =3D (struct mbox_chan *)data;

This cast and the one at the end of mpfs_mbox_rx_data are somewhat
uncessary, because C allows implicit conversion of void pointers to and
=66rom other pointer types.

> +	struct mpfs_mbox *mbox =3D mbox_chan_to_mpfs_mbox(chan);
> +
> +	writel_relaxed(0, mbox->int_reg);
> +
> +	mpfs_mbox_rx_data(chan);
> +
> +	mbox_chan_txdone(chan, 0);
> +	return IRQ_HANDLED;
> +}
[...]
> +++ b/include/soc/microchip/mpfs.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + *
> + * Microchip PolarFire SoC (MPFS) mailbox

This is mpfs.h, but the comment implies it's only for mailbox-related
code, not for all of the Microchip PolarFire SoC. Is this intentional?


Best regards,
Jonathan Neusch=C3=A4fer

--ZE+u9GFv3KxeEIGA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl/wbrEACgkQCDBEmo7z
X9s82RAAk+Zl+WwphlRRnMnY0MFdOma96hunGW3eySRg71ErV3x90du/qKQSaQGX
PAzKwv4TcoM0DZysjXR+BZUxgir/oB2aBNY4z+woZ7uCTQEoMJKJfGeB3CyhE+4i
++0F/GDuxAZSPkNCbZJIpivVTeYs6+sYgsJX0CKK15PE62jfXCqczOUncYYxa6Mx
VdWYsfqKbf6KNd0EWGUQIM28YPPWJ17+u2QfHNJ45nSLHNPLzwWUPi+2R9Zx3E1A
eHeuLjkQBdPmGwRfpa9uExhAAl6lff+lQWSgXoL/1Pj93sxmg65TH1L/cRtBLw+1
Eyns7zdnzYE+rcL2xqPJUoDf/WwtjH6hDUsFUcG4DR86naJwr650GZt790JzEw7j
oqgwB+3VoSmrY5TrH2o463fmn+5ZE5Ojth4LbZhn4kkI7EVXHE8Bte9yEzPm79/0
J1SU72SGDKdkrSIX8fBtEEMZKco7px0EkS53g3sUZPpqBIZ7KrL+j/8GcSAU0CGj
GpeJDiCNh4MxPjQ0kznzhrY1x25wljTFhQF5KHTwZ5U9y/TAC7SA5M7GR8LKxzvd
R8H9uii6LoHMQ3PHy7/8zhMxkrPmfOOxmZa66ifyjcVCvMxEObVaI+up+vzm+wSP
EtvdbrkRsmBum7j9p03hCKmzroic9ipjGgnQjgr4utawbtrfLpM=
=mngr
-----END PGP SIGNATURE-----

--ZE+u9GFv3KxeEIGA--
