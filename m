Return-Path: <devicetree+bounces-1135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 896237A4EBA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 18:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37BF0282198
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 16:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1DB2377F;
	Mon, 18 Sep 2023 16:25:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284081CA87
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 16:25:28 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F47135B19;
	Mon, 18 Sep 2023 09:24:34 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso587776566b.1;
        Mon, 18 Sep 2023 09:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695054273; x=1695659073; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6Dam8wepJ4zTEsAGl1ifZ/9z5ojdIJio/zwc1lNnsg=;
        b=QBhis5VTJsZ5vBqSOjgTXpuX8AASEM97ZTPldTuau4z0o0sdGKZtz+QhMvjeecCUkn
         cGa0uv083ZH2doEqjWuuz52Sqp5S1pOWrX621a+pnOZ0G/qyZWj2v/Cq3B8dnWP88N0/
         g//+zFmkB2C5IQbxOxkib4pBJxx4PjsyZXqX/kxJgNkHXyzlExm4j9dvIFR6URiv7rUo
         OO7xNCjVJcu4rv2am9Ww5gdcBAiEj4sU2eE2b7VPg42zQs3OeICwYF29JNu9ZqR5j+jZ
         OTy34LoE0U7VPJrvQjt+puj1nQTD0vzwq5+lYU2BIBLrPIiV9tzcUCaGp15PJcHnbQa3
         /FCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695054273; x=1695659073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N6Dam8wepJ4zTEsAGl1ifZ/9z5ojdIJio/zwc1lNnsg=;
        b=WiBckEhl1iysfXV3mFLEO5aR6j2EcxTYigTHKO3EtiLCVg4ZPYbZv9Klsuj8gl3vW1
         HBavRQVGT4IY1JzdGCnFrk9uhTdeLTuuKKFNmzImfKjb4jLmAyQeKoZxX/QI9eiWdzHu
         yNEwokxVFUUFyuy9X11Xcu5JIX2+3NgiMiZd6fDQIOn8LvWhFsik+L09boP/Ug0oY/DA
         U2m3wByD2dKx4I0lNKyjnrsqK2SC6Uh9iEo44wzqGp7EKl2CqCmhELYcClR2iPLMBFOF
         4bZlzgBwLmnQBxgckqQI7541XlCFfsCqJYtkFxsaSZYTGcUojnRZzN/g3bK6bfChUbh2
         Mmew==
X-Gm-Message-State: AOJu0YxHEhqZNJn5OR6ht6smMbw3cb7xQ3x78Zm4XzDZDBTi9mxXoFrL
	Jl+euOQRZWJsytsZZk+AgZP7s6dnIGWL+eSBoY3vrA3CmwE=
X-Google-Smtp-Source: AGHT+IFoNtCBpF+WWokRSWxK6x1MLAAii3Xk4PfRQ2WSL1XwHQPyjXqZWy6jooYoh2j6RNbb99n6B+ni25Ced35Q17Y=
X-Received: by 2002:a05:6402:48f:b0:52e:9eff:1e5f with SMTP id
 k15-20020a056402048f00b0052e9eff1e5fmr6842083edv.15.1695048020209; Mon, 18
 Sep 2023 07:40:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230917-imx95-mbox-v1-0-440245287356@nxp.com>
 <20230917-imx95-mbox-v1-2-440245287356@nxp.com> <CAEnQRZBbdrwX3mq=1RVHwzPAUtWjrKmz3y4ezOann6yZUwZAYA@mail.gmail.com>
 <DU0PR04MB94170D1357C13A2EC66A05F488FBA@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB94170D1357C13A2EC66A05F488FBA@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 18 Sep 2023 17:40:08 +0300
Message-ID: <CAEnQRZBdFupPMHD6fy65uEB2LhHxqoPz=1v4HaZhNCjGV2yvBA@mail.gmail.com>
Subject: Re: [PATCH 2/2] mailbox: imx: support channel type tx doorbell v2
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	dl-linux-imx <linux-imx@nxp.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aisheng Dong <aisheng.dong@nxp.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 3:01=E2=80=AFPM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Daniel,
>
> > Subject: Re: [PATCH 2/2] mailbox: imx: support channel type tx doorbell=
 v2
> >
> > On Sun, Sep 17, 2023 at 5:45=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nx=
p.com>
> > wrote:
> > >
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > The Message Unit(MU) General Purpose Control registers are used for T=
X
> > > doorbell, but there is no hardware ACK support.
> > >
> > > The current TX doorbell channel is using tasklet to emulate hardware
> > > ACK support to kick the TX tick from controller driver side.
> > >
> > > The new added TX doorbell channel V2 not using tasklet to emulate the
> > > hardware ACK support. The behavior for the channel is just writing th=
e
> > > GCR register, and no else. This will be used for SCMI mailbox.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  drivers/mailbox/imx-mailbox.c | 32 +++++++++++++++++++++++++++++---
> > >  1 file changed, 29 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/mailbox/imx-mailbox.c
> > > b/drivers/mailbox/imx-mailbox.c index 3ef4dd8adf5d..0af739ab571c
> > > 100644
> > > --- a/drivers/mailbox/imx-mailbox.c
> > > +++ b/drivers/mailbox/imx-mailbox.c
> > > @@ -20,7 +20,9 @@
> > >  #include <linux/suspend.h>
> > >  #include <linux/slab.h>
> > >
> > > -#define IMX_MU_CHANS           17
> > > +#include "mailbox.h"
> > > +
> > > +#define IMX_MU_CHANS           24
> > >  /* TX0/RX0/RXDB[0-3] */
> > >  #define IMX_MU_SCU_CHANS       6
> > >  /* TX0/RX0 */
> > > @@ -39,6 +41,7 @@ enum imx_mu_chan_type {
> > >         IMX_MU_TYPE_TXDB        =3D 2, /* Tx doorbell */
> > >         IMX_MU_TYPE_RXDB        =3D 3, /* Rx doorbell */
> > >         IMX_MU_TYPE_RST         =3D 4, /* Reset */
> > > +       IMX_MU_TYPE_TXDB_V2     =3D 5, /* Tx doorbell with S/W ACK */
> > >  };
> > >
> > >  enum imx_mu_xcr {
> > > @@ -226,6 +229,9 @@ static int imx_mu_generic_tx(struct imx_mu_priv
> > *priv,
> > >                 imx_mu_xcr_rmw(priv, IMX_MU_GCR, IMX_MU_xCR_GIRn(priv=
-
> > >dcfg->type, cp->idx), 0);
> > >                 tasklet_schedule(&cp->txdb_tasklet);
> > >                 break;
> > > +       case IMX_MU_TYPE_TXDB_V2:
> > > +               imx_mu_xcr_rmw(priv, IMX_MU_GCR, IMX_MU_xCR_GIRn(priv=
-
> > >dcfg->type, cp->idx), 0);
> > > +               break;
> > >         default:
> > >                 dev_warn_ratelimited(priv->dev, "Send data on wrong c=
hannel
> > type: %d\n", cp->type);
> > >                 return -EINVAL;
> > > @@ -554,6 +560,9 @@ static int imx_mu_startup(struct mbox_chan *chan)
> > >         int ret;
> > >
> > >         pm_runtime_get_sync(priv->dev);
> > > +       if (cp->type =3D=3D IMX_MU_TYPE_TXDB_V2)
> > > +               return 0;
> > > +
> > >         if (cp->type =3D=3D IMX_MU_TYPE_TXDB) {
> > >                 /* Tx doorbell don't have ACK support */
> > >                 tasklet_init(&cp->txdb_tasklet, imx_mu_txdb_tasklet,
> > > @@ -595,6 +604,11 @@ static void imx_mu_shutdown(struct mbox_chan
> > *chan)
> > >         int ret;
> > >         u32 sr;
> > >
> > > +       if (cp->type =3D=3D IMX_MU_TYPE_TXDB_V2) {
> > > +               pm_runtime_put_sync(priv->dev);
> > > +               return;
> > > +       }
> > > +
> > >         if (cp->type =3D=3D IMX_MU_TYPE_TXDB) {
> > >                 tasklet_kill(&cp->txdb_tasklet);
> > >                 pm_runtime_put_sync(priv->dev); @@ -671,6 +685,7 @@
> > > static struct mbox_chan *imx_mu_specific_xlate(struct mbox_controller
> > > *mbox,  static struct mbox_chan * imx_mu_xlate(struct mbox_controller
> > *mbox,
> > >                                        const struct of_phandle_args
> > > *sp)  {
> > > +       struct mbox_chan *p_chan;
> > >         u32 type, idx, chan;
> > >
> > >         if (sp->args_count !=3D 2) {
> > > @@ -680,14 +695,25 @@ static struct mbox_chan * imx_mu_xlate(struct
> > > mbox_controller *mbox,
> > >
> > >         type =3D sp->args[0]; /* channel type */
> > >         idx =3D sp->args[1]; /* index */
> > > -       chan =3D type * 4 + idx;
> > >
> > > +       /* RST only supports 1 channel */
> > > +       if ((type =3D=3D IMX_MU_TYPE_RST) && idx) {
> > > +               dev_err(mbox->dev, "Invalid RST channel %d\n", idx);
> > > +               return ERR_PTR(-EINVAL);
> > > +       }
> >
> > I don't understand how is this related to introduction of a new doorbel=
l
> > channel. Can you please add it in a separate patch with proper explanat=
ion?
>
> RST only supports 1 channel, but its value is 4, so here I extend to 4 ch=
annel
> for RST in code, to make the calculation a bit easier to get TXDB_V2 chan=
nel
> pointer. But from user side, nothing changed
>
> IMX_MU_TYPE_RST         =3D 4, /* Reset */
> IMX_MU_TYPE_TXDB_V2     =3D 5, /* Tx doorbell with S/W ACK */
>
> It does not make much sense to separate this change, because this change
> Would only make sense together with TXDB_V2 changes.


Ok, I see. Good for me, then.

