Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C91AE47315A
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 17:13:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237531AbhLMQNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 11:13:33 -0500
Received: from mout.kundenserver.de ([212.227.126.133]:41011 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237343AbhLMQNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 11:13:32 -0500
Received: from mail-wr1-f43.google.com ([209.85.221.43]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MlNgz-1mFkQR48Zp-00llFE for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021
 17:13:31 +0100
Received: by mail-wr1-f43.google.com with SMTP id u17so27958955wrt.3
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 08:13:30 -0800 (PST)
X-Gm-Message-State: AOAM533afJX0ILUtyAj0eA65bcd8welrb8xj8nrMnXxlI7d0+qDJgvZ5
        jNmzZ6C4ylm1DzgH4FQ2CpUXNPEmX0MfRhPDIyw=
X-Google-Smtp-Source: ABdhPJyD50jfhG5Bk5HQF08ZCgBdnrXlEDYXnH62ryDCntSWnjN96ManZ9op0yOcSUAzuDa3WBNH2Tsz6DiS9k1Pvsg=
X-Received: by 2002:a05:6000:52:: with SMTP id k18mr33594696wrx.192.1639412010694;
 Mon, 13 Dec 2021 08:13:30 -0800 (PST)
MIME-Version: 1.0
References: <20211201125327.3704500-1-andrej.picej@norik.com>
In-Reply-To: <20211201125327.3704500-1-andrej.picej@norik.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Mon, 13 Dec 2021 17:13:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a30OQ9AUSU2p4X3R90GwEOLLY3h4Vj78Tr01JKb2NLZHA@mail.gmail.com>
Message-ID: <CAK8P3a30OQ9AUSU2p4X3R90GwEOLLY3h4Vj78Tr01JKb2NLZHA@mail.gmail.com>
Subject: Re: [PATCH 0/4] PHYTEC i.MX 6UL/ULL devicetree patches
To:     Andrej Picej <andrej.picej@norik.com>
Cc:     DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Fabio Estevam <festevam@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Yunus Bas <y.bas@phytec.de>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:8cbL2fIX/KmhTQNY+599mhrv61IBW3fWO5Rk/K1kh5AWocrmIne
 KuGIJEMe1vxB/RpCdPwkqsdtmiOPjxmUYvS/kxA4vS01KXVo9fzKs9oqv4VNA7oTAuA7uW2
 VoHsjtYvgO7VBNii1ZNtygfuz9nrbCRxNfdQIWsDs7D/y0T0cMcxMDjlG0Xe/Vl3Wgsj9br
 rN735KeMvzsmSZ/Ib4yPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+h0NgbyvwrE=:xfxhZyov+1Q3evyXHlvTyF
 aWWsoVUFDwnkWQWXUVy4znTmFXt796JwjRE7vGb1ypwoEh6cilB9FRgf1nfZfaFXhDjUWjxyN
 Mj0oYtRU6p3dubXDnymWKOEGlnSVAY1an/Bp/vJ9mgrEVYIoRviuRkHlyil+tnaYr/acnfLl2
 Elj3RMR/tlquYGXB5l7d8qXpPKrX6RSuOFz1Ofty+ai/0x585+6U61CfB4HR8brqO5LUgRK2X
 oktLep0nqBERNHyr0YB419Y6AHyuG3TBAKDZKn/RoZJ9SMkSZyZJgy/rpuIbVjG0s+Lg9cXNo
 qY1KLbYfjrV4eDDmzWC6xJ72Lkumvho6Bg48jHQ4llQIoRnhyxM92FLBc+R/gomwMd51TcBft
 nKFdo1CbjdBiD29CkjLWjbbXMI1i+KTgeJbV3+1GYK2XAFXMClTsFKwEnKauwOKD8e4PFBCBq
 D6V9KLemOrKUXqEO1IE9dQj1+zQXdANzWZvNH5DPfmTwLjadEExZ1tlmXHiuAoY9T5TnTgnob
 iTJBKWwG8UBEqtNVNSZ61mr7zPvwcKE5n5sO47BNNE7wF66vp4bfwM9UhIikJ1e340teSTC0U
 ZH/nX5LpTRqvSXC/Lj3r2jI0bYuxKsF0maIZHmlr0KRLKJWbqn93i6fe12g9R39vzmNbSgM0p
 0autoEY/RjHG+H5qFQxi+XBpsNvVT3zMrN/9wWwAQ2fPuENLp7awaV2ms/eZ6BibLaMg=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 1, 2021 at 1:53 PM Andrej Picej <andrej.picej@norik.com> wrote:
>
> Hi all,
>
> this patch series contains PHYTEC i.MX 6UL/ULL devicetree patches not
> yet upstreamed.
>
> First and second patch add devicetree for relatively new phyGATE
> Tauri-S, which is based on i.MX 6ULL.
>
> Third patch changes USB LDO voltage for i.MX 6UL/ULL phyCORE devices so
> they match USB Full-speed compliance.
>
> The fourth patch moves from using 2 pwm-cell to default 3 cell pwm
> property.

Hi Andrej,

We don't normally merge board specific changes directly into the SoC
tree, please
resend to the i.MX maintainers. You can keep the rest of the Cc list except for
soc@kernel.org.

As a general rule, try to make the "To:" address of the patch series the person
that you expect to act on it, either reviewing or applying.

        Arnd
