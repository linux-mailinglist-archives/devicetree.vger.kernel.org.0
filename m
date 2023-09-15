Return-Path: <devicetree+bounces-628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A79B57A2368
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:20:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AC191C20A32
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA7811CAF;
	Fri, 15 Sep 2023 16:20:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D2011CA0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 16:20:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F8DEC433C8;
	Fri, 15 Sep 2023 16:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694794827;
	bh=09qiNK97UkC7z4w2HDWfvU6mCQX7TU4riPt+V3SNirs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=u7aiWE+JTh1VIf7KfPFvuFYSjMH47l2bE2pQ45b5ZGBv1XjtbtV8C0tzoTkUuMU3/
	 FNhERerwaqnYmLToHhqgrpYes+tjS/BqQLOiRGRR/kiSs9MlOCX81Cn9m1FLexwrYW
	 coIbwydPUEGcrPQsNYb5P7Q8iM6JRHsGTw36d6XDW8McPzEjuKBxCYBBC0J5XmL+UC
	 EwuRLfebfMk2oUvGjyVlwZpqso5SvmODAFhbQN4rgjttZEOwepAOju7SUIYliYnpK5
	 GlAWGOqidqJHnT0Rnx7frJEvnlGvadid/HABrWAwuHzvusJ6yIpQScXM/2SyuBi6hN
	 tav7dPMFN7vag==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-502b1bbe5c3so3898852e87.1;
        Fri, 15 Sep 2023 09:20:27 -0700 (PDT)
X-Gm-Message-State: AOJu0Yx+3gfkeQ1Q4LMWv6u7mWdQWnsUsl5PXjgjk5WpErFmTPJgOGMK
	fcQGo9MeLdKEBB5YHsSKDtNhrWzduW0nP95kkg==
X-Google-Smtp-Source: AGHT+IE36MZYLdQUXInHkPsMgxnwwfwwW+Sj/Qg4xTNrQFHY4eLtHmgxXclgynqXcJIB/jKwmCaNCaxf4mC2lVhv/DE=
X-Received: by 2002:a05:6512:3103:b0:4fe:2d93:2b51 with SMTP id
 n3-20020a056512310300b004fe2d932b51mr1945694lfb.27.1694794825519; Fri, 15 Sep
 2023 09:20:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1694715351-58279-1-git-send-email-lizhi.hou@amd.com>
In-Reply-To: <1694715351-58279-1-git-send-email-lizhi.hou@amd.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 15 Sep 2023 11:20:13 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLLfTONAA4XPsQdYC0XL-F0jmMhaz_mmr_uTCOf6SqOqQ@mail.gmail.com>
Message-ID: <CAL_JsqLLfTONAA4XPsQdYC0XL-F0jmMhaz_mmr_uTCOf6SqOqQ@mail.gmail.com>
Subject: Re: [PATCH] PCI: of: Fix memory leak when of_changeset_create_node() failed
To: Lizhi Hou <lizhi.hou@amd.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, herve.codina@bootlin.com, bhelgaas@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 1:16=E2=80=AFPM Lizhi Hou <lizhi.hou@amd.com> wrote=
:
>
> Destroy and free cset when failure happens.
>
> Fixes: 407d1a51921e ("PCI: Create device tree node for bridge")
> Reported-by: Herve Codina <herve.codina@bootlin.com>
> Closes: https://lore.kernel.org/all/20230911171319.495bb837@bootlin.com/
> Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
> ---
>  drivers/pci/of.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 2af64bcb7da3..67bbfa2fca59 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -663,7 +663,6 @@ void of_pci_make_dev_node(struct pci_dev *pdev)
>         np =3D of_changeset_create_node(cset, ppnode, name);
>         if (!np)
>                 goto failed;
> -       np->data =3D cset;
>
>         ret =3D of_pci_add_properties(pdev, cset, np);
>         if (ret)
> @@ -673,12 +672,17 @@ void of_pci_make_dev_node(struct pci_dev *pdev)
>         if (ret)
>                 goto failed;
>
> +       np->data =3D cset;
>         pdev->dev.of_node =3D np;
>         kfree(name);
>
>         return;
>
>  failed:
> +       if (cset) {

Instead of adding more if's, use multiple goto labels which is the
normal cleanup style. Note that there's a new cleanup.h thing that can
do some automatic cleanups. Not sure if that works or helps here.

> +               of_changeset_destroy(cset);
> +               kfree(cset);
> +       }
>         if (np)
>                 of_node_put(np);
>         kfree(name);
> --
> 2.34.1
>

