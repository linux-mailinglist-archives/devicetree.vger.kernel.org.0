Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9CE7C10CEF1
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2019 20:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726569AbfK1TnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Nov 2019 14:43:16 -0500
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44832 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726558AbfK1TnQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Nov 2019 14:43:16 -0500
Received: by mail-lj1-f196.google.com with SMTP id c19so2561132lji.11
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2019 11:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SpMIRIbW8ZYEXnPjVi1K5UjyfJnW9d0uWsvcAYJ8UAo=;
        b=oloUoFA6UEefUoSDn1DnzhQNTgPLoRmUIapMdu94c3HlssacdL3+A9JzQ7WyjHVcPk
         1ieJiyoTLFE1nabxAMujJZbaYTZ72Ogj6LTaDRPPpPlpdWfysr5/jCh0A4R7zerP94PN
         Tkt86uIY+efghOxOaVuFVxM2WrT+3ZUM9pf/q6uhfOLDP9srSbSs9TUKcazQ1P/StUpu
         GL1fOWr9XZOgkhPiGsQhrv15r+AZObmrV3BEGACvF7LW9qaBJ/hUsjW0WxTkNYHFCd14
         Nx1+wc29hKo6hIMxcIPyYKhkWRFY6G8lxcT8179YJ4pepGzpxOBAeAJY2O2IGQymHu+A
         yeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SpMIRIbW8ZYEXnPjVi1K5UjyfJnW9d0uWsvcAYJ8UAo=;
        b=X95oJB6giUHwPTHMMFKCPuzADflsXGjSMR1Zn/9k2Sc8QRkQAcgNLGJG2uc7J8+HoZ
         fZ/vHP7jKMEIeS4aE8oQT3KpndqzllbrKr5+Uexzcc+y2bp0QvKYWo55e5pPeideBXxm
         SV/wQn/YeZEexR0tQINYCsD5wKv9FCPijqaJ2oUgoaDdTFlbW1I4IuwnHgwgLVbJLCQO
         7I3mznrOsKU9K21yFYZQO5YemR/1fZG+2ajS7Yi8MpWmWunl6v6sJnLoG0jb8rgL9wbC
         +DCm7k2PBYOnu7cN7B73OcSAp32VYSf5YxodREb4OXiGmEoEN63MdDDI6WNBrhr6ehHl
         wtng==
X-Gm-Message-State: APjAAAVL6B44Nyh3vhHNtKplKtjET2wPWSLHLK/ymp3E1kWpxRoUeBiB
        X17nq+cwtNEDIOisbmwsZLEweik0s/VOM4FkB3I=
X-Google-Smtp-Source: APXvYqxpB0Wunf+56/hcaxrikPntTecjuCZskYxZSW3kIvL5RTbQlgjROVYSTQxDYPAHSZV7sIYaeI4FnnBsHnoxFQs=
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr35884555ljs.239.1574970194248;
 Thu, 28 Nov 2019 11:43:14 -0800 (PST)
MIME-Version: 1.0
References: <20191127110509.29905-1-l.stach@pengutronix.de>
In-Reply-To: <20191127110509.29905-1-l.stach@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 28 Nov 2019 16:43:26 -0300
Message-ID: <CAOMZO5BAN-BTR=A=ODq_CcZgumYjww4b3h3e_r3Og+JBK=uoeQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: increase NOC clock to 800 MHz
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 27, 2019 at 8:05 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Philipp Zabel <p.zabel@pengutronix.de>
>
> The NOC clock defaults to 400 MHz. Increase it to 800 MHz for improved
> memory performance.
>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
